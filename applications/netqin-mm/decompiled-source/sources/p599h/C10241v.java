package p599h;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okio.ByteString;
import p599h.p600d0.C10109c;
import p610i.AbstractC10263d;
/* renamed from: h.v */
/* loaded from: classes2-dex2jar.jar:h/v.class */
public final class C10241v extends AbstractC10252z {

    /* renamed from: e */
    public static final C10240u f37776e = C10240u.m895a("multipart/mixed");

    /* renamed from: f */
    public static final C10240u f37777f = C10240u.m895a("multipart/form-data");

    /* renamed from: g */
    public static final byte[] f37778g = {58, 32};

    /* renamed from: h */
    public static final byte[] f37779h = {13, 10};

    /* renamed from: i */
    public static final byte[] f37780i = {45, 45};

    /* renamed from: a */
    public final ByteString f37781a;

    /* renamed from: b */
    public final C10240u f37782b;

    /* renamed from: c */
    public final List<C10243b> f37783c;

    /* renamed from: d */
    public long f37784d = -1;

    /* renamed from: h.v$a */
    /* loaded from: classes2-dex2jar.jar:h/v$a.class */
    public static final class C10242a {

        /* renamed from: a */
        public final ByteString f37785a;

        /* renamed from: b */
        public C10240u f37786b;

        /* renamed from: c */
        public final List<C10243b> f37787c;

        public C10242a() {
            this(UUID.randomUUID().toString());
        }

        public C10242a(String str) {
            this.f37786b = C10241v.f37776e;
            this.f37787c = new ArrayList();
            this.f37785a = ByteString.encodeUtf8(str);
        }

        /* renamed from: a */
        public C10242a m888a(C10240u uVar) {
            if (uVar == null) {
                throw new NullPointerException("type == null");
            } else if (uVar.m893b().equals("multipart")) {
                this.f37786b = uVar;
                return this;
            } else {
                throw new IllegalArgumentException("multipart != " + uVar);
            }
        }

        /* renamed from: a */
        public C10242a m887a(C10243b bVar) {
            if (bVar != null) {
                this.f37787c.add(bVar);
                return this;
            }
            throw new NullPointerException("part == null");
        }

        /* renamed from: a */
        public C10242a m886a(String str, String str2) {
            m887a(C10243b.m883a(str, str2));
            return this;
        }

        /* renamed from: a */
        public C10242a m885a(String str, String str2, AbstractC10252z zVar) {
            m887a(C10243b.m882a(str, str2, zVar));
            return this;
        }

        /* renamed from: a */
        public C10241v m889a() {
            if (!this.f37787c.isEmpty()) {
                return new C10241v(this.f37785a, this.f37786b, this.f37787c);
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
    }

    /* renamed from: h.v$b */
    /* loaded from: classes2-dex2jar.jar:h/v$b.class */
    public static final class C10243b {

        /* renamed from: a */
        public final C10234r f37788a;

        /* renamed from: b */
        public final AbstractC10252z f37789b;

        public C10243b(C10234r rVar, AbstractC10252z zVar) {
            this.f37788a = rVar;
            this.f37789b = zVar;
        }

        /* renamed from: a */
        public static C10243b m884a(C10234r rVar, AbstractC10252z zVar) {
            if (zVar == null) {
                throw new NullPointerException("body == null");
            } else if (rVar != null && rVar.m971a("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            } else if (rVar == null || rVar.m971a("Content-Length") == null) {
                return new C10243b(rVar, zVar);
            } else {
                throw new IllegalArgumentException("Unexpected header: Content-Length");
            }
        }

        /* renamed from: a */
        public static C10243b m883a(String str, String str2) {
            return m882a(str, null, AbstractC10252z.m802a((C10240u) null, str2));
        }

        /* renamed from: a */
        public static C10243b m882a(String str, String str2, AbstractC10252z zVar) {
            if (str != null) {
                StringBuilder sb = new StringBuilder("form-data; name=");
                C10241v.m890a(sb, str);
                if (str2 != null) {
                    sb.append("; filename=");
                    C10241v.m890a(sb, str2);
                }
                return m884a(C10234r.m969a("Content-Disposition", sb.toString()), zVar);
            }
            throw new NullPointerException("name == null");
        }
    }

    static {
        C10240u.m895a("multipart/alternative");
        C10240u.m895a("multipart/digest");
        C10240u.m895a("multipart/parallel");
    }

    public C10241v(ByteString byteString, C10240u uVar, List<C10243b> list) {
        this.f37781a = byteString;
        this.f37782b = C10240u.m895a(uVar + "; boundary=" + byteString.utf8());
        this.f37783c = C10109c.m1447a(list);
    }

    /* renamed from: a */
    public static StringBuilder m890a(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\n') {
                sb.append("%0A");
            } else if (charAt == '\r') {
                sb.append("%0D");
            } else if (charAt != '\"') {
                sb.append(charAt);
            } else {
                sb.append("%22");
            }
        }
        sb.append('\"');
        return sb;
    }

    @Override // p599h.AbstractC10252z
    /* renamed from: a */
    public long mo799a() throws IOException {
        long j = this.f37784d;
        if (j != -1) {
            return j;
        }
        long a = m891a((AbstractC10263d) null, true);
        this.f37784d = a;
        return a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r6v1, types: [i.c] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m891a(p610i.AbstractC10263d r6, boolean r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.C10241v.m891a(i.d, boolean):long");
    }

    @Override // p599h.AbstractC10252z
    /* renamed from: a */
    public void mo798a(AbstractC10263d dVar) throws IOException {
        m891a(dVar, false);
    }

    @Override // p599h.AbstractC10252z
    /* renamed from: b */
    public C10240u mo797b() {
        return this.f37782b;
    }
}
