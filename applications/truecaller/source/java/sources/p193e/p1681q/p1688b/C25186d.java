package p193e.p1681q.p1688b;

import com.tenor.android.core.constant.StringConstant;
import e.q.f.a.f.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1688b.p1689e.AbstractC25191b;
import p193e.p1681q.p1688b.p1689e.C25190a;
import p193e.p1681q.p1690c.p1692b.AbstractC25194a;
/* renamed from: e.q.b.d */
/* loaded from: classes16-dex2jar.jar:e/q/b/d.class */
public class C25186d {

    /* renamed from: a */
    public final C25183a f70446a;

    /* renamed from: b */
    public final C25184b f70447b;

    /* renamed from: e.q.b.d$a */
    /* loaded from: classes16-dex2jar.jar:e/q/b/d$a.class */
    public class C25187a extends HashMap<String, Set<String>> {

        /* renamed from: a */
        public final /* synthetic */ Set f70448a;

        /* renamed from: b */
        public final /* synthetic */ Set f70449b;

        /* renamed from: c */
        public final /* synthetic */ Set f70450c;

        public C25187a(C25186d c25186d, Set set, Set set2, Set set3) {
            this.f70448a = set;
            this.f70449b = set2;
            this.f70450c = set3;
            put("tags", set);
            put("banks", set2);
            put("brands", set3);
        }
    }

    /* renamed from: e.q.b.d$b */
    /* loaded from: classes16-dex2jar.jar:e/q/b/d$b.class */
    public static class C25188b {

        /* renamed from: a */
        public static C25186d f70451a;
    }

    /* renamed from: e.q.b.d$c */
    /* loaded from: classes16-dex2jar.jar:e/q/b/d$c.class */
    public static class C25189c {

        /* renamed from: a */
        public String f70452a;

        /* renamed from: b */
        public int f70453b;

        /* renamed from: c */
        public C25189c f70454c;

        /* renamed from: d */
        public C25189c f70455d;

        /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x006c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C25189c(java.lang.String r5, int r6, int r7) {
            /*
                r4 = this;
                r0 = r4
                r0.<init>()
                r0 = r4
                r1 = r5
                r0.f70452a = r1
                r0 = 10
                r8 = r0
                e.q.b.d r0 = p193e.p1681q.p1688b.C25186d.C25188b.f70451a     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L54
                r0 = r9
                r1 = r5
                java.util.Map r0 = r0.m4122a(r1)     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                r5 = r0
                r0 = r5
                java.util.HashMap r0 = (java.util.HashMap) r0
                r5 = r0
                r0 = r5
                java.lang.String r1 = "tags"
                java.lang.Object r0 = r0.get(r1)     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                java.util.Set r0 = (java.util.Set) r0     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                int r0 = r0.size()     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                if (r0 > 0) goto L4e
                r0 = r5
                java.lang.String r1 = "brands"
                java.lang.Object r0 = r0.get(r1)     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                java.util.Set r0 = (java.util.Set) r0     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                int r0 = r0.size()     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                if (r0 <= 0) goto L48
                goto L4e
            L48:
                r0 = 0
                r10 = r0
                goto L60
            L4e:
                r0 = 1
                r10 = r0
                goto L60
            L54:
                java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                r5 = r0
                r0 = r5
                java.lang.String r1 = "Vendor classifier not inited"
                r0.<init>(r1)     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
                r0 = r5
                throw r0     // Catch: p193e.p1681q.p1688b.p1689e.C25190a -> L80
            L60:
                r0 = r10
                if (r0 == 0) goto L6c
                r0 = r8
                r10 = r0
                goto L6f
            L6c:
                r0 = 0
                r10 = r0
            L6f:
                r0 = r4
                r1 = 9
                r2 = r6
                int r1 = r1 - r2
                r2 = 10
                int r1 = r1 * r2
                r2 = r7
                int r1 = r1 - r2
                r2 = r10
                int r1 = r1 + r2
                r0.f70453b = r1
                return
            L80:
                r5 = move-exception
                goto L48
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1688b.C25186d.C25189c.<init>(java.lang.String, int, int):void");
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0067 -> B:6:0x0043). Please submit an issue!!! */
    public C25186d(AbstractC25191b abstractC25191b) {
        JSONArray m4115d = abstractC25191b.m4115d();
        JSONObject m4112x = abstractC25191b.m4112x();
        JSONObject m4113u = abstractC25191b.m4113u();
        JSONObject m4114q = abstractC25191b.m4114q();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < m4115d.length(); i++) {
            try {
                arrayList.add(m4115d.getString(i));
            } catch (JSONException e) {
            }
        }
        this.f70446a = new C25183a(m4112x, m4113u, m4114q);
        this.f70447b = new C25184b(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0256  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p1681q.p1688b.C25186d.C25189c m4120c(java.lang.String r6, int r7, p193e.p1681q.p1688b.C25186d.C25189c r8, p193e.p1681q.p1690c.p1692b.AbstractC25194a r9) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1688b.C25186d.m4120c(java.lang.String, int, e.q.b.d$c, e.q.c.b.a):e.q.b.d$c");
    }

    /* renamed from: d */
    public static AbstractC25194a m4119d(AbstractC25194a abstractC25194a) {
        boolean z;
        char c;
        int i;
        boolean z2;
        String replaceAll = ((String) ((n) abstractC25194a).b.get("vendor")).trim().replaceAll(" +", StringConstant.SPACE);
        int i2 = 0;
        boolean z3 = true;
        char c2 = ' ';
        while (i2 < replaceAll.length()) {
            char charAt = replaceAll.charAt(i2);
            if (!z3) {
                if (z3) {
                    String substring = replaceAll.substring(i2);
                    int i3 = 0;
                    while (true) {
                        if (i3 >= substring.length()) {
                            i3 = substring.length() - 1;
                            break;
                        } else if (substring.charAt(i3) == ' ') {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    i = i2;
                    c = c2;
                    z2 = z3;
                    if (charAt == '.') {
                        if (i3 != 3 && i3 != 2) {
                            i = i2;
                            c = c2;
                            z2 = z3;
                            if (i3 != 5) {
                            }
                        }
                        z2 = true;
                        i = i3;
                        c = c2;
                    }
                } else if (z3) {
                    if (charAt != '/' && charAt != '*') {
                        i = i2;
                        c = c2;
                        z2 = z3;
                        if (charAt != '@') {
                        }
                        z2 = true;
                        i = i2;
                        c = c2;
                    }
                    z2 = true;
                    c = charAt;
                    i = i2;
                } else if (!z3) {
                    i = i2;
                    c = c2;
                    z2 = z3;
                } else {
                    if (charAt != '/') {
                        i = i2;
                        c = c2;
                        z2 = z3;
                        if (charAt != '*') {
                        }
                    }
                    z2 = true;
                    c = charAt;
                    i = i2;
                }
                i2 = i + 1;
                c2 = c;
                z3 = z2;
            } else {
                if (charAt != '@') {
                    if (charAt != '/' && charAt != '*') {
                        if (charAt == '-') {
                            c = charAt;
                            z2 = true;
                            i = i2;
                        } else {
                            i = i2;
                            c = c2;
                            z2 = z3;
                            if (charAt == ':') {
                                c = charAt;
                                z2 = true;
                                i = i2;
                            }
                        }
                        i2 = i + 1;
                        c2 = c;
                        z3 = z2;
                    }
                    z2 = true;
                    c = charAt;
                    i = i2;
                    i2 = i + 1;
                    c2 = c;
                    z3 = z2;
                }
                z2 = true;
                i = i2;
                c = c2;
                i2 = i + 1;
                c2 = c;
                z3 = z2;
            }
        }
        if (z3 || z3) {
            String[] split = replaceAll.split("\\" + c2);
            if (split.length <= 1 || split[0].length() <= 1) {
                z = false;
            } else {
                m4118e(split, abstractC25194a, false);
                z = true;
            }
        } else {
            if (!z3) {
                String[] split2 = replaceAll.split(StringConstant.SPACE);
                if (split2.length > 1) {
                    m4118e(split2, abstractC25194a, true);
                    z = true;
                }
            }
            z = false;
        }
        if (!z && m4117f(replaceAll, false)) {
            m4116g(replaceAll, abstractC25194a);
        }
        n nVar = (n) abstractC25194a;
        if (nVar.b.containsKey("vendor_norm")) {
            nVar.e("vendor_norm", ((String) nVar.b.get("vendor_norm")).trim().replaceAll(" +", StringConstant.SPACE));
            if (((String) nVar.b.get("vendor_norm")).equalsIgnoreCase("google")) {
                Matcher matcher = Pattern.compile("(?:GOOGLE|google|Google)[ ]*\\*(.*)").matcher((String) nVar.b.get("vendor"));
                if (matcher.find()) {
                    StringBuilder m8728C = C22128a.m8728C("Google: ");
                    m8728C.append(matcher.group(1));
                    nVar.e("vendor_norm", m8728C.toString());
                }
            }
            String str = (String) nVar.b.get("vendor_norm");
            if (str.length() > 0 && ((str.charAt(str.length() - 1) == ']' && !str.contains("[")) || ((str.charAt(str.length() - 1) == ')' && !str.contains("(")) || str.charAt(str.length() - 1) == '.'))) {
                nVar.e("vendor_norm", str.substring(0, str.length() - 1));
            }
        }
        nVar.e("vendor", ((String) nVar.b.get("vendor")).trim().replaceAll(" +", StringConstant.SPACE));
        if (!nVar.b.containsKey("vendor_norm")) {
            String str2 = (String) nVar.b.get("vendor");
            if (str2.length() > 0 && ((str2.charAt(str2.length() - 1) == ']' && !str2.contains("[")) || ((str2.charAt(str2.length() - 1) == ')' && !str2.contains("(")) || str2.charAt(str2.length() - 1) == '.'))) {
                nVar.e("vendor", str2.substring(0, str2.length() - 1));
            }
        }
        return abstractC25194a;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4118e(java.lang.String[] r6, p193e.p1681q.p1690c.p1692b.AbstractC25194a r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1688b.C25186d.m4118e(java.lang.String[], e.q.c.b.a, boolean):void");
    }

    /* renamed from: f */
    public static boolean m4117f(String str, boolean z) {
        str.hashCode();
        boolean z2 = true;
        switch (str.hashCode()) {
            case -1881484424:
                if (str.equals("REFUND")) {
                    z2 = false;
                    break;
                }
                break;
            case 2453:
                if (str.equals("MB")) {
                    z2 = true;
                    break;
                }
                break;
            case 65146:
                if (str.equals("ATM")) {
                    z2 = true;
                    break;
                }
                break;
            case 65765:
                if (str.equals("BIL")) {
                    z2 = true;
                    break;
                }
                break;
            case 66046:
                if (str.equals("BRN")) {
                    z2 = true;
                    break;
                }
                break;
            case 68469:
                if (str.equals("ECS")) {
                    z2 = true;
                    break;
                }
                break;
            case 72637:
                if (str.equals("INB")) {
                    z2 = true;
                    break;
                }
                break;
            case 72641:
                if (str.equals("INF")) {
                    z2 = true;
                    break;
                }
                break;
            case 76096:
                if (str.equals("MAT")) {
                    z2 = true;
                    break;
                }
                break;
            case 76468:
                if (str.equals("MMT")) {
                    z2 = true;
                    break;
                }
                break;
            case 76512:
                if (str.equals("MOB")) {
                    z2 = true;
                    break;
                }
                break;
            case 77211:
                if (str.equals("NFS")) {
                    z2 = true;
                    break;
                }
                break;
            case 84745:
                if (str.equals("VAT")) {
                    z2 = true;
                    break;
                }
                break;
            case 2061107:
                if (str.equals("CASH")) {
                    z2 = true;
                    break;
                }
                break;
            case 2251303:
                if (str.equals("IMPS")) {
                    z2 = true;
                    break;
                }
                break;
            case 2388312:
                if (str.equals("NACH")) {
                    z2 = true;
                    break;
                }
                break;
            case 2392261:
                if (str.equals("NEFT")) {
                    z2 = true;
                    break;
                }
                break;
            case 62607637:
                if (str.equals("ATMID")) {
                    z2 = true;
                    break;
                }
                break;
            case 806512005:
                if (str.equals("CASH-WDL")) {
                    z2 = true;
                    break;
                }
                break;
        }
        switch (z2) {
            case false:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
                return true;
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
                return !z;
            default:
                return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0314, code lost:
        if (((java.util.Set) r0.get("tags")).contains("payments") != false) goto L81;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m4116g(java.lang.String r4, p193e.p1681q.p1690c.p1692b.AbstractC25194a r5) {
        /*
            Method dump skipped, instructions count: 1211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1688b.C25186d.m4116g(java.lang.String, e.q.c.b.a):boolean");
    }

    /* renamed from: a */
    public Map<String, Set<String>> m4122a(String str) throws C25190a {
        C25184b c25184b = this.f70447b;
        String lowerCase = str.toLowerCase();
        Objects.requireNonNull(c25184b);
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        C25185c c25185c = c25184b.f70441a;
        ArrayList arrayList2 = new ArrayList();
        boolean z = false;
        for (int i = 0; i < lowerCase.length(); i++) {
            char charAt = lowerCase.charAt(i);
            ArrayList arrayList3 = (ArrayList) c25184b.m4124a(c25185c);
            if (arrayList3.size() == 0 && c25185c.f70444c) {
                if (sb.length() > 0) {
                    arrayList2.add(sb.toString());
                }
                sb = new StringBuilder();
                C25185c c25185c2 = c25184b.f70441a;
                StringBuilder sb3 = new StringBuilder();
                if (((ArrayList) c25184b.m4124a(c25185c2)).contains(Character.valueOf(charAt))) {
                    sb3 = new StringBuilder(String.valueOf(charAt));
                    c25185c2 = c25184b.m4123b(c25185c2, Character.valueOf(charAt));
                } else {
                    sb.append(charAt);
                    z = false;
                }
                C25185c c25185c3 = c25185c2;
                sb2 = sb3;
                c25185c = c25185c3;
            } else if (arrayList3.contains(Character.valueOf(charAt))) {
                c25185c = c25184b.m4123b(c25185c, Character.valueOf(charAt));
                sb2.append(charAt);
                z = true;
            } else if (z) {
                if (c25185c.f70444c) {
                    if (sb.length() > 0) {
                        arrayList2.add(sb.toString());
                    }
                    sb = new StringBuilder();
                } else {
                    sb.append((CharSequence) sb2);
                }
                sb2 = new StringBuilder();
                c25185c = c25184b.f70441a;
                if (((ArrayList) c25184b.m4124a(c25185c)).contains(Character.valueOf(charAt))) {
                    sb2 = new StringBuilder(String.valueOf(charAt));
                    c25185c = c25184b.m4123b(c25185c, Character.valueOf(charAt));
                } else {
                    sb.append(charAt);
                }
            } else {
                sb.append(charAt);
            }
        }
        if (sb.length() > 0) {
            if (c25185c.f70444c) {
                arrayList2.add(sb.toString());
            } else {
                arrayList2.add(sb.toString() + sb2.toString());
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList.addAll(Arrays.asList(((String) it.next()).split(StringConstant.SPACE)));
        }
        Set<String> m4121b = m4121b(arrayList, this.f70446a.f70437a);
        Set<String> m4121b2 = m4121b(arrayList, this.f70446a.f70438b);
        Set<String> m4121b3 = m4121b(arrayList, this.f70446a.f70439c);
        HashSet hashSet = new HashSet();
        Iterator it2 = ((HashSet) m4121b3).iterator();
        Map<String, List<String>> map = this.f70446a.f70440d;
        while (it2.hasNext()) {
            hashSet.addAll(map.get((String) it2.next()));
        }
        m4121b.addAll(hashSet);
        return new C25187a(this, m4121b, m4121b2, m4121b3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x03b4, code lost:
        r0.addAll(r11.get(r17));
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x03d0, code lost:
        if (r18 <= 0.9d) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x03d3, code lost:
        r0.addAll(r11.get(r17));
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x03e6, code lost:
        r0.addAll(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02d3, code lost:
        if (r0.length() > 4) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02d6, code lost:
        r0 = r17.toCharArray();
        r0 = r0.toCharArray();
        r0 = r0.length;
        r0 = r0.length;
        r0 = new int[r0 + 1][r0 + 1];
        r29 = 0;
        r27 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0304, code lost:
        if (r27 > r0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0307, code lost:
        r21 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x030e, code lost:
        if (r21 > r0) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0313, code lost:
        if (r27 == 0) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0318, code lost:
        if (r21 != 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x031e, code lost:
        r0 = r27 - 1;
        r0 = r0[r0];
        r0 = r21 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0337, code lost:
        if (r0 != r0[r0]) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x033a, code lost:
        r0[r27][r21] = r0[r0][r0] + 1;
        r29 = java.lang.Math.max(r29, r0[r27][r21]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x035e, code lost:
        r0[r27][r21] = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x036a, code lost:
        r0[r27][r21] = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0373, code lost:
        r21 = r21 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0379, code lost:
        r27 = r27 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0385, code lost:
        if (r17.length() <= 4) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0388, code lost:
        r27 = r17.length() - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0394, code lost:
        r27 = r17.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x039b, code lost:
        r0 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x03aa, code lost:
        if (r0 < r27) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x03b1, code lost:
        if (com.google.android.libraries.places.api.model.PlaceLikelihood.LIKELIHOOD_MIN_VALUE >= r0) goto L112;
     */
    /* JADX WARN: Type inference failed for: r0v132, types: [double] */
    /* JADX WARN: Type inference failed for: r0v151, types: [double] */
    /* JADX WARN: Type inference failed for: r0v157, types: [double] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Set<java.lang.String> m4121b(java.util.List<java.lang.String> r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
            Method dump skipped, instructions count: 1012
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1688b.C25186d.m4121b(java.util.List, java.util.Map):java.util.Set");
    }
}
