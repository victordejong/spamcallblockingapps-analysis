package okhttp3.internal.publicsuffix;

import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase.class */
public final class PublicSuffixDatabase {
    private static final byte EXCEPTION_MARKER = 33;
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    private static final byte[] WILDCARD_LABEL = {42};
    private static final String[] EMPTY_RULE = new String[0];
    private static final String[] PREVAILING_RULE = {BasicSQLHelper.ALL};
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    private static String binarySearchBytes(byte[] bArr, byte[][] bArr2, int i) {
        String str;
        int i2;
        int i3;
        int i4;
        int i5;
        int length = bArr.length;
        int i6 = 0;
        while (true) {
            if (i6 >= length) {
                str = null;
                break;
            }
            int i7 = (i6 + length) / 2;
            while (i7 > -1 && bArr[i7] != 10) {
                i7--;
            }
            int i8 = i7 + 1;
            int i9 = 1;
            while (true) {
                i2 = i8 + i9;
                if (bArr[i2] == 10) {
                    break;
                }
                i9++;
            }
            int i10 = i2 - i8;
            int i11 = i;
            boolean z = false;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                if (z) {
                    i3 = 46;
                    z = false;
                } else {
                    i3 = bArr2[i11][i12] & 255;
                }
                i4 = i3 - (bArr[i8 + i13] & 255);
                if (i4 == 0) {
                    i13++;
                    i12++;
                    if (i13 == i10) {
                        break;
                    } else if (bArr2[i11].length == i12) {
                        if (i11 == bArr2.length - 1) {
                            break;
                        }
                        i11++;
                        z = true;
                        i12 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i14 = i10 - i13;
                    int length2 = bArr2[i11].length - i12;
                    while (true) {
                        i5 = length2;
                        i11++;
                        if (i11 >= bArr2.length) {
                            break;
                        }
                        length2 = i5 + bArr2[i11].length;
                    }
                    if (i5 >= i14) {
                        if (i5 <= i14) {
                            str = new String(bArr, i8, i10, Util.UTF_8);
                            break;
                        }
                    }
                }
                i6 = i2 + 1;
            }
            length = i8 - 1;
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [byte[], byte[][], java.lang.Object] */
    private String[] findMatchingRule(String[] strArr) {
        String str;
        String str2;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException e) {
            }
        } else {
            readTheListUninterruptibly();
        }
        synchronized (this) {
            if (this.publicSuffixListBytes == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        ?? r0 = new byte[length];
        for (int i = 0; i < strArr.length; i++) {
            r0[i] = strArr[i].getBytes(Util.UTF_8);
        }
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                str = null;
                break;
            }
            str = binarySearchBytes(this.publicSuffixListBytes, r0, i2);
            if (str != null) {
                break;
            }
            i2++;
        }
        if (length > 1) {
            byte[][] bArr = (byte[][]) r0.clone();
            for (int i3 = 0; i3 < bArr.length - 1; i3++) {
                bArr[i3] = WILDCARD_LABEL;
                str2 = binarySearchBytes(this.publicSuffixListBytes, bArr, i3);
                if (str2 != null) {
                    break;
                }
            }
        }
        str2 = null;
        String str3 = null;
        if (str2 != null) {
            int i4 = 0;
            while (true) {
                str3 = null;
                if (i4 >= length - 1) {
                    break;
                }
                str3 = binarySearchBytes(this.publicSuffixExceptionListBytes, r0, i4);
                if (str3 != null) {
                    break;
                }
                i4++;
            }
        }
        if (str3 != null) {
            return ("!" + str3).split("\\.");
        } else if (str == null && str2 == null) {
            return PREVAILING_RULE;
        } else {
            String[] split = str != null ? str.split("\\.") : EMPTY_RULE;
            String[] split2 = str2 != null ? str2.split("\\.") : EMPTY_RULE;
            if (split.length <= split2.length) {
                split = split2;
            }
            return split;
        }
    }

    public static PublicSuffixDatabase get() {
        return instance;
    }

    private void readTheList() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        BufferedSource buffer = Okio.buffer(new GzipSource(Okio.source(resourceAsStream)));
        try {
            byte[] bArr = new byte[buffer.readInt()];
            buffer.readFully(bArr);
            byte[] bArr2 = new byte[buffer.readInt()];
            buffer.readFully(bArr2);
            synchronized (this) {
                this.publicSuffixListBytes = bArr;
                this.publicSuffixExceptionListBytes = bArr2;
            }
            this.readCompleteLatch.countDown();
        } finally {
            Util.closeQuietly(buffer);
        }
    }

    private void readTheListUninterruptibly() {
        boolean z;
        boolean z2 = false;
        while (true) {
            try {
                try {
                    z = z2;
                    readTheList();
                    break;
                } catch (InterruptedIOException e) {
                    z2 = true;
                } catch (IOException e2) {
                    Platform.get().log(5, "Failed to read public suffix list", e2);
                    if (!z) {
                        return;
                    }
                    Thread.currentThread().interrupt();
                    return;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public String getEffectiveTldPlusOne(String str) {
        int i;
        int i2;
        Objects.requireNonNull(str, "domain == null");
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] findMatchingRule = findMatchingRule(split);
        if (split.length != findMatchingRule.length || findMatchingRule[0].charAt(0) == '!') {
            if (findMatchingRule[0].charAt(0) == '!') {
                i2 = split.length;
                i = findMatchingRule.length;
            } else {
                i2 = split.length;
                i = findMatchingRule.length + 1;
            }
            StringBuilder sb = new StringBuilder();
            String[] split2 = str.split("\\.");
            for (int i3 = i2 - i; i3 < split2.length; i3++) {
                sb.append(split2[i3]);
                sb.append('.');
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        }
        return null;
    }

    void setListBytes(byte[] bArr, byte[] bArr2) {
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
