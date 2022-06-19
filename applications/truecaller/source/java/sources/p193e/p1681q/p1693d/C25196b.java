package p193e.p1681q.p1693d;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1693d.p1695d.C25202b;
import p193e.p1681q.p1693d.p1696e.C25204b;
import p193e.p1681q.p1693d.p1696e.C25206d;
import p193e.p1681q.p1693d.p1697f.C25208b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.d;
import s1.f0.e;
import s1.f0.g;
import s1.f0.h;
import s1.f0.r;
import s1.f0.v;
import s1.p;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.q.d.b */
/* loaded from: classes16-dex2jar.jar:e/q/d/b.class */
public final class C25196b {

    /* renamed from: a */
    public static final C25196b f70457a = new C25196b();

    /* renamed from: e.q.d.b$a */
    /* loaded from: classes16-dex2jar.jar:e/q/d/b$a.class */
    public static final class C25197a {

        /* renamed from: a */
        public final List<Character> f70458a = new ArrayList();

        /* renamed from: a */
        public final char m4099a() {
            return this.f70458a.isEmpty() ^ true ? ((Character) C22128a.m8714F1(this.f70458a, -1)).charValue() : '~';
        }

        /* renamed from: b */
        public final void m4098b(char c) {
            this.f70458a.add(Character.valueOf(c));
        }
    }

    /* renamed from: e.q.d.b$b */
    /* loaded from: classes16-dex2jar.jar:e/q/d/b$b.class */
    public static final class C25198b {

        /* renamed from: a */
        public static C25206d f70459a;

        /* renamed from: b */
        public static final C25198b f70460b = null;

        static {
            C25196b c25196b = C25196b.f70457a;
            C25206d c25206d = new C25206d();
            C22128a.m8660V0(c25206d.f70480a, "FSA_MONTHS");
            C22128a.m8660V0(c25206d.f70480a, "FSA_DAYS");
            C22128a.m8660V0(c25206d.f70480a, "FSA_TIMEPRFX");
            C22128a.m8660V0(c25206d.f70480a, "FSA_AMT");
            C22128a.m8660V0(c25206d.f70480a, "FSA_TIMES");
            C22128a.m8660V0(c25206d.f70480a, "FSA_TZ");
            C22128a.m8660V0(c25206d.f70480a, "FSA_DAYSFFX");
            C22128a.m8660V0(c25206d.f70480a, "FSA_UPI");
            c25196b.m4104g("jan;uary,feb;ruary,mar;ch,apr;il,may,jun;e,jul;y,aug;ust,sep;t;ember,oct;ober,nov;ember,dec;ember", c25206d.f70480a.get("FSA_MONTHS"));
            c25196b.m4104g("sun;day,mon;day,tue;sday,wed;nesday,thu;rsday,thur;sday,fri;day,sat;urday", c25206d.f70480a.get("FSA_DAYS"));
            c25196b.m4104g("at,on,before,by", c25206d.f70480a.get("FSA_TIMEPRFX"));
            c25196b.m4104g("lac,lakh,k", c25206d.f70480a.get("FSA_AMT"));
            c25196b.m4104g("hours,hrs,hr,mins,minutes", c25206d.f70480a.get("FSA_TIMES"));
            c25196b.m4104g("gmt,ist", c25206d.f70480a.get("FSA_TZ"));
            c25196b.m4104g("st,nd,rd,th", c25206d.f70480a.get("FSA_DAYSFFX"));
            c25196b.m4104g("UPI,MMT,NEFT", c25206d.f70480a.get("FSA_UPI"));
            f70459a = c25206d;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0150, code lost:
        r6 = "00000";
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m4110a(java.lang.String r6, int r7, p193e.p1681q.p1693d.p1697f.C25207a r8, java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1693d.C25196b.m4110a(java.lang.String, int, e.q.d.f.a, java.util.Map):int");
    }

    /* renamed from: b */
    public final C25204b<Integer, String> m4109b(String str, int i) {
        C25198b c25198b = C25198b.f70460b;
        C25206d c25206d = C25198b.f70459a;
        String substring = str.substring(i);
        l.b(substring, "(this as java.lang.String).substring(startIndex)");
        return C25208b.m4076a(c25206d, "FSA_MONTHS", substring);
    }

    /* renamed from: c */
    public final void m4108c(String str, Map<String, String> map, String... strArr) {
        String str2;
        String m8618h = (strArr.length == 0) ^ true ? C22128a.m8618h(new StringBuilder(), strArr[0], AnalyticsConstants.DELIMITER_MAIN) : "";
        g a = new h("([0-9]{2})([0-9]{2})?([0-9]{2})?").a(str, 0);
        if (a != null) {
            g gVar = a;
            e eVar = gVar.a;
            String m8543z2 = C22128a.m8543z2(m8618h, "time");
            StringBuilder sb = new StringBuilder();
            d dVar = eVar.get(1);
            sb.append(String.valueOf(dVar != null ? dVar.a : null));
            if (gVar.a.size() <= 1 || eVar.get(2) == null) {
                str2 = ":00";
            } else {
                StringBuilder m8728C = C22128a.m8728C(StringConstant.COLON);
                d dVar2 = eVar.get(2);
                String str3 = null;
                if (dVar2 != null) {
                    str3 = dVar2.a;
                }
                m8728C.append(String.valueOf(str3));
                str2 = m8728C.toString();
            }
            sb.append(str2);
            map.put(m8543z2, sb.toString());
        }
    }

    /* renamed from: d */
    public final C25206d m4107d() {
        C25198b c25198b = C25198b.f70460b;
        return C25198b.f70459a;
    }

    /* renamed from: e */
    public final int m4106e(String str, int i) {
        int length = str.length();
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt != '.') {
                int i2 = i;
                if (charAt != '*') {
                    i2 = i;
                    if (charAt != 'X') {
                        i2 = i;
                        if (charAt != 'x') {
                            i2 = '0' <= charAt && '9' >= charAt ? i : -1;
                        }
                    }
                }
                return i2;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0360, code lost:
        if (r0.charAt(r19) == ' ') goto L483;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1179:0x206c, code lost:
        if (((java.lang.String[]) r0)[0].length() <= 8) goto L1186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1197:0x20c3, code lost:
        if (r0.length() > 8) goto L1210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1245:0x21bd, code lost:
        if (r0.charAt(0) == '7') goto L1250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1314:0x23e3, code lost:
        if (p193e.p1681q.p1693d.p1697f.C25208b.m4076a(r0, "FSA_DAYS", r0) != null) goto L1315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1326:0x24a3, code lost:
        if (s1.f0.r.y(r0, "am", false, 2) != false) goto L1327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x01a0, code lost:
        if (('0' <= r0 && '9' >= r0) != false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x098b, code lost:
        if ((r0 == ' ' || r0 == '.' || r0 == ',' || r0 == ')') != false) goto L359;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x09b3, code lost:
        if (r0.m4099a() == ' ') goto L674;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0b68, code lost:
        if (('0' <= r0 && '9' >= r0) != false) goto L578;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x0b72, code lost:
        if (r0 == '|') goto L578;
     */
    /* JADX WARN: Code restructure failed: missing block: B:589:0x0fc3, code lost:
        if (s1.z.c.l.a(r0.m4094b(), "minutes") != false) goto L590;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0216, code lost:
        if (r0 == '.') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:673:0x11d0, code lost:
        if (('0' <= r0 && '9' >= r0) != false) goto L674;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0262, code lost:
        if (('0' <= r0 && '9' >= r0) != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:771:0x1474, code lost:
        if (r20 == false) goto L849;
     */
    /* JADX WARN: Code restructure failed: missing block: B:804:0x1562, code lost:
        if (r0.charAt(r0) == ',') goto L1020;
     */
    /* JADX WARN: Code restructure failed: missing block: B:839:0x161f, code lost:
        if (('0' <= r0 && '9' >= r0) != false) goto L840;
     */
    /* JADX WARN: Code restructure failed: missing block: B:848:0x165e, code lost:
        if (r20 == false) goto L849;
     */
    /* JADX WARN: Code restructure failed: missing block: B:849:0x1661, code lost:
        r19 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:909:0x17ff, code lost:
        if (('0' <= r0 && '9' >= r0) != false) goto L910;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02fb, code lost:
        if (('0' <= r0 && '9' >= r0) != false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:991:0x1a3a, code lost:
        if (r0.charAt(r19) == 'm') goto L960;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02fe, code lost:
        r19 = 39;
        r20 = r16;
        r21 = r17;
     */
    /* JADX WARN: Removed duplicated region for block: B:1145:0x1f92 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:1178:0x2061  */
    /* JADX WARN: Removed duplicated region for block: B:1180:0x2072  */
    /* JADX WARN: Removed duplicated region for block: B:736:0x1385  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p1681q.p1693d.p1696e.C25204b<java.lang.Integer, p193e.p1681q.p1693d.p1697f.C25207a> m4105f(java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10) {
        /*
            Method dump skipped, instructions count: 9664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1693d.C25196b.m4105f(java.lang.String, java.util.Map):e.q.d.e.b");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x011d, code lost:
        r12 = r12 + 1;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4104g(java.lang.String r8, p193e.p1681q.p1693d.p1696e.C25203a r9) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1693d.C25196b.m4104g(java.lang.String, e.q.d.e.a):void");
    }

    /* renamed from: h */
    public final int m4103h(String str) {
        int i = 0;
        while (i < str.length() && (str.charAt(i) == ' ' || str.charAt(i) == ',' || str.charAt(i) == '(' || str.charAt(i) == ':')) {
            i++;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x029b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00dc  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m4102i(java.lang.String r6, p193e.p1681q.p1693d.p1697f.C25207a r7) {
        /*
            Method dump skipped, instructions count: 940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1693d.C25196b.m4102i(java.lang.String, e.q.d.f.a):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:350:0x0c7a, code lost:
        if (r0 == '\'') goto L386;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03ee A[Catch: Exception -> 0x0dc3, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x0dc3, blocks: (B:86:0x036c, B:88:0x038d, B:90:0x039f, B:92:0x03a7, B:99:0x03c5, B:101:0x03dc, B:103:0x03ee, B:104:0x0407, B:105:0x0416, B:108:0x0420, B:110:0x043a, B:112:0x0451, B:116:0x0466, B:120:0x0486, B:121:0x0495, B:123:0x04ac, B:127:0x04c1, B:132:0x04dc, B:136:0x04ee, B:138:0x04fb, B:140:0x0516, B:142:0x0537, B:144:0x0549, B:146:0x0551, B:153:0x056f, B:155:0x0586, B:157:0x0598, B:159:0x05a5, B:160:0x05b9, B:161:0x05c8, B:163:0x05cc, B:165:0x05dc, B:167:0x05f3, B:171:0x0608, B:175:0x061b, B:179:0x0632, B:181:0x063f, B:183:0x065a, B:185:0x067b, B:187:0x068d, B:189:0x0695, B:196:0x06b3, B:198:0x06ca, B:200:0x06dc, B:202:0x0706, B:204:0x0718, B:206:0x0720, B:213:0x073e, B:214:0x0751, B:216:0x0763, B:217:0x077c, B:218:0x078a, B:219:0x078b, B:219:0x078b, B:220:0x078e, B:221:0x0799, B:223:0x079d, B:225:0x07a9, B:227:0x07b5, B:229:0x07cb, B:233:0x07de, B:235:0x07e8, B:239:0x07f5, B:243:0x0805, B:250:0x082f, B:255:0x085f, B:257:0x08c6, B:258:0x08d8, B:260:0x08e9, B:262:0x0946), top: B:426:0x036c }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0598 A[Catch: Exception -> 0x0dc3, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x0dc3, blocks: (B:86:0x036c, B:88:0x038d, B:90:0x039f, B:92:0x03a7, B:99:0x03c5, B:101:0x03dc, B:103:0x03ee, B:104:0x0407, B:105:0x0416, B:108:0x0420, B:110:0x043a, B:112:0x0451, B:116:0x0466, B:120:0x0486, B:121:0x0495, B:123:0x04ac, B:127:0x04c1, B:132:0x04dc, B:136:0x04ee, B:138:0x04fb, B:140:0x0516, B:142:0x0537, B:144:0x0549, B:146:0x0551, B:153:0x056f, B:155:0x0586, B:157:0x0598, B:159:0x05a5, B:160:0x05b9, B:161:0x05c8, B:163:0x05cc, B:165:0x05dc, B:167:0x05f3, B:171:0x0608, B:175:0x061b, B:179:0x0632, B:181:0x063f, B:183:0x065a, B:185:0x067b, B:187:0x068d, B:189:0x0695, B:196:0x06b3, B:198:0x06ca, B:200:0x06dc, B:202:0x0706, B:204:0x0718, B:206:0x0720, B:213:0x073e, B:214:0x0751, B:216:0x0763, B:217:0x077c, B:218:0x078a, B:219:0x078b, B:219:0x078b, B:220:0x078e, B:221:0x0799, B:223:0x079d, B:225:0x07a9, B:227:0x07b5, B:229:0x07cb, B:233:0x07de, B:235:0x07e8, B:239:0x07f5, B:243:0x0805, B:250:0x082f, B:255:0x085f, B:257:0x08c6, B:258:0x08d8, B:260:0x08e9, B:262:0x0946), top: B:426:0x036c }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05dc A[Catch: Exception -> 0x0dc3, TRY_LEAVE, TryCatch #3 {Exception -> 0x0dc3, blocks: (B:86:0x036c, B:88:0x038d, B:90:0x039f, B:92:0x03a7, B:99:0x03c5, B:101:0x03dc, B:103:0x03ee, B:104:0x0407, B:105:0x0416, B:108:0x0420, B:110:0x043a, B:112:0x0451, B:116:0x0466, B:120:0x0486, B:121:0x0495, B:123:0x04ac, B:127:0x04c1, B:132:0x04dc, B:136:0x04ee, B:138:0x04fb, B:140:0x0516, B:142:0x0537, B:144:0x0549, B:146:0x0551, B:153:0x056f, B:155:0x0586, B:157:0x0598, B:159:0x05a5, B:160:0x05b9, B:161:0x05c8, B:163:0x05cc, B:165:0x05dc, B:167:0x05f3, B:171:0x0608, B:175:0x061b, B:179:0x0632, B:181:0x063f, B:183:0x065a, B:185:0x067b, B:187:0x068d, B:189:0x0695, B:196:0x06b3, B:198:0x06ca, B:200:0x06dc, B:202:0x0706, B:204:0x0718, B:206:0x0720, B:213:0x073e, B:214:0x0751, B:216:0x0763, B:217:0x077c, B:218:0x078a, B:219:0x078b, B:219:0x078b, B:220:0x078e, B:221:0x0799, B:223:0x079d, B:225:0x07a9, B:227:0x07b5, B:229:0x07cb, B:233:0x07de, B:235:0x07e8, B:239:0x07f5, B:243:0x0805, B:250:0x082f, B:255:0x085f, B:257:0x08c6, B:258:0x08d8, B:260:0x08e9, B:262:0x0946), top: B:426:0x036c }] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x06dc A[Catch: Exception -> 0x0dc3, TRY_ENTER, TryCatch #3 {Exception -> 0x0dc3, blocks: (B:86:0x036c, B:88:0x038d, B:90:0x039f, B:92:0x03a7, B:99:0x03c5, B:101:0x03dc, B:103:0x03ee, B:104:0x0407, B:105:0x0416, B:108:0x0420, B:110:0x043a, B:112:0x0451, B:116:0x0466, B:120:0x0486, B:121:0x0495, B:123:0x04ac, B:127:0x04c1, B:132:0x04dc, B:136:0x04ee, B:138:0x04fb, B:140:0x0516, B:142:0x0537, B:144:0x0549, B:146:0x0551, B:153:0x056f, B:155:0x0586, B:157:0x0598, B:159:0x05a5, B:160:0x05b9, B:161:0x05c8, B:163:0x05cc, B:165:0x05dc, B:167:0x05f3, B:171:0x0608, B:175:0x061b, B:179:0x0632, B:181:0x063f, B:183:0x065a, B:185:0x067b, B:187:0x068d, B:189:0x0695, B:196:0x06b3, B:198:0x06ca, B:200:0x06dc, B:202:0x0706, B:204:0x0718, B:206:0x0720, B:213:0x073e, B:214:0x0751, B:216:0x0763, B:217:0x077c, B:218:0x078a, B:219:0x078b, B:219:0x078b, B:220:0x078e, B:221:0x0799, B:223:0x079d, B:225:0x07a9, B:227:0x07b5, B:229:0x07cb, B:233:0x07de, B:235:0x07e8, B:239:0x07f5, B:243:0x0805, B:250:0x082f, B:255:0x085f, B:257:0x08c6, B:258:0x08d8, B:260:0x08e9, B:262:0x0946), top: B:426:0x036c }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x07ee  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0946 A[Catch: Exception -> 0x0dc3, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x0dc3, blocks: (B:86:0x036c, B:88:0x038d, B:90:0x039f, B:92:0x03a7, B:99:0x03c5, B:101:0x03dc, B:103:0x03ee, B:104:0x0407, B:105:0x0416, B:108:0x0420, B:110:0x043a, B:112:0x0451, B:116:0x0466, B:120:0x0486, B:121:0x0495, B:123:0x04ac, B:127:0x04c1, B:132:0x04dc, B:136:0x04ee, B:138:0x04fb, B:140:0x0516, B:142:0x0537, B:144:0x0549, B:146:0x0551, B:153:0x056f, B:155:0x0586, B:157:0x0598, B:159:0x05a5, B:160:0x05b9, B:161:0x05c8, B:163:0x05cc, B:165:0x05dc, B:167:0x05f3, B:171:0x0608, B:175:0x061b, B:179:0x0632, B:181:0x063f, B:183:0x065a, B:185:0x067b, B:187:0x068d, B:189:0x0695, B:196:0x06b3, B:198:0x06ca, B:200:0x06dc, B:202:0x0706, B:204:0x0718, B:206:0x0720, B:213:0x073e, B:214:0x0751, B:216:0x0763, B:217:0x077c, B:218:0x078a, B:219:0x078b, B:219:0x078b, B:220:0x078e, B:221:0x0799, B:223:0x079d, B:225:0x07a9, B:227:0x07b5, B:229:0x07cb, B:233:0x07de, B:235:0x07e8, B:239:0x07f5, B:243:0x0805, B:250:0x082f, B:255:0x085f, B:257:0x08c6, B:258:0x08d8, B:260:0x08e9, B:262:0x0946), top: B:426:0x036c }] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x098c  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x09c6  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0b44  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x05b9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x078b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0bc8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0407 A[SYNTHETIC] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m4101j(java.util.List<java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 3535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1693d.C25196b.m4101j(java.util.List):java.util.List");
    }

    /* renamed from: k */
    public final String m4100k(String str) {
        String str2;
        l.f(str, "message");
        List<String> f = C25195a.f70456a.f(C25202b.f70468a.e(str, " EMAILADDR "), 0);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(f, 10));
        for (String str3 : f) {
            if (str3 == null) {
                throw new p("null cannot be cast to non-null type kotlin.CharSequence");
            }
            arrayList.add(v.g0(str3).toString());
        }
        try {
            List<String> m4101j = m4101j(arrayList);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : m4101j) {
                if (true ^ r.p((String) obj)) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            int i = 0;
            for (Object obj2 : arrayList2) {
                if (i < 0) {
                    i.N0();
                    throw null;
                }
                if (((String) obj2).length() > 0 ? i > 0 ? !l.a((String) arrayList2.get(i - 1), str2) : true : false) {
                    arrayList3.add(obj2);
                }
                i++;
            }
            arrayList = arrayList3;
        } catch (Exception e) {
        }
        return i.O(arrayList, StringConstant.SPACE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
    }
}
