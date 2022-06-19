package p193e.p1681q.p1715g.p1717d;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: e.q.g.d.b */
/* loaded from: classes16-dex2jar.jar:e/q/g/d/b.class */
public class C25272b {

    /* renamed from: c */
    public String f70703c;

    /* renamed from: a */
    public final Map<String, String> f70701a = new HashMap();

    /* renamed from: b */
    public final Map<String, String> f70702b = new HashMap();

    /* renamed from: d */
    public List<String> f70704d = new ArrayList();

    /* renamed from: a */
    public final boolean m3743a(String str) {
        return str.equals("d") || str.equals("MM") || str.equals("MMM") || str.equals("yy") || str.equals("yyyy") || str.equals("HH") || str.equals("mm") || str.equals("ss");
    }

    /* renamed from: b */
    public void m3742b(char c) {
        String str = this.f70701a.get(this.f70703c);
        String str2 = this.f70703c;
        m3731m(str2, str + c);
    }

    /* renamed from: c */
    public void m3741c(String str) {
        String str2 = this.f70701a.get(this.f70703c);
        String str3 = this.f70703c;
        m3731m(str3, str2 + str);
    }

    /* renamed from: d */
    public boolean m3740d(String str) {
        return this.f70701a.containsKey(str);
    }

    /* renamed from: e */
    public void m3739e(String str, String str2) {
        if (this.f70701a.containsKey(str)) {
            if (!this.f70701a.containsKey(str2)) {
                m3731m(str2, this.f70701a.remove(str));
            } else {
                m3731m(str2, this.f70701a.get(str2) + this.f70701a.remove(str));
            }
            this.f70703c = str2;
        }
    }

    /* renamed from: f */
    public String m3738f(String str) {
        return this.f70701a.get(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x03c1 A[Catch: Exception -> 0x03dc, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x03dc, blocks: (B:3:0x001d, B:5:0x0036, B:7:0x0044, B:9:0x0065, B:20:0x00ba, B:24:0x00ca, B:28:0x00da, B:32:0x00ea, B:36:0x00fa, B:55:0x014b, B:57:0x0156, B:58:0x0180, B:60:0x0197, B:64:0x01bc, B:66:0x01c7, B:71:0x01eb, B:74:0x01f8, B:76:0x0203, B:77:0x022d, B:79:0x023b, B:83:0x025d, B:86:0x026a, B:88:0x0275, B:89:0x02a6, B:91:0x02b4, B:95:0x02d6, B:97:0x02e0, B:99:0x02e6, B:101:0x02ef, B:107:0x030a, B:112:0x0335, B:114:0x038c, B:116:0x0399, B:117:0x03a0, B:118:0x03af, B:121:0x03c1), top: B:125:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x013d A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02e6 A[Catch: Exception -> 0x03dc, TryCatch #0 {Exception -> 0x03dc, blocks: (B:3:0x001d, B:5:0x0036, B:7:0x0044, B:9:0x0065, B:20:0x00ba, B:24:0x00ca, B:28:0x00da, B:32:0x00ea, B:36:0x00fa, B:55:0x014b, B:57:0x0156, B:58:0x0180, B:60:0x0197, B:64:0x01bc, B:66:0x01c7, B:71:0x01eb, B:74:0x01f8, B:76:0x0203, B:77:0x022d, B:79:0x023b, B:83:0x025d, B:86:0x026a, B:88:0x0275, B:89:0x02a6, B:91:0x02b4, B:95:0x02d6, B:97:0x02e0, B:99:0x02e6, B:101:0x02ef, B:107:0x030a, B:112:0x0335, B:114:0x038c, B:116:0x0399, B:117:0x03a0, B:118:0x03af, B:121:0x03c1), top: B:125:0x001d }] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Date m3737g(java.util.Map<java.lang.String, java.lang.String> r5) {
        /*
            Method dump skipped, instructions count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1715g.p1717d.C25272b.m3737g(java.util.Map):java.util.Date");
    }

    /* renamed from: h */
    public int m3736h() {
        return Integer.parseInt(this.f70701a.get("INDEX"));
    }

    /* renamed from: i */
    public String m3735i() {
        return this.f70701a.get("TYP");
    }

    /* renamed from: j */
    public Map<String, String> m3734j() {
        return this.f70702b;
    }

    /* renamed from: k */
    public char m3733k() {
        String str = this.f70701a.get(this.f70703c);
        char charAt = str.charAt(str.length() - 1);
        m3731m(this.f70703c, str.substring(0, str.length() - 1));
        return charAt;
    }

    /* renamed from: l */
    public void m3732l(String str, char c) {
        if (!this.f70704d.contains(str)) {
            this.f70704d.add(str);
        }
        this.f70701a.put(str, Character.toString(c));
        this.f70703c = str;
    }

    /* renamed from: m */
    public void m3731m(String str, String str2) {
        if (!this.f70704d.contains(str)) {
            this.f70704d.add(str);
        }
        this.f70701a.put(str, str2);
        this.f70703c = str;
    }

    /* renamed from: n */
    public void m3730n(C25272b c25272b) {
        this.f70701a.putAll(c25272b.f70701a);
    }

    /* renamed from: o */
    public void m3729o(String str) {
        this.f70701a.remove(str);
    }

    /* renamed from: p */
    public void m3728p(String str) {
        this.f70701a.put("TYP", str);
    }

    /* renamed from: q */
    public void m3727q(String str, String str2) {
        this.f70701a.put("TYP", str);
        if (str2 != null) {
            StringBuilder sb = new StringBuilder();
            for (String str3 : this.f70704d) {
                sb.append(this.f70701a.remove(str3));
            }
            this.f70704d = new ArrayList();
            m3731m(str2, sb.toString());
        }
    }

    /* renamed from: r */
    public void m3726r(String str, String str2) {
        this.f70702b.put(str, str2);
    }

    /* renamed from: s */
    public void m3725s(char c) {
        String str = this.f70703c;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 100:
                if (str.equals("d")) {
                    z = false;
                    break;
                }
                break;
            case 2304:
                if (str.equals("HH")) {
                    z = true;
                    break;
                }
                break;
            case 2464:
                if (str.equals("MM")) {
                    z = true;
                    break;
                }
                break;
            case 3488:
                if (str.equals("mm")) {
                    z = true;
                    break;
                }
                break;
            case 3872:
                if (str.equals("yy")) {
                    z = true;
                    break;
                }
                break;
            case 76461:
                if (str.equals("MMM")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                m3732l("MM", c);
                this.f70703c = "MM";
                return;
            case true:
                m3732l("mm", c);
                this.f70703c = "mm";
                return;
            case true:
            case true:
                m3732l("yy", c);
                this.f70703c = "yy";
                return;
            case true:
                m3732l("ss", c);
                this.f70703c = "ss";
                return;
            case true:
                m3731m("yyyy", this.f70701a.remove("yy") + c);
                this.f70703c = "yyyy";
                return;
            default:
                return;
        }
    }
}
