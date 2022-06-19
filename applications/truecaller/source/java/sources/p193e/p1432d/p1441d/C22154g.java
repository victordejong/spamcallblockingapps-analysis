package p193e.p1432d.p1441d;

import com.huawei.hms.framework.common.ContainerUtils;
import com.tenor.android.core.constant.StringConstant;
import e.d.d.p.c;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1432d.p1441d.p1442p.C22165a;
import p193e.p1432d.p1441d.p1442p.C22166b;
/* renamed from: e.d.d.g */
/* loaded from: classes-dex2jar.jar:e/d/d/g.class */
public class C22154g {

    /* renamed from: c */
    public String f61561c;

    /* renamed from: d */
    public C22155a f61562d;

    /* renamed from: b */
    public final List<AbstractC22152e> f61560b = new ArrayList();

    /* renamed from: e */
    public final Set<String> f61563e = new HashSet();

    /* renamed from: f */
    public final Set<String> f61564f = new HashSet();

    /* renamed from: a */
    public final String f61559a = "ISO-8859-1";

    /* renamed from: e.d.d.g$a */
    /* loaded from: classes-dex2jar.jar:e/d/d/g$a.class */
    public static final class C22155a extends BufferedReader {

        /* renamed from: a */
        public long f61565a;

        /* renamed from: b */
        public boolean f61566b;

        /* renamed from: c */
        public String f61567c;

        public C22155a(Reader reader) {
            super(reader);
        }

        /* renamed from: b */
        public String m8524b() throws IOException {
            if (!this.f61566b) {
                long currentTimeMillis = System.currentTimeMillis();
                String readLine = super.readLine();
                this.f61565a = (System.currentTimeMillis() - currentTimeMillis) + this.f61565a;
                this.f61567c = readLine;
                this.f61566b = true;
            }
            return this.f61567c;
        }

        @Override // java.io.BufferedReader
        public String readLine() throws IOException {
            if (this.f61566b) {
                String str = this.f61567c;
                this.f61567c = null;
                this.f61566b = false;
                return str;
            }
            long currentTimeMillis = System.currentTimeMillis();
            String readLine = super.readLine();
            this.f61565a = (System.currentTimeMillis() - currentTimeMillis) + this.f61565a;
            return readLine;
        }
    }

    public C22154g() {
        Map<String, Integer> map = C22129a.f61462a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004c, code lost:
        return r0.toString();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo8523a(java.lang.String r7) throws java.io.IOException, p193e.p1432d.p1441d.p1442p.C22166b {
        /*
            r6 = this;
            r0 = r7
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r7 = r0
        L5:
            r0 = r6
            e.d.d.g$a r0 = r0.f61562d
            java.lang.String r0 = r0.m8524b()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L56
            r0 = r8
            java.lang.String r1 = ":"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L3c
            r0 = r6
            java.util.Set r0 = r0.mo8522b()
            r1 = r8
            r2 = 0
            r3 = r8
            java.lang.String r4 = ":"
            int r3 = r3.indexOf(r4)
            java.lang.String r1 = r1.substring(r2, r3)
            java.lang.String r1 = r1.toUpperCase()
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L3c
            r0 = r8
            java.lang.String r0 = r0.trim()
            goto L48
        L3c:
            r0 = r6
            java.lang.String r0 = r0.mo8521c()
            r0 = r8
            int r0 = r0.length()
            if (r0 != 0) goto L4d
        L48:
            r0 = r7
            java.lang.String r0 = r0.toString()
            return r0
        L4d:
            r0 = r7
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            goto L5
        L56:
            e.d.d.p.b r0 = new e.d.d.p.b
            r1 = r0
            java.lang.String r2 = "File ended during parsing BASE64 binary"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1441d.C22154g.mo8523a(java.lang.String):java.lang.String");
    }

    /* renamed from: b */
    public Set<String> mo8522b() {
        return C22157j.f61570b;
    }

    /* renamed from: c */
    public String mo8521c() throws IOException {
        return this.f61562d.readLine();
    }

    /* renamed from: d */
    public String mo8520d() throws IOException, C22166b {
        String mo8521c;
        do {
            mo8521c = mo8521c();
            if (mo8521c == null) {
                throw new C22166b("Reached end of buffer.");
            }
        } while (mo8521c.trim().length() <= 0);
        return mo8521c;
    }

    /* renamed from: e */
    public final String m8529e(String str) throws IOException, C22166b {
        if (str.trim().endsWith(ContainerUtils.KEY_VALUE_DELIMITER)) {
            int length = str.length() - 1;
            do {
            } while (str.charAt(length) != '=');
            StringBuilder sb = new StringBuilder();
            sb.append(str.substring(0, length + 1));
            sb.append("\r\n");
            while (true) {
                String mo8521c = mo8521c();
                if (mo8521c == null) {
                    throw new C22166b("File ended during parsing a Quoted-Printable String");
                }
                if (!mo8521c.trim().endsWith(ContainerUtils.KEY_VALUE_DELIMITER)) {
                    sb.append(mo8521c);
                    return sb.toString();
                }
                int length2 = mo8521c.length() - 1;
                do {
                } while (mo8521c.charAt(length2) != '=');
                sb.append(mo8521c.substring(0, length2 + 1));
                sb.append("\r\n");
            }
        } else {
            return str;
        }
    }

    /* renamed from: f */
    public int mo8519f() {
        return 0;
    }

    /* renamed from: g */
    public String mo8518g() {
        return "2.1";
    }

    /* renamed from: h */
    public void mo8517h(C22160m c22160m) throws C22166b {
        if (!c22160m.f61582d.toUpperCase().contains("BEGIN:VCARD")) {
            for (AbstractC22152e abstractC22152e : this.f61560b) {
                abstractC22152e.mo8504a(c22160m);
            }
            return;
        }
        throw new C22165a("AGENT Property is not supported now.");
    }

    /* renamed from: i */
    public void mo8516i(C22160m c22160m, String str, String str2) {
        c22160m.m8506a(str, str2);
    }

    /* renamed from: j */
    public void mo8515j(C22160m c22160m, String str) {
        mo8513l(c22160m, str);
    }

    /* renamed from: k */
    public void mo8514k(C22160m c22160m, String str) throws C22166b {
        String[] split = str.split(ContainerUtils.KEY_VALUE_DELIMITER, 2);
        if (split.length != 2) {
            mo8515j(c22160m, split[0]);
            return;
        }
        String upperCase = split[0].trim().toUpperCase();
        String trim = split[1].trim();
        if (upperCase.equals("TYPE")) {
            mo8513l(c22160m, trim);
        } else if (upperCase.equals("VALUE")) {
            if (!C22157j.f61572d.contains(trim.toUpperCase()) && !trim.startsWith("X-") && !this.f61564f.contains(trim)) {
                this.f61564f.add(trim);
                String.format("The value unsupported by TYPE of %s: ", Integer.valueOf(mo8519f()), trim);
            }
            c22160m.m8506a("VALUE", trim);
        } else if (upperCase.equals("ENCODING")) {
            if (!C22157j.f61573e.contains(trim.toUpperCase()) && !trim.startsWith("X-")) {
                throw new C22166b(C22128a.m8725C2("Unknown encoding \"", trim, "\""));
            }
            c22160m.m8506a("ENCODING", trim);
            this.f61561c = trim;
        } else if (upperCase.equals("CHARSET")) {
            c22160m.m8506a("CHARSET", trim);
        } else if (!upperCase.equals("LANGUAGE")) {
            if (!upperCase.startsWith("X-")) {
                throw new C22166b(C22128a.m8725C2("Unknown type \"", upperCase, "\""));
            }
            mo8516i(c22160m, upperCase, trim);
        } else {
            String[] split2 = trim.split(StringConstant.DASH);
            if (split2.length != 2) {
                throw new C22166b(C22128a.m8725C2("Invalid Language: \"", trim, "\""));
            }
            String str2 = split2[0];
            int length = str2.length();
            for (int i = 0; i < length; i++) {
                if (!m8528m(str2.charAt(i))) {
                    throw new C22166b(C22128a.m8725C2("Invalid Language: \"", trim, "\""));
                }
            }
            String str3 = split2[1];
            int length2 = str3.length();
            for (int i2 = 0; i2 < length2; i2++) {
                if (!m8528m(str3.charAt(i2))) {
                    throw new C22166b(C22128a.m8725C2("Invalid Language: \"", trim, "\""));
                }
            }
            c22160m.m8506a("LANGUAGE", trim);
        }
    }

    /* renamed from: l */
    public void mo8513l(C22160m c22160m, String str) {
        if (!C22157j.f61571c.contains(str.toUpperCase()) && !str.startsWith("X-") && !this.f61563e.contains(str)) {
            this.f61563e.add(str);
            String.format("TYPE unsupported by %s: ", Integer.valueOf(mo8519f()), str);
        }
        c22160m.m8506a("TYPE", str);
    }

    /* renamed from: m */
    public final boolean m8528m(char c) {
        if (c < 'a' || c > 'z') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: n */
    public String mo8512n(String str) {
        return str;
    }

    /* renamed from: o */
    public void m8527o(InputStream inputStream) throws IOException, C22166b {
        boolean z;
        this.f61562d = new C22155a(new InputStreamReader(inputStream, this.f61559a));
        System.currentTimeMillis();
        for (AbstractC22152e abstractC22152e : this.f61560b) {
            abstractC22152e.mo8502c();
        }
        do {
            synchronized (this) {
            }
            this.f61561c = "8BIT";
            boolean z2 = false;
            z = false;
            if (mo8511r(false)) {
                for (AbstractC22152e abstractC22152e2 : this.f61560b) {
                    abstractC22152e2.mo8500e();
                }
                try {
                    z2 = m8526p();
                } catch (c e) {
                }
                while (!z2) {
                    z2 = m8526p();
                }
                for (AbstractC22152e abstractC22152e3 : this.f61560b) {
                    abstractC22152e3.mo8503b();
                }
                z = true;
            }
        } while (z);
        for (AbstractC22152e abstractC22152e4 : this.f61560b) {
            abstractC22152e4.mo8501d();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x032c, code lost:
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0334, code lost:
        if (mo8519f() != 0) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0337, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x033b, code lost:
        r14 = r0;
        r0 = r6.f61562d.m8524b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0349, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0354, code lost:
        if (r0.charAt(0) != ' ') goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0362, code lost:
        if ("END:VCARD".contains(r0.toUpperCase()) != false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0365, code lost:
        mo8521c();
        r16 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0370, code lost:
        if (r14 != null) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0373, code lost:
        r16 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x037a, code lost:
        r16.append(r0.substring(1));
        r0 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x038d, code lost:
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0393, code lost:
        if (r14 == null) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0396, code lost:
        r16 = r14.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x039d, code lost:
        r0 = new java.util.ArrayList();
        r0.add(p193e.p1432d.p1441d.C22162o.m8495d(mo8512n(r16), "ISO-8859-1", r7));
        r0.f61583e = r0;
        r0 = r6.f61560b.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x03d0, code lost:
        if (r0.hasNext() == false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x03d3, code lost:
        r0.next().mo8504a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x03e6, code lost:
        r0.f61584f = android.util.Base64.decode(mo8523a(r0), 0);
        r0 = r6.f61560b.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0406, code lost:
        if (r0.hasNext() == false) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0409, code lost:
        r0.next().mo8504a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x041e, code lost:
        r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8692L("Exception during parsing VCards BASE64 data!\npropertyName:  ", r0, "\ncurrentEncoding  ");
        r0.append(r6.f61561c);
        r0.append("\nvCardVersion:  ");
        r0.append(mo8518g());
        p193e.p194a.p437c.p578p.C10480a.m26061I1(new com.truecaller.log.UnmutedException.C4147f(r0.toString()));
        r0 = r6.f61560b.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0469, code lost:
        if (r0.hasNext() != false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x046c, code lost:
        r0.next().mo8504a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0481, code lost:
        r0 = r6.f61560b.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0493, code lost:
        if (r0.hasNext() != false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0496, code lost:
        r0.next().mo8504a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x04a9, code lost:
        r0 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x04bc, code lost:
        if (r6.f61561c.equalsIgnoreCase("QUOTED-PRINTABLE") == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x04bf, code lost:
        r0 = m8529e(r0);
        r0.f61582d = r0;
        r0 = ((java.util.ArrayList) p193e.p1432d.p1441d.C22162o.m8498a(r0, mo8519f())).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x04e5, code lost:
        if (r0.hasNext() == false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x04e8, code lost:
        r0.add(p193e.p1432d.p1441d.C22162o.m8493f((java.lang.String) r0.next(), false, "ISO-8859-1", r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0502, code lost:
        r0 = ((java.util.ArrayList) p193e.p1432d.p1441d.C22162o.m8498a(r0, mo8519f())).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x051a, code lost:
        if (r0.hasNext() == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x051d, code lost:
        r0.add(p193e.p1432d.p1441d.C22162o.m8495d((java.lang.String) r0.next(), "ISO-8859-1", r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0536, code lost:
        r0.f61583e = r0;
        r0 = r6.f61560b.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x054e, code lost:
        if (r0.hasNext() == false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0551, code lost:
        r0.next().mo8504a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0564, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x010f, code lost:
        r0 = r0.f61579a.toUpperCase();
        r0 = r0.f61582d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0126, code lost:
        if (r0.equals("BEGIN") == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0131, code lost:
        if (r0.equalsIgnoreCase("VCARD") == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0134, code lost:
        r0 = r6.f61560b.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0146, code lost:
        if (r0.hasNext() == false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0149, code lost:
        r0.next().mo8500e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x015b, code lost:
        m8525q();
        r0 = r6.f61560b.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0171, code lost:
        if (r0.hasNext() == false) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0174, code lost:
        r0.next().mo8503b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0195, code lost:
        throw new p193e.p1432d.p1441d.p1442p.C22166b(p193e.p1432d.p1439c.p1440a.C22128a.m8543z2("Unknown BEGIN type: ", r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x019e, code lost:
        if (r0.equals("END") == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01a9, code lost:
        if (r0.equalsIgnoreCase("VCARD") == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01ac, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01bd, code lost:
        throw new p193e.p1432d.p1441d.p1442p.C22166b(p193e.p1432d.p1439c.p1440a.C22128a.m8543z2("Unknown END type: ", r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01c6, code lost:
        if (r0.equals("AGENT") == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01c9, code lost:
        mo8517h(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01df, code lost:
        if (mo8522b().contains(r0.toUpperCase()) != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01e9, code lost:
        if (r0.startsWith("X-") != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01f7, code lost:
        if (r6.f61563e.contains(r0) != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01fa, code lost:
        r6.f61563e.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0206, code lost:
        r0 = r0.f61579a.toUpperCase();
        r0 = r0.f61582d;
        r0 = r0.f61581c.get("CHARSET");
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x022a, code lost:
        if (r0 == null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x022d, code lost:
        r14 = r0.iterator().next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0241, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0244, code lost:
        r7 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x024c, code lost:
        if (android.text.TextUtils.isEmpty(r14) == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x024f, code lost:
        r7 = com.tenor.android.core.constant.StringConstant.UTF8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x025b, code lost:
        if (r0.equals("ADR") != false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0266, code lost:
        if (r0.equals("ORG") != false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0271, code lost:
        if (r0.equals("N") == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0277, code lost:
        r0 = r6.f61561c.toUpperCase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0288, code lost:
        if (r0.equals("QUOTED-PRINTABLE") == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x028b, code lost:
        r0 = m8529e(r0);
        r0 = p193e.p1432d.p1441d.C22162o.m8493f(r0, false, "ISO-8859-1", r7);
        r0.f61582d = r0;
        r0.f61583e = java.util.Arrays.asList(r0);
        r0 = r6.f61560b.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02c4, code lost:
        if (r0.hasNext() == false) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02c7, code lost:
        r0.next().mo8504a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02e2, code lost:
        if (r0.equals("BASE64") != false) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02ed, code lost:
        if (r0.equals("B") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02fb, code lost:
        if (r0.equals("7BIT") != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0306, code lost:
        if (r0.equals("8BIT") != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0310, code lost:
        if (r0.startsWith("X-") != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0313, code lost:
        java.lang.String.format("The encoding \"%s\" is unsupported by vCard %s", r6.f61561c, mo8518g());
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m8526p() throws java.io.IOException, p193e.p1432d.p1441d.p1442p.C22166b {
        /*
            Method dump skipped, instructions count: 1512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1441d.C22154g.m8526p():boolean");
    }

    /* renamed from: q */
    public void m8525q() throws IOException, C22166b {
        boolean z;
        try {
            z = m8526p();
        } catch (c e) {
            z = false;
        }
        while (!z) {
            try {
                z = m8526p();
            } catch (c e2) {
            }
        }
    }

    /* renamed from: r */
    public boolean mo8511r(boolean z) throws IOException, C22166b {
        while (true) {
            String mo8521c = mo8521c();
            if (mo8521c == null) {
                return false;
            }
            if (mo8521c.trim().length() > 0) {
                String[] split = mo8521c.split(StringConstant.COLON, 2);
                if (split.length == 2 && split[0].trim().equalsIgnoreCase("BEGIN") && split[1].trim().equalsIgnoreCase("VCARD")) {
                    return true;
                }
                if (!z) {
                    throw new C22166b(C22128a.m8725C2("Expected String \"BEGIN:VCARD\" did not come (Instead, \"", mo8521c, "\" came)"));
                }
                if (!z) {
                    throw new C22166b("Reached where must not be reached.");
                }
            }
        }
    }
}
