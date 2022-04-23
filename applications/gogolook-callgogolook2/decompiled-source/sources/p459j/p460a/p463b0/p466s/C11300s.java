package p459j.p460a.p463b0.p466s;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* renamed from: j.a.b0.s.s */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/s.class */
public class C11300s {

    /* renamed from: a */
    public static boolean f25369a = false;

    /* renamed from: b */
    public static Set<String> f25370b;

    /* renamed from: c */
    public static final AbstractC11316u f25371c = new C11242d();

    /* renamed from: j.a.b0.s.s$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/s$a.class */
    public static class C11301a {

        /* renamed from: a */
        public final int f25372a;

        /* renamed from: b */
        public final int f25373b;

        public C11301a(String str, int i, int i2) {
            this.f25372a = i;
            this.f25373b = i2;
        }
    }

    /* renamed from: a */
    public static AbstractC11316u m9856a() {
        return f25371c;
    }

    /* renamed from: a */
    public static HashSet<String> m9855a(String str) {
        HashSet<String> hashSet = new HashSet<>();
        ArrayList<String> d = m9851d(str);
        if (d.size() > 0) {
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            for (int size = d.size() - 1; size >= 0; size--) {
                sb.insert(0, d.get(size));
                sb2.insert(0, d.get(size).charAt(0));
                hashSet.add(sb.toString());
                hashSet.add(sb2.toString());
            }
            return hashSet;
        }
        if (d.size() > 0) {
            StringBuilder sb3 = new StringBuilder();
            for (int size2 = d.size() - 1; size2 >= 0; size2--) {
                sb3.insert(0, d.get(size2));
                hashSet.add(sb3.toString());
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(d.get(d.size() - 1));
            int size3 = hashSet.size();
            for (int size4 = d.size() - 2; size4 >= 0; size4--) {
                if (size4 < d.size() - 2) {
                    size3 = size3;
                    if (size4 >= 2) {
                    }
                }
                String substring = d.get(size4).substring(0, 1);
                for (int i = 0; i < arrayList.size(); i++) {
                    hashSet.add(substring + ((String) arrayList.get(i)));
                }
                for (int size5 = hashSet.size(); size5 < size3; size5++) {
                }
                size3 = hashSet.size();
                arrayList.add(d.get(size4) + ((String) arrayList.get(arrayList.size() - 1)));
            }
        }
        return hashSet;
    }

    /* renamed from: b */
    public static Set<String> m9854b() {
        HashSet hashSet = new HashSet();
        hashSet.add("1");
        hashSet.add("7");
        hashSet.add("20");
        hashSet.add("27");
        hashSet.add("30");
        hashSet.add("31");
        hashSet.add("32");
        hashSet.add("33");
        hashSet.add("34");
        hashSet.add("36");
        hashSet.add("39");
        hashSet.add("40");
        hashSet.add("41");
        hashSet.add("43");
        hashSet.add("44");
        hashSet.add("45");
        hashSet.add("46");
        hashSet.add("47");
        hashSet.add("48");
        hashSet.add("49");
        hashSet.add("51");
        hashSet.add("52");
        hashSet.add("53");
        hashSet.add("54");
        hashSet.add("55");
        hashSet.add("56");
        hashSet.add("57");
        hashSet.add("58");
        hashSet.add("60");
        hashSet.add("61");
        hashSet.add("62");
        hashSet.add("63");
        hashSet.add("64");
        hashSet.add("65");
        hashSet.add("66");
        hashSet.add("81");
        hashSet.add("82");
        hashSet.add("84");
        hashSet.add("86");
        hashSet.add("90");
        hashSet.add("91");
        hashSet.add("92");
        hashSet.add("93");
        hashSet.add("94");
        hashSet.add("95");
        hashSet.add("98");
        hashSet.add("211");
        hashSet.add("212");
        hashSet.add("213");
        hashSet.add("216");
        hashSet.add("218");
        hashSet.add("220");
        hashSet.add("221");
        hashSet.add("222");
        hashSet.add("223");
        hashSet.add("224");
        hashSet.add("225");
        hashSet.add("226");
        hashSet.add("227");
        hashSet.add("228");
        hashSet.add("229");
        hashSet.add("230");
        hashSet.add("231");
        hashSet.add("232");
        hashSet.add("233");
        hashSet.add("234");
        hashSet.add("235");
        hashSet.add("236");
        hashSet.add("237");
        hashSet.add("238");
        hashSet.add("239");
        hashSet.add("240");
        hashSet.add("241");
        hashSet.add("242");
        hashSet.add("243");
        hashSet.add("244");
        hashSet.add("245");
        hashSet.add("246");
        hashSet.add("247");
        hashSet.add("248");
        hashSet.add("249");
        hashSet.add("250");
        hashSet.add("251");
        hashSet.add("252");
        hashSet.add("253");
        hashSet.add("254");
        hashSet.add("255");
        hashSet.add("256");
        hashSet.add("257");
        hashSet.add("258");
        hashSet.add("260");
        hashSet.add("261");
        hashSet.add("262");
        hashSet.add("263");
        hashSet.add("264");
        hashSet.add("265");
        hashSet.add("266");
        hashSet.add("267");
        hashSet.add("268");
        hashSet.add("269");
        hashSet.add("290");
        hashSet.add("291");
        hashSet.add("297");
        hashSet.add("298");
        hashSet.add("299");
        hashSet.add("350");
        hashSet.add("351");
        hashSet.add("352");
        hashSet.add("353");
        hashSet.add("354");
        hashSet.add("355");
        hashSet.add("356");
        hashSet.add("357");
        hashSet.add("358");
        hashSet.add("359");
        hashSet.add("370");
        hashSet.add("371");
        hashSet.add("372");
        hashSet.add("373");
        hashSet.add("374");
        hashSet.add("375");
        hashSet.add("376");
        hashSet.add("377");
        hashSet.add("378");
        hashSet.add("379");
        hashSet.add("380");
        hashSet.add("381");
        hashSet.add("382");
        hashSet.add("385");
        hashSet.add("386");
        hashSet.add("387");
        hashSet.add("389");
        hashSet.add("420");
        hashSet.add("421");
        hashSet.add("423");
        hashSet.add("500");
        hashSet.add("501");
        hashSet.add("502");
        hashSet.add("503");
        hashSet.add("504");
        hashSet.add("505");
        hashSet.add("506");
        hashSet.add("507");
        hashSet.add("508");
        hashSet.add("509");
        hashSet.add("590");
        hashSet.add("591");
        hashSet.add("592");
        hashSet.add("593");
        hashSet.add("594");
        hashSet.add("595");
        hashSet.add("596");
        hashSet.add("597");
        hashSet.add("598");
        hashSet.add("599");
        hashSet.add("670");
        hashSet.add("672");
        hashSet.add("673");
        hashSet.add("674");
        hashSet.add("675");
        hashSet.add("676");
        hashSet.add("677");
        hashSet.add("678");
        hashSet.add("679");
        hashSet.add("680");
        hashSet.add("681");
        hashSet.add("682");
        hashSet.add("683");
        hashSet.add("685");
        hashSet.add("686");
        hashSet.add("687");
        hashSet.add("688");
        hashSet.add("689");
        hashSet.add("690");
        hashSet.add("691");
        hashSet.add("692");
        hashSet.add("800");
        hashSet.add("808");
        hashSet.add("850");
        hashSet.add("852");
        hashSet.add("853");
        hashSet.add("855");
        hashSet.add("856");
        hashSet.add("870");
        hashSet.add("878");
        hashSet.add("880");
        hashSet.add("881");
        hashSet.add("882");
        hashSet.add("883");
        hashSet.add("886");
        hashSet.add("888");
        hashSet.add("960");
        hashSet.add("961");
        hashSet.add("962");
        hashSet.add("963");
        hashSet.add("964");
        hashSet.add("965");
        hashSet.add("966");
        hashSet.add("967");
        hashSet.add("968");
        hashSet.add("970");
        hashSet.add("971");
        hashSet.add("972");
        hashSet.add("973");
        hashSet.add("974");
        hashSet.add("975");
        hashSet.add("976");
        hashSet.add("977");
        hashSet.add("979");
        hashSet.add("992");
        hashSet.add("993");
        hashSet.add("994");
        hashSet.add("995");
        hashSet.add("996");
        hashSet.add("998");
        return hashSet;
    }

    /* renamed from: b */
    public static boolean m9853b(String str) {
        if (f25370b == null) {
            f25370b = m9854b();
        }
        return f25370b.contains(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b3  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p459j.p460a.p463b0.p466s.C11300s.C11301a m9852c(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p466s.C11300s.m9852c(java.lang.String):j.a.b0.s.s$a");
    }

    /* renamed from: d */
    public static ArrayList<String> m9851d(String str) {
        int length = str.length();
        ArrayList<String> arrayList = new ArrayList<>();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char a = f25371c.mo9795a(str.charAt(i));
            if (!f25371c.mo9793c(a) || f25371c.mo9792d(a)) {
                if (sb.length() != 0) {
                    arrayList.add(sb.toString());
                }
                sb.delete(0, sb.length());
            }
            if (f25371c.mo9793c(a)) {
                sb.append((int) f25371c.mo9794b(a));
            }
        }
        if (sb.length() != 0) {
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    /* renamed from: e */
    public static HashSet<String> m9850e(String str) {
        HashSet<String> hashSet = new HashSet<>();
        if (!TextUtils.isEmpty(str)) {
            hashSet.add(C11292q.m9870a(str, f25371c));
            C11301a c = m9852c(str);
            if (c == null) {
                return hashSet;
            }
            int i = c.f25372a;
            if (i != 0) {
                hashSet.add(C11292q.m9871a(str, i, f25371c));
            }
            int i2 = c.f25373b;
            if (i2 != 0) {
                hashSet.add(C11292q.m9871a(str, i2, f25371c));
            }
        }
        return hashSet;
    }
}
