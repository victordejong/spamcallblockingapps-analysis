package p193e.p1432d.p1436b.p1437a.p1438b;

import android.content.ContentResolver;
import android.content.Context;
import android.text.TextUtils;
import com.mopub.mobileads.resource.DrawableConstants;
import com.truecaller.log.AssertionUtil;
import io.agora.rtc.Constants;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import p1727n3.p1788g.C26187h;
/* renamed from: e.d.b.a.b.k */
/* loaded from: classes-dex2jar.jar:e/d/b/a/b/k.class */
public class C22116k {

    /* renamed from: g */
    public static C26187h<String, Integer> f61430g = new C26187h<>();

    /* renamed from: a */
    public ByteArrayOutputStream f61431a;

    /* renamed from: b */
    public C22111f f61432b;

    /* renamed from: c */
    public int f61433c;

    /* renamed from: d */
    public C22118b f61434d;

    /* renamed from: e */
    public final ContentResolver f61435e;

    /* renamed from: f */
    public C22122m f61436f;

    /* renamed from: e.d.b.a.b.k$b */
    /* loaded from: classes-dex2jar.jar:e/d/b/a/b/k$b.class */
    public class C22118b {

        /* renamed from: a */
        public C22119c f61437a = null;

        /* renamed from: b */
        public C22119c f61438b = null;

        /* renamed from: c */
        public int f61439c = 0;

        public C22118b(C22117a c22117a) {
            C22116k.this = r4;
        }

        /* renamed from: a */
        public void m8774a() {
            C22116k.this.m8775l(this.f61438b.f61441a.toByteArray(), 0, this.f61438b.f61442b);
            this.f61438b = null;
        }

        /* renamed from: b */
        public C22120d m8773b() {
            C22116k c22116k = C22116k.this;
            C22120d c22120d = new C22120d(null);
            c22120d.f61444a = c22116k.f61433c;
            c22120d.f61445b = this.f61439c;
            return c22120d;
        }

        /* renamed from: c */
        public void m8772c() {
            if (this.f61438b == null) {
                C22119c c22119c = new C22119c(null);
                C22116k c22116k = C22116k.this;
                c22119c.f61441a = c22116k.f61431a;
                c22119c.f61442b = c22116k.f61433c;
                c22119c.f61443c = this.f61437a;
                this.f61437a = c22119c;
                this.f61439c++;
                c22116k.f61431a = new ByteArrayOutputStream();
                C22116k.this.f61433c = 0;
                return;
            }
            throw new RuntimeException("BUG: Invalid newbuf() before copy()");
        }

        /* renamed from: d */
        public void m8771d() {
            C22116k c22116k = C22116k.this;
            ByteArrayOutputStream byteArrayOutputStream = c22116k.f61431a;
            int i = c22116k.f61433c;
            C22119c c22119c = this.f61437a;
            c22116k.f61431a = c22119c.f61441a;
            c22116k.f61433c = c22119c.f61442b;
            this.f61438b = c22119c;
            this.f61437a = c22119c.f61443c;
            this.f61439c--;
            c22119c.f61441a = byteArrayOutputStream;
            c22119c.f61442b = i;
        }
    }

    /* renamed from: e.d.b.a.b.k$c */
    /* loaded from: classes-dex2jar.jar:e/d/b/a/b/k$c.class */
    public static class C22119c {

        /* renamed from: a */
        public ByteArrayOutputStream f61441a = null;

        /* renamed from: b */
        public int f61442b = 0;

        /* renamed from: c */
        public C22119c f61443c = null;

        public C22119c(C22117a c22117a) {
        }
    }

    /* renamed from: e.d.b.a.b.k$d */
    /* loaded from: classes-dex2jar.jar:e/d/b/a/b/k$d.class */
    public class C22120d {

        /* renamed from: a */
        public int f61444a;

        /* renamed from: b */
        public int f61445b;

        public C22120d(C22117a c22117a) {
            C22116k.this = r4;
        }

        /* renamed from: a */
        public int m8770a() {
            int i = this.f61445b;
            C22116k c22116k = C22116k.this;
            if (i == c22116k.f61434d.f61439c) {
                return c22116k.f61433c - this.f61444a;
            }
            throw new RuntimeException("BUG: Invalid call to getLength()");
        }
    }

    static {
        int i = 0;
        while (true) {
            String[] strArr = C22121l.f61447a;
            if (i < strArr.length) {
                f61430g.put(strArr[i], Integer.valueOf(i));
                i++;
            } else {
                return;
            }
        }
    }

    public C22116k(Context context, C22111f c22111f) {
        this.f61431a = null;
        this.f61432b = null;
        this.f61433c = 0;
        this.f61434d = null;
        this.f61436f = null;
        this.f61432b = c22111f;
        this.f61435e = context.getContentResolver();
        this.f61436f = c22111f.f61427a;
        this.f61434d = new C22118b(null);
        this.f61431a = new ByteArrayOutputStream();
        this.f61433c = 0;
    }

    /* renamed from: a */
    public void m8786a(int i) {
        this.f61431a.write(i);
        this.f61433c++;
    }

    /* renamed from: b */
    public final C22110e m8785b(C22110e c22110e) {
        try {
            String m8795b = c22110e.m8795b();
            boolean z = true;
            if (m8795b.matches("[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}")) {
                z = true;
            } else if (m8795b.matches("\\+?[0-9|\\.|\\-]+")) {
                z = true;
            } else if (m8795b.matches("[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}")) {
                z = true;
            } else if (m8795b.matches("[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}")) {
                z = true;
            }
            AssertionUtil.AlwaysFatal.isNotNull(c22110e, new String[0]);
            C22110e c22110e2 = new C22110e(c22110e.f61425a, c22110e.f61426b);
            if (true == z) {
                c22110e2.m8796a("/TYPE=PLMN".getBytes());
            } else if (true == z) {
                c22110e2.m8796a("/TYPE=IPV4".getBytes());
            } else if (true == z) {
                c22110e2.m8796a("/TYPE=IPV6".getBytes());
            }
            return c22110e2;
        } catch (NullPointerException e) {
            return null;
        }
    }

    /* renamed from: c */
    public void m8784c(C22110e c22110e) {
        int i = c22110e.f61425a;
        byte[] m8794c = c22110e.m8794c();
        this.f61434d.m8772c();
        C22120d m8773b = this.f61434d.m8773b();
        m8779h(i);
        m8778i(m8794c);
        int m8770a = m8773b.m8770a();
        this.f61434d.m8771d();
        m8776k(m8770a);
        this.f61434d.m8774a();
    }

    /* renamed from: d */
    public final int m8783d(int i) {
        switch (i) {
            case Constants.ERR_WATERMARK_READ /* 129 */:
            case Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED /* 130 */:
            case Constants.ERR_PUBLISH_STREAM_CDN_ERROR /* 151 */:
                C22110e[] m8767c = this.f61436f.m8767c(i);
                if (m8767c == null) {
                    return 2;
                }
                for (C22110e c22110e : m8767c) {
                    C22110e m8785b = m8785b(c22110e);
                    if (m8785b == null) {
                        return 1;
                    }
                    this.f61431a.write(i);
                    this.f61433c++;
                    m8784c(m8785b);
                }
                return 0;
            case 131:
            case 139:
            case Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT /* 152 */:
                byte[] bArr = (byte[]) this.f61436f.f61448a.get(i);
                if (bArr == null) {
                    return 2;
                }
                this.f61431a.write(i);
                this.f61433c++;
                m8778i(bArr);
                return 0;
            case 132:
            case 135:
            case 140:
            case 146:
            case 147:
            case 148:
            case Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED /* 153 */:
            case Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR /* 154 */:
            default:
                return 3;
            case 133:
                long m8766d = this.f61436f.m8766d(i);
                if (-1 == m8766d) {
                    return 2;
                }
                this.f61431a.write(i);
                this.f61433c++;
                m8782e(m8766d);
                return 0;
            case 134:
            case 143:
            case 144:
            case 145:
            case 149:
            case Constants.ERR_PUBLISH_STREAM_NOT_FOUND /* 155 */:
                int m8765e = this.f61436f.m8765e(i);
                if (m8765e == 0) {
                    return 2;
                }
                this.f61431a.write(i);
                this.f61433c++;
                m8781f(m8765e);
                return 0;
            case 136:
            case 142:
                long m8766d2 = this.f61436f.m8766d(i);
                if (-1 == m8766d2) {
                    return 2;
                }
                this.f61431a.write(i);
                this.f61433c++;
                this.f61434d.m8772c();
                C22120d m8773b = this.f61434d.m8773b();
                m8786a(Constants.ERR_WATERMARK_READ);
                m8782e(m8766d2);
                int m8770a = m8773b.m8770a();
                this.f61434d.m8771d();
                m8776k(m8770a);
                this.f61434d.m8774a();
                return 0;
            case 137:
                this.f61431a.write(i);
                this.f61433c++;
                C22110e c22110e2 = (C22110e) this.f61436f.f61448a.get(i);
                if (c22110e2 == null || TextUtils.isEmpty(c22110e2.m8795b()) || new String(c22110e2.m8794c()).equals("insert-address-token")) {
                    m8786a(1);
                    m8786a(Constants.ERR_WATERMARK_READ);
                    return 0;
                }
                this.f61434d.m8772c();
                C22120d m8773b2 = this.f61434d.m8773b();
                m8786a(128);
                C22110e m8785b2 = m8785b(c22110e2);
                if (m8785b2 == null) {
                    return 1;
                }
                m8784c(m8785b2);
                int m8770a2 = m8773b2.m8770a();
                this.f61434d.m8771d();
                m8776k(m8770a2);
                this.f61434d.m8774a();
                return 0;
            case 138:
                byte[] bArr2 = (byte[]) this.f61436f.f61448a.get(i);
                if (bArr2 == null) {
                    return 2;
                }
                this.f61431a.write(i);
                this.f61433c++;
                if (Arrays.equals(bArr2, "advertisement".getBytes())) {
                    m8781f(Constants.ERR_WATERMARK_READ);
                    return 0;
                } else if (Arrays.equals(bArr2, "auto".getBytes())) {
                    m8781f(131);
                    return 0;
                } else if (Arrays.equals(bArr2, "personal".getBytes())) {
                    m8781f(128);
                    return 0;
                } else if (Arrays.equals(bArr2, "informational".getBytes())) {
                    m8781f(Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED);
                    return 0;
                } else {
                    m8778i(bArr2);
                    return 0;
                }
            case 141:
                this.f61431a.write(i);
                this.f61433c++;
                int m8765e2 = this.f61436f.m8765e(i);
                if (m8765e2 == 0) {
                    m8779h(18);
                    return 0;
                }
                m8779h(m8765e2);
                return 0;
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
                C22110e c22110e3 = (C22110e) this.f61436f.f61448a.get(i);
                if (c22110e3 == null) {
                    return 2;
                }
                this.f61431a.write(i);
                this.f61433c++;
                m8784c(c22110e3);
                return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: e */
    public void m8782e(long j) {
        char c = j;
        int i = 0;
        while (c != 0 && i < 8) {
            c >>>= '\b';
            i++;
        }
        this.f61431a.write(i);
        this.f61433c++;
        int i2 = (i - 1) * 8;
        for (int i3 = 0; i3 < i; i3++) {
            m8786a((int) ((j >>> i2) & 255));
            i2 -= 8;
        }
    }

    /* renamed from: f */
    public void m8781f(int i) {
        this.f61431a.write(i);
        this.f61433c++;
    }

    /* renamed from: g */
    public void m8780g(byte[] bArr) {
        m8786a(34);
        int length = bArr.length;
        this.f61431a.write(bArr, 0, length);
        this.f61433c += length;
        m8786a(0);
    }

    /* renamed from: h */
    public void m8779h(int i) {
        m8786a((i | 128) & 255);
    }

    /* renamed from: i */
    public void m8778i(byte[] bArr) {
        if ((bArr[0] & 255) > 127) {
            m8786a(Constants.ERR_WATERMARKR_INFO);
        }
        int length = bArr.length;
        this.f61431a.write(bArr, 0, length);
        this.f61433c += length;
        m8786a(0);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: j */
    public void m8777j(long j) {
        int i;
        int i2 = 0;
        char c = 127;
        while (true) {
            i = i2;
            if (i2 >= 5) {
                break;
            } else if (j < c) {
                i = i2;
                break;
            } else {
                c = (c << 7) | 127;
                i2++;
            }
        }
        while (i > 0) {
            m8786a((int) ((((j >>> (i * 7)) & 127) | 128) & 255));
            i--;
        }
        m8786a((int) (j & 127));
    }

    /* renamed from: k */
    public void m8776k(long j) {
        if (j >= 31) {
            m8786a(31);
            m8777j(j);
            return;
        }
        this.f61431a.write((int) j);
        this.f61433c++;
    }

    /* renamed from: l */
    public void m8775l(byte[] bArr, int i, int i2) {
        this.f61431a.write(bArr, i, i2);
        this.f61433c += i2;
    }
}
