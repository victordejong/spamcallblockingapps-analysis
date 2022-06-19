package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p531g.AbstractC18378h;
import kotlin.p531g.C18381k;
import kotlin.p532h.C18425p;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import p092c.AbstractC3207h;
import p092c.C3214n;
import p092c.C3217q;
import p092c.C3218r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\fJ\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, m4298d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "()V", "listRead", "Ljava/util/concurrent/atomic/AtomicBoolean;", "publicSuffixExceptionListBytes", "", "publicSuffixListBytes", "readCompleteLatch", "Ljava/util/concurrent/CountDownLatch;", "findMatchingRule", "", "", "domainLabels", "getEffectiveTldPlusOne", "domain", "readTheList", "", "readTheListUninterruptibly", "setListBytes", "splitDomain", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase.class */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final Companion Companion = new Companion(null);
    private static final byte[] WILDCARD_LABEL = {42};
    private static final List<String> PREVAILING_RULE = C18282n.m4176a("*");
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\f\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\fJ)\u0010\u000e\u001a\u0004\u0018\u00010\u0007*\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;", "", "()V", "EXCEPTION_MARKER", "", "PREVAILING_RULE", "", "", "PUBLIC_SUFFIX_RESOURCE", "WILDCARD_LABEL", "", "instance", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "get", "binarySearch", "labels", "", "labelIndex", "", "([B[[BI)Ljava/lang/String;", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

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
                                C18524p.m3843b(UTF_8, "UTF_8");
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
            C18524p.m3848a("publicSuffixListBytes");
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x01bd, code lost:
        if (r0 == null) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01e1, code lost:
        if (r0 == null) goto L72;
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
        AbstractC3207h m39150a;
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        try {
            AbstractC3207h m39150a2 = C3218r.m39150a(new C3214n(C3217q.m39158a(resourceAsStream)));
            byte[] mo39115g = m39150a2.mo39115g(m39150a2.mo39111k());
            byte[] mo39115g2 = m39150a2.mo39115g(m39150a2.mo39111k());
            C20128v c20128v = C20128v.f66529a;
            th = null;
            synchronized (this) {
                C18524p.m3851a(mo39115g);
                this.publicSuffixListBytes = mo39115g;
                C18524p.m3851a(mo39115g2);
                this.publicSuffixExceptionListBytes = mo39115g2;
                C20128v c20128v2 = C20128v.f66529a;
            }
            this.readCompleteLatch.countDown();
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    private final void readTheListUninterruptibly() {
        boolean z;
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        z = z2;
                        readTheList();
                        break;
                    } catch (IOException e) {
                        Platform.Companion.get().log("Failed to read public suffix list", 5, e);
                        if (!z) {
                            return;
                        }
                        Thread.currentThread().interrupt();
                        return;
                    }
                } catch (InterruptedIOException e2) {
                    Thread.interrupted();
                    z2 = true;
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
        List<String> a = C18425p.m3937a(str, new char[]{'.'});
        List<String> list = a;
        if (C18524p.m3850a((Object) ((String) C18282n.m4119g((List<? extends Object>) a)), (Object) "")) {
            list = C18282n.m4111k((List) a);
        }
        return list;
    }

    public final String getEffectiveTldPlusOne(String domain) {
        int i;
        int i2;
        C18524p.m3840d(domain, "domain");
        String unicodeDomain = IDN.toUnicode(domain);
        C18524p.m3843b(unicodeDomain, "unicodeDomain");
        List<String> splitDomain = splitDomain(unicodeDomain);
        List<String> findMatchingRule = findMatchingRule(splitDomain);
        if (splitDomain.size() != findMatchingRule.size() || findMatchingRule.get(0).charAt(0) == '!') {
            if (findMatchingRule.get(0).charAt(0) == '!') {
                i2 = splitDomain.size();
                i = findMatchingRule.size();
            } else {
                i2 = splitDomain.size();
                i = findMatchingRule.size() + 1;
            }
            AbstractC18378h joinToString = C18381k.m4024a(C18282n.m4106p(splitDomain(domain)), i2 - i);
            C18524p.m3840d(joinToString, "$this$joinToString");
            C18524p.m3840d(separator, "separator");
            C18524p.m3840d(prefix, "prefix");
            C18524p.m3840d(postfix, "postfix");
            C18524p.m3840d(truncated, "truncated");
            String sb = ((StringBuilder) C18381k.m4023a(joinToString, new StringBuilder(), separator, prefix, postfix, -1, truncated, null)).toString();
            C18524p.m3843b(sb, "joinTo(StringBuilder(), …ed, transform).toString()");
            return sb;
        }
        return null;
    }

    public final void setListBytes(byte[] publicSuffixListBytes, byte[] publicSuffixExceptionListBytes) {
        C18524p.m3840d(publicSuffixListBytes, "publicSuffixListBytes");
        C18524p.m3840d(publicSuffixExceptionListBytes, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = publicSuffixListBytes;
        this.publicSuffixExceptionListBytes = publicSuffixExceptionListBytes;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
