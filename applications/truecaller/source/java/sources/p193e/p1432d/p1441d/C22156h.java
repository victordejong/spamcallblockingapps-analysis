package p193e.p1432d.p1441d;

import com.huawei.hms.framework.common.ContainerUtils;
import com.tenor.android.core.constant.ScreenDensity;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1432d.p1441d.p1442p.C22166b;
/* renamed from: e.d.d.h */
/* loaded from: classes-dex2jar.jar:e/d/d/h.class */
public class C22156h extends C22154g {

    /* renamed from: g */
    public String f61568g;

    /* renamed from: h */
    public boolean f61569h = false;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        return r0.toString();
     */
    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo8523a(java.lang.String r5) throws java.io.IOException, p193e.p1432d.p1441d.p1442p.C22166b {
        /*
            r4 = this;
            r0 = r5
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r5 = r0
        L5:
            r0 = r4
            java.lang.String r0 = r0.mo8521c()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L3d
            r0 = r6
            int r0 = r0.length()
            if (r0 != 0) goto L18
            goto L2f
        L18:
            r0 = r6
            java.lang.String r1 = " "
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L34
            r0 = r6
            java.lang.String r1 = "\t"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L34
            r0 = r4
            r1 = r6
            r0.f61568g = r1
        L2f:
            r0 = r5
            java.lang.String r0 = r0.toString()
            return r0
        L34:
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            goto L5
        L3d:
            e.d.d.p.b r0 = new e.d.d.p.b
            r1 = r0
            java.lang.String r2 = "File ended during parsing BASE64 binary"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1441d.C22156h.mo8523a(java.lang.String):java.lang.String");
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: b */
    public Set<String> mo8522b() {
        return C22158k.f61575b;
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: c */
    public String mo8521c() throws IOException {
        String str = this.f61568g;
        if (str != null) {
            this.f61568g = null;
            return str;
        }
        return this.f61562d.readLine();
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: d */
    public String mo8520d() throws IOException, C22166b {
        StringBuilder sb = null;
        while (true) {
            String readLine = this.f61562d.readLine();
            if (readLine == null) {
                if (sb != null) {
                    return sb.toString();
                }
                String str = this.f61568g;
                if (str == null) {
                    throw new C22166b("Reached end of buffer.");
                }
                this.f61568g = null;
                return str;
            } else if (readLine.length() == 0) {
                if (sb != null) {
                    return sb.toString();
                }
                String str2 = this.f61568g;
                if (str2 != null) {
                    this.f61568g = null;
                    return str2;
                }
            } else if (readLine.charAt(0) != ' ' && readLine.charAt(0) != '\t') {
                String str3 = this.f61568g;
                if (str3 != null) {
                    this.f61568g = readLine;
                    return str3;
                }
                this.f61568g = readLine;
                if (sb != null) {
                    return sb.toString();
                }
            } else if (sb != null) {
                sb.append(readLine.substring(1));
            } else if (this.f61568g == null) {
                throw new C22166b("Space exists at the beginning of the line");
            } else {
                sb = new StringBuilder();
                sb.append(this.f61568g);
                this.f61568g = null;
                sb.append(readLine.substring(1));
            }
        }
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: f */
    public int mo8519f() {
        return 1;
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: g */
    public String mo8518g() {
        return ScreenDensity.SD_300;
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: h */
    public void mo8517h(C22160m c22160m) {
        if (!this.f61569h) {
            this.f61569h = true;
        }
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: i */
    public void mo8516i(C22160m c22160m, String str, String str2) {
        m8509t(c22160m, str, str2);
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: j */
    public void mo8515j(C22160m c22160m, String str) {
        m8509t(c22160m, "TYPE", str);
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: k */
    public void mo8514k(C22160m c22160m, String str) throws C22166b {
        try {
            super.mo8514k(c22160m, str);
        } catch (C22166b e) {
            String[] split = str.split(ContainerUtils.KEY_VALUE_DELIMITER, 2);
            if (split.length != 2) {
                throw new C22166b(C22128a.m8543z2("Unknown params value: ", str));
            }
            m8509t(c22160m, split[0], split[1]);
        }
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: l */
    public void mo8513l(C22160m c22160m, String str) {
        m8509t(c22160m, "TYPE", str);
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: n */
    public String mo8512n(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt != '\\' || i >= length - 1) {
                sb.append(charAt);
            } else {
                i++;
                char charAt2 = str.charAt(i);
                if (charAt2 == 'n' || charAt2 == 'N') {
                    sb.append(StringConstant.NEW_LINE);
                } else {
                    sb.append(charAt2);
                }
            }
            i++;
        }
        return sb.toString();
    }

    @Override // p193e.p1432d.p1441d.C22154g
    /* renamed from: r */
    public boolean mo8511r(boolean z) throws IOException, C22166b {
        return super.mo8511r(z);
    }

    /* renamed from: s */
    public String m8510s(String str) {
        return C22162o.m8495d(str, "ISO-8859-1", StringConstant.UTF8);
    }

    /* renamed from: t */
    public final void m8509t(C22160m c22160m, String str, String str2) {
        StringBuilder sb;
        StringBuilder sb2;
        int length = str2.length();
        int i = 0;
        boolean z = false;
        StringBuilder sb3 = null;
        while (true) {
            sb = sb3;
            if (i >= length) {
                break;
            }
            char charAt = str2.charAt(i);
            if (charAt != '\"') {
                if (charAt != ',' || z) {
                    sb2 = sb;
                    if (sb == null) {
                        sb2 = new StringBuilder();
                    }
                    sb2.append(charAt);
                } else if (sb == null) {
                    sb2 = sb;
                } else {
                    c22160m.m8506a(str, m8510s(sb.toString()));
                    sb2 = null;
                }
                i++;
                sb3 = sb2;
            } else if (z) {
                c22160m.m8506a(str, m8510s(sb.toString()));
                z = false;
                sb2 = null;
                i++;
                sb3 = sb2;
            } else {
                if (sb != null && sb.length() <= 0) {
                    c22160m.m8506a(str, m8510s(sb.toString()));
                }
                z = true;
                sb2 = sb;
                i++;
                sb3 = sb2;
            }
        }
        if (sb == null || sb.length() == 0) {
            return;
        }
        c22160m.m8506a(str, m8510s(sb.toString()));
    }
}
