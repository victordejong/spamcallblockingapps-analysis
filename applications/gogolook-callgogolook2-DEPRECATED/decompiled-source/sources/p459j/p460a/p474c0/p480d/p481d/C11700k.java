package p459j.p460a.p474c0.p480d.p481d;

import android.content.ContentResolver;
import android.content.Context;
import android.text.TextUtils;
import androidx.collection.SimpleArrayMap;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import kotlinx.coroutines.DebugKt;
/* renamed from: j.a.c0.d.d.k */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/k.class */
public class C11700k {

    /* renamed from: g */
    public static SimpleArrayMap<String, Integer> f26234g = new SimpleArrayMap<>();

    /* renamed from: a */
    public ByteArrayOutputStream f26235a;

    /* renamed from: b */
    public C11695f f26236b;

    /* renamed from: c */
    public int f26237c;

    /* renamed from: d */
    public C11702b f26238d;

    /* renamed from: e */
    public final ContentResolver f26239e;

    /* renamed from: f */
    public C11706m f26240f;

    /* renamed from: j.a.c0.d.d.k$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/k$b.class */
    public class C11702b {

        /* renamed from: a */
        public C11703c f26241a;

        /* renamed from: b */
        public C11703c f26242b;

        /* renamed from: c */
        public int f26243c;

        public C11702b() {
            this.f26241a = null;
            this.f26242b = null;
            this.f26243c = 0;
        }

        /* renamed from: a */
        public void m8539a() {
            C11700k.this.m8557a(this.f26242b.f26245a.toByteArray(), 0, this.f26242b.f26246b);
            this.f26242b = null;
        }

        /* renamed from: b */
        public C11704d m8538b() {
            C11704d dVar = new C11704d();
            dVar.f26248a = C11700k.this.f26237c;
            dVar.f26249b = this.f26243c;
            return dVar;
        }

        /* renamed from: c */
        public void m8537c() {
            if (this.f26242b == null) {
                C11703c cVar = new C11703c();
                C11700k kVar = C11700k.this;
                cVar.f26245a = kVar.f26235a;
                cVar.f26246b = kVar.f26237c;
                cVar.f26247c = this.f26241a;
                this.f26241a = cVar;
                this.f26243c++;
                kVar.f26235a = new ByteArrayOutputStream();
                C11700k.this.f26237c = 0;
                return;
            }
            throw new RuntimeException("BUG: Invalid newbuf() before copy()");
        }

        /* renamed from: d */
        public void m8536d() {
            C11700k kVar = C11700k.this;
            ByteArrayOutputStream byteArrayOutputStream = kVar.f26235a;
            int i = kVar.f26237c;
            C11703c cVar = this.f26241a;
            kVar.f26235a = cVar.f26245a;
            kVar.f26237c = cVar.f26246b;
            this.f26242b = cVar;
            this.f26241a = cVar.f26247c;
            this.f26243c--;
            C11703c cVar2 = this.f26242b;
            cVar2.f26245a = byteArrayOutputStream;
            cVar2.f26246b = i;
        }
    }

    /* renamed from: j.a.c0.d.d.k$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/k$c.class */
    public static class C11703c {

        /* renamed from: a */
        public ByteArrayOutputStream f26245a;

        /* renamed from: b */
        public int f26246b;

        /* renamed from: c */
        public C11703c f26247c;

        public C11703c() {
            this.f26245a = null;
            this.f26246b = 0;
            this.f26247c = null;
        }
    }

    /* renamed from: j.a.c0.d.d.k$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/k$d.class */
    public class C11704d {

        /* renamed from: a */
        public int f26248a;

        /* renamed from: b */
        public int f26249b;

        public C11704d() {
        }

        /* renamed from: a */
        public int m8535a() {
            if (this.f26249b == C11700k.this.f26238d.f26243c) {
                return C11700k.this.f26237c - this.f26248a;
            }
            throw new RuntimeException("BUG: Invalid call to getLength()");
        }
    }

    static {
        int i = 0;
        while (true) {
            String[] strArr = C11705l.f26251a;
            if (i < strArr.length) {
                f26234g.put(strArr[i], Integer.valueOf(i));
                i++;
            } else {
                return;
            }
        }
    }

    public C11700k(Context context, C11695f fVar) {
        this.f26235a = null;
        this.f26236b = null;
        this.f26237c = 0;
        this.f26238d = null;
        this.f26240f = null;
        this.f26236b = fVar;
        this.f26239e = context.getContentResolver();
        this.f26240f = fVar.m8581b();
        this.f26238d = new C11702b();
        this.f26235a = new ByteArrayOutputStream();
        this.f26237c = 0;
    }

    /* renamed from: c */
    public static int m8547c(String str) {
        if (str == null) {
            return 5;
        }
        if (str.matches("[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}")) {
            return 3;
        }
        if (str.matches("\\+?[0-9|\\.|\\-]+")) {
            return 1;
        }
        if (str.matches("[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}")) {
            return 2;
        }
        return str.matches("[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}") ? 4 : 5;
    }

    /* renamed from: a */
    public final C11694e m8561a(C11694e eVar) {
        try {
            int c = m8547c(eVar.m8586e());
            C11694e a = C11694e.m8591a(eVar);
            if (1 == c) {
                a.m8589b("/TYPE=PLMN".getBytes());
            } else if (3 == c) {
                a.m8589b("/TYPE=IPV4".getBytes());
            } else if (4 == c) {
                a.m8589b("/TYPE=IPV6".getBytes());
            }
            return a;
        } catch (NullPointerException e) {
            return null;
        }
    }

    /* renamed from: a */
    public void m8563a(int i) {
        this.f26235a.write(i);
        this.f26237c++;
    }

    /* renamed from: a */
    public void m8562a(long j) {
        m8554b(j);
    }

    /* renamed from: a */
    public void m8559a(String str) {
        m8558a(str.getBytes());
    }

    /* renamed from: a */
    public void m8558a(byte[] bArr) {
        m8563a(34);
        m8557a(bArr, 0, bArr.length);
        m8563a(0);
    }

    /* renamed from: a */
    public void m8557a(byte[] bArr, int i, int i2) {
        this.f26235a.write(bArr, i, i2);
        this.f26237c += i2;
    }

    /* renamed from: a */
    public byte[] m8564a() {
        int a = this.f26236b.m8584a();
        if (a != 128) {
            if (a != 133) {
                if (a != 135) {
                    if (a != 130) {
                        if (!(a == 131 && m8543e() == 0)) {
                            return null;
                        }
                    } else if (m8546d() != 0) {
                        return null;
                    }
                } else if (m8541f() != 0) {
                    return null;
                }
            } else if (m8556b() != 0) {
                return null;
            }
        } else if (m8540g() != 0) {
            return null;
        }
        return this.f26235a.toByteArray();
    }

    /* renamed from: b */
    public final int m8556b() {
        if (this.f26235a == null) {
            this.f26235a = new ByteArrayOutputStream();
            this.f26237c = 0;
        }
        m8549c(140);
        m8549c(133);
        if (m8555b(152) != 0 || m8555b(141) != 0) {
            return 1;
        }
        m8555b(145);
        return 0;
    }

    /* renamed from: b */
    public final int m8555b(int i) {
        switch (i) {
            case 129:
            case 130:
            case 151:
                C11694e[] b = this.f26240f.m8526b(i);
                if (b == null) {
                    return 2;
                }
                for (C11694e eVar : b) {
                    C11694e a = m8561a(eVar);
                    if (a == null) {
                        return 1;
                    }
                    m8549c(i);
                    m8553b(a);
                }
                return 0;
            case 131:
            case 139:
            case 152:
                byte[] e = this.f26240f.m8522e(i);
                if (e == null) {
                    return 2;
                }
                m8549c(i);
                m8551b(e);
                return 0;
            case 132:
            case 135:
            case 140:
            case 146:
            case 147:
            case 148:
            case 153:
            case 154:
            default:
                return 3;
            case 133:
                long c = this.f26240f.m8524c(i);
                if (-1 == c) {
                    return 2;
                }
                m8549c(i);
                m8562a(c);
                return 0;
            case 134:
            case 143:
            case 144:
            case 145:
            case 149:
            case 155:
                int d = this.f26240f.m8523d(i);
                if (d == 0) {
                    return 2;
                }
                m8549c(i);
                m8549c(d);
                return 0;
            case 136:
            case 142:
                long c2 = this.f26240f.m8524c(i);
                if (-1 == c2) {
                    return 2;
                }
                m8549c(i);
                this.f26238d.m8537c();
                C11704d b2 = this.f26238d.m8538b();
                m8563a(129);
                m8554b(c2);
                int a2 = b2.m8535a();
                this.f26238d.m8536d();
                m8544d(a2);
                this.f26238d.m8539a();
                return 0;
            case 137:
                m8549c(i);
                C11694e a3 = this.f26240f.m8532a(i);
                if (a3 == null || TextUtils.isEmpty(a3.m8586e()) || new String(a3.m8585f()).equals("insert-address-token")) {
                    m8563a(1);
                    m8563a(129);
                    return 0;
                }
                this.f26238d.m8537c();
                C11704d b3 = this.f26238d.m8538b();
                m8563a(128);
                C11694e a4 = m8561a(a3);
                if (a4 == null) {
                    return 1;
                }
                m8553b(a4);
                int a5 = b3.m8535a();
                this.f26238d.m8536d();
                m8544d(a5);
                this.f26238d.m8539a();
                return 0;
            case 138:
                byte[] e2 = this.f26240f.m8522e(i);
                if (e2 == null) {
                    return 2;
                }
                m8549c(i);
                if (Arrays.equals(e2, "advertisement".getBytes())) {
                    m8549c(129);
                    return 0;
                } else if (Arrays.equals(e2, DebugKt.DEBUG_PROPERTY_VALUE_AUTO.getBytes())) {
                    m8549c(131);
                    return 0;
                } else if (Arrays.equals(e2, UserProfile.CARDCATE_NAME_PERSONAL.getBytes())) {
                    m8549c(128);
                    return 0;
                } else if (Arrays.equals(e2, "informational".getBytes())) {
                    m8549c(130);
                    return 0;
                } else {
                    m8551b(e2);
                    return 0;
                }
            case 141:
                m8549c(i);
                int d2 = this.f26240f.m8523d(i);
                if (d2 == 0) {
                    m8545d(18);
                    return 0;
                }
                m8545d(d2);
                return 0;
            case 150:
                C11694e a6 = this.f26240f.m8532a(i);
                if (a6 == null) {
                    return 2;
                }
                m8549c(i);
                m8553b(a6);
                return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m8554b(long r7) {
        /*
            r6 = this;
            r0 = 0
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = 0
            r12 = r0
        L_0x0008:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0023
            r0 = r12
            r1 = 8
            if (r0 >= r1) goto L_0x0023
            r0 = r10
            r1 = 8
            long r0 = r0 >>> r1
            r10 = r0
            int r12 = r12 + 1
            goto L_0x0008
        L_0x0023:
            r0 = r6
            r1 = r12
            r0.m8542e(r1)
            r0 = r12
            r1 = 1
            int r0 = r0 - r1
            r1 = 8
            int r0 = r0 * r1
            r13 = r0
        L_0x0032:
            r0 = r9
            r1 = r12
            if (r0 >= r1) goto L_0x004e
            r0 = r6
            r1 = r7
            r2 = r13
            long r1 = r1 >>> r2
            r2 = 255(0xff, double:1.26E-321)
            long r1 = r1 & r2
            int r1 = (int) r1
            r0.m8563a(r1)
            int r13 = r13 + (-8)
            int r9 = r9 + 1
            goto L_0x0032
        L_0x004e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p480d.p481d.C11700k.m8554b(long):void");
    }

    /* renamed from: b */
    public void m8553b(C11694e eVar) {
        int d = eVar.m8587d();
        byte[] f = eVar.m8585f();
        if (f != null) {
            this.f26238d.m8537c();
            C11704d b = this.f26238d.m8538b();
            m8545d(d);
            m8551b(f);
            int a = b.m8535a();
            this.f26238d.m8536d();
            m8544d(a);
            this.f26238d.m8539a();
        }
    }

    /* renamed from: b */
    public void m8552b(String str) {
        m8551b(str.getBytes());
    }

    /* renamed from: b */
    public void m8551b(byte[] bArr) {
        if ((bArr[0] & 255) > 127) {
            m8563a(127);
        }
        m8557a(bArr, 0, bArr.length);
        m8563a(0);
    }

    /* renamed from: c */
    public final int m8550c() {
        int i;
        this.f26238d.m8537c();
        C11704d b = this.f26238d.m8538b();
        Integer num = f26234g.get(new String(this.f26240f.m8522e(132)));
        if (num == null) {
            return 1;
        }
        m8545d(num.intValue());
        C11699j c = ((C11715v) this.f26236b).m8576c();
        if (c == null || c.m8569a() == 0) {
            m8548c(0L);
            this.f26238d.m8536d();
            this.f26238d.m8539a();
            return 0;
        }
        try {
            C11708o a = c.m8568a(0);
            byte[] c2 = a.m8493c();
            if (c2 != null) {
                m8549c(138);
                if (60 == c2[0] && 62 == c2[c2.length - 1]) {
                    m8551b(c2);
                } else {
                    m8552b("<" + new String(c2) + ">");
                }
            }
            m8549c(137);
            m8551b(a.m8487f());
        } catch (ArrayIndexOutOfBoundsException e) {
            e.printStackTrace();
        }
        int a2 = b.m8535a();
        this.f26238d.m8536d();
        m8544d(a2);
        this.f26238d.m8539a();
        int a3 = c.m8569a();
        m8548c(a3);
        for (int i2 = 0; i2 < a3; i2++) {
            C11708o a4 = c.m8568a(i2);
            this.f26238d.m8537c();
            C11704d b2 = this.f26238d.m8538b();
            this.f26238d.m8537c();
            C11704d b3 = this.f26238d.m8538b();
            byte[] f = a4.m8487f();
            if (f == null) {
                return 1;
            }
            Integer num2 = f26234g.get(new String(f));
            if (num2 == null) {
                m8551b(f);
            } else {
                m8545d(num2.intValue());
            }
            byte[] j = a4.m8480j();
            byte[] bArr = j;
            if (j == null) {
                byte[] i3 = a4.m8481i();
                bArr = i3;
                if (i3 == null) {
                    byte[] d = a4.m8491d();
                    bArr = d;
                    if (d == null) {
                        bArr = "smil.xml".getBytes();
                    }
                }
            }
            m8549c(133);
            m8551b(bArr);
            int a5 = a4.m8499a();
            if (a5 != 0) {
                m8549c(129);
                m8545d(a5);
            }
            int a6 = b3.m8535a();
            this.f26238d.m8536d();
            m8544d(a6);
            this.f26238d.m8539a();
            byte[] c3 = a4.m8493c();
            if (c3 != null) {
                m8549c(PsExtractor.AUDIO_STREAM);
                if (60 == c3[0] && 62 == c3[c3.length - 1]) {
                    m8558a(c3);
                } else {
                    m8559a("<" + new String(c3) + ">");
                }
            }
            byte[] d2 = a4.m8491d();
            if (d2 != null) {
                m8549c(142);
                m8551b(d2);
            }
            int a7 = b2.m8535a();
            byte[] g = a4.m8485g();
            if (g != null) {
                m8557a(g, 0, g.length);
                i = g.length;
            } else {
                InputStream inputStream = null;
                InputStream inputStream2 = null;
                InputStream inputStream3 = null;
                InputStream inputStream4 = null;
                try {
                    byte[] bArr2 = new byte[1024];
                    InputStream openInputStream = this.f26239e.openInputStream(a4.m8483h());
                    int i4 = 0;
                    while (true) {
                        int read = openInputStream.read(bArr2);
                        if (read == -1) {
                            break;
                        }
                        this.f26235a.write(bArr2, 0, read);
                        this.f26237c += read;
                        i4 += read;
                    }
                    i = i4;
                    if (openInputStream != null) {
                        try {
                            openInputStream.close();
                            i = i4;
                        } catch (IOException e2) {
                            i = i4;
                        }
                    }
                } catch (FileNotFoundException e3) {
                    if (0 == 0) {
                        return 1;
                    }
                    try {
                        inputStream3.close();
                        return 1;
                    } catch (IOException e4) {
                        return 1;
                    }
                } catch (IOException e5) {
                    if (0 == 0) {
                        return 1;
                    }
                    try {
                        inputStream2.close();
                        return 1;
                    } catch (IOException e6) {
                        return 1;
                    }
                } catch (RuntimeException e7) {
                    if (0 == 0) {
                        return 1;
                    }
                    try {
                        inputStream.close();
                        return 1;
                    } catch (IOException e8) {
                        return 1;
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            inputStream4.close();
                        } catch (IOException e9) {
                        }
                    }
                    throw th;
                }
            }
            if (i == b2.m8535a() - a7) {
                this.f26238d.m8536d();
                m8548c(a7);
                m8548c(i);
                this.f26238d.m8539a();
            } else {
                throw new RuntimeException("BUG: Length sanity check failed");
            }
        }
        return 0;
    }

    /* renamed from: c */
    public void m8549c(int i) {
        m8563a(i);
    }

    /* renamed from: c */
    public void m8548c(long j) {
        int i;
        int i2 = 0;
        long j2 = 127;
        while (true) {
            i = i2;
            if (i2 >= 5) {
                break;
            } else if (j < j2) {
                i = i2;
                break;
            } else {
                j2 = (j2 << 7) | 127;
                i2++;
            }
        }
        while (i > 0) {
            m8563a((int) ((((j >>> (i * 7)) & 127) | 128) & 255));
            i--;
        }
        m8563a((int) (j & 127));
    }

    /* renamed from: d */
    public final int m8546d() {
        if (this.f26235a == null) {
            this.f26235a = new ByteArrayOutputStream();
            this.f26237c = 0;
        }
        m8549c(140);
        m8549c(130);
        if (m8555b(152) != 0 || m8555b(141) != 0 || m8555b(137) != 0) {
            return 1;
        }
        m8555b(150);
        return (m8555b(138) == 0 && m8555b(142) == 0 && m8555b(136) == 0 && m8555b(131) == 0) ? 0 : 1;
    }

    /* renamed from: d */
    public void m8545d(int i) {
        m8563a((i | 128) & 255);
    }

    /* renamed from: d */
    public void m8544d(long j) {
        if (j < 31) {
            m8542e((int) j);
            return;
        }
        m8563a(31);
        m8548c(j);
    }

    /* renamed from: e */
    public final int m8543e() {
        if (this.f26235a == null) {
            this.f26235a = new ByteArrayOutputStream();
            this.f26237c = 0;
        }
        m8549c(140);
        m8549c(131);
        return (m8555b(152) == 0 && m8555b(141) == 0 && m8555b(149) == 0) ? 0 : 1;
    }

    /* renamed from: e */
    public void m8542e(int i) {
        m8563a(i);
    }

    /* renamed from: f */
    public final int m8541f() {
        if (this.f26235a == null) {
            this.f26235a = new ByteArrayOutputStream();
            this.f26237c = 0;
        }
        m8549c(140);
        m8549c(135);
        if (m8555b(141) != 0 || m8555b(139) != 0 || m8555b(151) != 0 || m8555b(137) != 0) {
            return 1;
        }
        m8555b(133);
        return m8555b(155) != 0 ? 1 : 0;
    }

    /* renamed from: g */
    public final int m8540g() {
        boolean z = false;
        if (this.f26235a == null) {
            this.f26235a = new ByteArrayOutputStream();
            this.f26237c = 0;
        }
        m8549c(140);
        m8549c(128);
        m8549c(152);
        byte[] e = this.f26240f.m8522e(152);
        if (e != null) {
            m8551b(e);
            if (m8555b(141) != 0) {
                return 1;
            }
            m8555b(133);
            if (m8555b(137) != 0) {
                return 1;
            }
            if (m8555b(151) != 1) {
                z = true;
            }
            if (m8555b(130) != 1) {
                z = true;
            }
            if (m8555b(129) != 1) {
                z = true;
            }
            if (!z) {
                return 1;
            }
            m8555b(150);
            m8555b(138);
            m8555b(136);
            m8555b(143);
            m8555b(134);
            m8555b(144);
            m8549c(132);
            return m8550c();
        }
        throw new IllegalArgumentException("Transaction-ID is null.");
    }
}
