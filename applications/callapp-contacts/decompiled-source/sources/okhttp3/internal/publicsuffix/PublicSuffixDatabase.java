package okhttp3.internal.publicsuffix;

import c.h;
import c.q;
import c.r;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.g.k;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\fJ\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "()V", "listRead", "Ljava/util/concurrent/atomic/AtomicBoolean;", "publicSuffixExceptionListBytes", "", "publicSuffixListBytes", "readCompleteLatch", "Ljava/util/concurrent/CountDownLatch;", "findMatchingRule", "", "", "domainLabels", "getEffectiveTldPlusOne", "domain", "readTheList", "", "readTheListUninterruptibly", "setListBytes", "splitDomain", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase.class */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final Companion Companion = new Companion(null);
    private static final byte[] WILDCARD_LABEL = {42};
    private static final List<String> PREVAILING_RULE = n.a("*");
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\f\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\fJ)\u0010\u000e\u001a\u0004\u0018\u00010\u0007*\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;", "", "()V", "EXCEPTION_MARKER", "", "PREVAILING_RULE", "", "", "PUBLIC_SUFFIX_RESOURCE", "WILDCARD_LABEL", "", "instance", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "get", "binarySearch", "labels", "", "labelIndex", "", "([B[[BI)Ljava/lang/String;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(byte[] bArr, byte[][] bArr2, int i) {
            String str;
            int i2;
            int i3;
            int and;
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
                while (i7 >= 0 && bArr[i7] != 10) {
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
                        i3 = Util.and(bArr2[i11][i12], 255);
                    }
                    and = i3 - Util.and(bArr[i8 + i13], 255);
                    i4 = i12;
                    i5 = i13;
                    if (and != 0) {
                        break;
                    }
                    i13++;
                    i12++;
                    i4 = i12;
                    i5 = i13;
                    if (i13 == i10) {
                        break;
                    } else if (bArr2[i11].length == i12) {
                        i4 = i12;
                        i5 = i13;
                        if (i11 == bArr2.length - 1) {
                            break;
                        }
                        i11++;
                        z = true;
                        i12 = -1;
                    }
                }
                if (and >= 0) {
                    if (and <= 0) {
                        int i14 = i10 - i5;
                        int length2 = bArr2[i11].length - i4;
                        int length3 = bArr2.length;
                        for (int i15 = i11 + 1; i15 < length3; i15++) {
                            length2 += bArr2[i15].length;
                        }
                        if (length2 >= i14) {
                            if (length2 <= i14) {
                                Charset UTF_8 = StandardCharsets.UTF_8;
                                p.b(UTF_8, "UTF_8");
                                str = new String(bArr, i8, i10, UTF_8);
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

        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }
    }

    public static final /* synthetic */ byte[] access$getPublicSuffixListBytes$p(PublicSuffixDatabase publicSuffixDatabase) {
        byte[] bArr = publicSuffixDatabase.publicSuffixListBytes;
        if (bArr == null) {
            p.a("publicSuffixListBytes");
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x01bd, code lost:
        if (r0 == null) goto L_0x01c0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01e1, code lost:
        if (r0 == null) goto L_0x01e4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.String> findMatchingRule(java.util.List<java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.findMatchingRule(java.util.List):java.util.List");
    }

    private final void readTheList() throws IOException {
        h a2;
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream != null) {
            try {
                h a3 = r.a(new c.n(q.a(resourceAsStream)));
                byte[] g = a3.g(a3.k());
                byte[] g2 = a3.g(a3.k());
                v vVar = v.f38654a;
                th = null;
                synchronized (this) {
                    p.a(g);
                    this.publicSuffixListBytes = g;
                    p.a(g2);
                    this.publicSuffixExceptionListBytes = g2;
                    v vVar2 = v.f38654a;
                }
                this.readCompleteLatch.countDown();
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    private final void readTheListUninterruptibly() {
        boolean z = false;
        while (true) {
            try {
                try {
                    try {
                        readTheList();
                        break;
                    } catch (IOException e) {
                        Platform.Companion.get().log("Failed to read public suffix list", 5, e);
                        if (z) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                        return;
                    }
                } catch (InterruptedIOException e2) {
                    Thread.interrupted();
                    z = true;
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

    private final List<String> splitDomain(String str) {
        List<String> a2 = kotlin.h.p.a(str, new char[]{'.'});
        List<String> list = a2;
        if (p.a((Object) ((String) n.g((List<? extends Object>) a2)), (Object) "")) {
            list = n.k((List) a2);
        }
        return list;
    }

    public final String getEffectiveTldPlusOne(String domain) {
        int i;
        int i2;
        p.d(domain, "domain");
        String unicodeDomain = IDN.toUnicode(domain);
        p.b(unicodeDomain, "unicodeDomain");
        List<String> splitDomain = splitDomain(unicodeDomain);
        List<String> findMatchingRule = findMatchingRule(splitDomain);
        if (splitDomain.size() == findMatchingRule.size() && findMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (findMatchingRule.get(0).charAt(0) == '!') {
            i2 = splitDomain.size();
            i = findMatchingRule.size();
        } else {
            i2 = splitDomain.size();
            i = findMatchingRule.size() + 1;
        }
        kotlin.g.h joinToString = k.a(n.p(splitDomain(domain)), i2 - i);
        p.d(joinToString, "$this$joinToString");
        p.d(separator, "separator");
        p.d(prefix, "prefix");
        p.d(postfix, "postfix");
        p.d(truncated, "truncated");
        String sb = ((StringBuilder) k.a(joinToString, new StringBuilder(), separator, prefix, postfix, -1, truncated, null)).toString();
        p.b(sb, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb;
    }

    public final void setListBytes(byte[] publicSuffixListBytes, byte[] publicSuffixExceptionListBytes) {
        p.d(publicSuffixListBytes, "publicSuffixListBytes");
        p.d(publicSuffixExceptionListBytes, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = publicSuffixListBytes;
        this.publicSuffixExceptionListBytes = publicSuffixExceptionListBytes;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
