package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.C5060h;
import com.google.i18n.phonenumbers.C5065i;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.p169a.AbstractC5044a;
import com.google.i18n.phonenumbers.p169a.C5045b;
import com.google.i18n.phonenumbers.p169a.C5046c;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.i18n.phonenumbers.g */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/g.class */
public class C5055g {

    /* renamed from: a */
    static final Pattern f21316a;

    /* renamed from: b */
    static final Pattern f21317b;

    /* renamed from: c */
    static final Pattern f21318c;

    /* renamed from: d */
    static final String f21319d;

    /* renamed from: e */
    static final Pattern f21320e;

    /* renamed from: f */
    private static final Logger f21321f = Logger.getLogger(C5055g.class.getName());

    /* renamed from: g */
    private static final Map<Integer, String> f21322g;

    /* renamed from: h */
    private static final Set<Integer> f21323h;

    /* renamed from: i */
    private static final Set<Integer> f21324i;

    /* renamed from: j */
    private static final Map<Character, Character> f21325j;

    /* renamed from: k */
    private static final Map<Character, Character> f21326k;

    /* renamed from: l */
    private static final Map<Character, Character> f21327l;

    /* renamed from: m */
    private static final Map<Character, Character> f21328m;

    /* renamed from: n */
    private static final Pattern f21329n;

    /* renamed from: o */
    private static final String f21330o;

    /* renamed from: p */
    private static final Pattern f21331p;

    /* renamed from: q */
    private static final Pattern f21332q;

    /* renamed from: r */
    private static final Pattern f21333r;

    /* renamed from: s */
    private static final Pattern f21334s;

    /* renamed from: t */
    private static final String f21335t;

    /* renamed from: u */
    private static final String f21336u;

    /* renamed from: v */
    private static final Pattern f21337v;

    /* renamed from: w */
    private static final Pattern f21338w;

    /* renamed from: x */
    private static final Pattern f21339x;

    /* renamed from: y */
    private static final Pattern f21340y;

    /* renamed from: z */
    private static C5055g f21341z;

    /* renamed from: A */
    private final AbstractC5053e f21342A;

    /* renamed from: B */
    private final Map<Integer, List<String>> f21343B;

    /* renamed from: C */
    private final AbstractC5044a f21344C = C5045b.m1760a();

    /* renamed from: D */
    private final Set<String> f21345D = new HashSet(35);

    /* renamed from: E */
    private final C5046c f21346E = new C5046c(100);

    /* renamed from: F */
    private final Set<String> f21347F = new HashSet(320);

    /* renamed from: G */
    private final Set<Integer> f21348G = new HashSet();

    /* renamed from: com.google.i18n.phonenumbers.g$1 */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/g$1.class */
    public static /* synthetic */ class C50561 {

        /* renamed from: a */
        static final /* synthetic */ int[] f21349a;

        /* renamed from: b */
        static final /* synthetic */ int[] f21350b;

        /* renamed from: c */
        static final /* synthetic */ int[] f21351c = new int[EnumC5058b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f7 -> B:76:0x00e7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00fb -> B:70:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ff -> B:86:0x00d1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0103 -> B:33:0x00bd). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0107 -> B:96:0x00b2). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x010b -> B:92:0x00a7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x010f -> B:66:0x009c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0113 -> B:24:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0117 -> B:78:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x011b -> B:72:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x011f -> B:88:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0123 -> B:84:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0127 -> B:98:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x012b -> B:94:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x012f -> B:68:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0133 -> B:64:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0137 -> B:80:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x013b -> B:74:0x0014). Please submit an issue!!! */
        static {
            try {
                f21351c[EnumC5058b.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21351c[EnumC5058b.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21351c[EnumC5058b.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f21351c[EnumC5058b.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f21351c[EnumC5058b.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f21351c[EnumC5058b.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f21351c[EnumC5058b.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f21351c[EnumC5058b.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f21351c[EnumC5058b.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f21351c[EnumC5058b.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f21351c[EnumC5058b.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            f21350b = new int[EnumC5057a.values().length];
            try {
                f21350b[EnumC5057a.E164.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f21350b[EnumC5057a.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f21350b[EnumC5057a.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f21350b[EnumC5057a.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError e15) {
            }
            f21349a = new int[C5065i.C5066a.EnumC5067a.values().length];
            try {
                f21349a[C5065i.C5066a.EnumC5067a.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f21349a[C5065i.C5066a.EnumC5067a.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f21349a[C5065i.C5066a.EnumC5067a.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f21349a[C5065i.C5066a.EnumC5067a.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError e19) {
            }
        }
    }

    /* renamed from: com.google.i18n.phonenumbers.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/g$a.class */
    public enum EnumC5057a {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    /* renamed from: com.google.i18n.phonenumbers.g$b */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/g$b.class */
    public enum EnumC5058b {
        FIXED_LINE,
        MOBILE,
        FIXED_LINE_OR_MOBILE,
        TOLL_FREE,
        PREMIUM_RATE,
        SHARED_COST,
        VOIP,
        PERSONAL_NUMBER,
        PAGER,
        UAN,
        VOICEMAIL,
        UNKNOWN
    }

    /* renamed from: com.google.i18n.phonenumbers.g$c */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/g$c.class */
    public enum EnumC5059c {
        IS_POSSIBLE,
        IS_POSSIBLE_LOCAL_ONLY,
        INVALID_COUNTRY_CODE,
        TOO_SHORT,
        INVALID_LENGTH,
        TOO_LONG
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(52, "1");
        hashMap.put(54, "9");
        f21322g = Collections.unmodifiableMap(hashMap);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        f21323h = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        f21324i = Collections.unmodifiableSet(hashSet2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put('0', '0');
        hashMap2.put('1', '1');
        hashMap2.put('2', '2');
        hashMap2.put('3', '3');
        hashMap2.put('4', '4');
        hashMap2.put('5', '5');
        hashMap2.put('6', '6');
        hashMap2.put('7', '7');
        hashMap2.put('8', '8');
        hashMap2.put('9', '9');
        HashMap hashMap3 = new HashMap(40);
        hashMap3.put('A', '2');
        hashMap3.put('B', '2');
        hashMap3.put('C', '2');
        hashMap3.put('D', '3');
        hashMap3.put('E', '3');
        hashMap3.put('F', '3');
        hashMap3.put('G', '4');
        hashMap3.put('H', '4');
        hashMap3.put('I', '4');
        hashMap3.put('J', '5');
        hashMap3.put('K', '5');
        hashMap3.put('L', '5');
        hashMap3.put('M', '6');
        hashMap3.put('N', '6');
        hashMap3.put('O', '6');
        hashMap3.put('P', '7');
        hashMap3.put('Q', '7');
        hashMap3.put('R', '7');
        hashMap3.put('S', '7');
        hashMap3.put('T', '8');
        hashMap3.put('U', '8');
        hashMap3.put('V', '8');
        hashMap3.put('W', '9');
        hashMap3.put('X', '9');
        hashMap3.put('Y', '9');
        hashMap3.put('Z', '9');
        f21326k = Collections.unmodifiableMap(hashMap3);
        HashMap hashMap4 = new HashMap(100);
        hashMap4.putAll(f21326k);
        hashMap4.putAll(hashMap2);
        f21327l = Collections.unmodifiableMap(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.putAll(hashMap2);
        hashMap5.put('+', '+');
        hashMap5.put('*', '*');
        hashMap5.put('#', '#');
        f21325j = Collections.unmodifiableMap(hashMap5);
        HashMap hashMap6 = new HashMap();
        for (Character ch : f21326k.keySet()) {
            char charValue = ch.charValue();
            hashMap6.put(Character.valueOf(Character.toLowerCase(charValue)), Character.valueOf(charValue));
            hashMap6.put(Character.valueOf(charValue), Character.valueOf(charValue));
        }
        hashMap6.putAll(hashMap2);
        hashMap6.put('-', '-');
        hashMap6.put((char) 65293, '-');
        hashMap6.put((char) 8208, '-');
        hashMap6.put((char) 8209, '-');
        hashMap6.put((char) 8210, '-');
        hashMap6.put((char) 8211, '-');
        hashMap6.put((char) 8212, '-');
        hashMap6.put((char) 8213, '-');
        hashMap6.put((char) 8722, '-');
        hashMap6.put('/', '/');
        hashMap6.put((char) 65295, '/');
        hashMap6.put(' ', ' ');
        hashMap6.put((char) 12288, ' ');
        hashMap6.put((char) 8288, ' ');
        hashMap6.put('.', '.');
        hashMap6.put((char) 65294, '.');
        f21328m = Collections.unmodifiableMap(hashMap6);
        f21329n = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        f21330o = Arrays.toString(f21326k.keySet().toArray()).replaceAll("[, \\[\\]]", "") + Arrays.toString(f21326k.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", "");
        f21316a = Pattern.compile("[+＋]+");
        f21331p = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        f21332q = Pattern.compile("(\\p{Nd})");
        f21333r = Pattern.compile("[+＋\\p{Nd}]");
        f21317b = Pattern.compile("[\\\\/] *x");
        f21318c = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
        f21334s = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        f21335t = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + f21330o + "\\p{Nd}]*";
        f21336u = m1708b(",;xｘ#＃~～");
        f21319d = m1708b("xｘ#＃~～");
        f21337v = Pattern.compile("(?:" + f21336u + ")$", 66);
        f21338w = Pattern.compile(f21335t + "(?:" + f21336u + ")?", 66);
        f21320e = Pattern.compile("(\\D+)");
        f21339x = Pattern.compile("(\\$\\d)");
        f21340y = Pattern.compile("\\(?\\$1\\)?");
        f21341z = null;
    }

    C5055g(AbstractC5053e abstractC5053e, Map<Integer, List<String>> map) {
        this.f21342A = abstractC5053e;
        this.f21343B = map;
        for (Map.Entry<Integer, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() != 1 || !"001".equals(value.get(0))) {
                this.f21347F.addAll(value);
            } else {
                this.f21348G.add(entry.getKey());
            }
        }
        if (this.f21347F.remove("001")) {
            f21321f.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.f21345D.addAll(map.get(1));
    }

    /* renamed from: a */
    private EnumC5059c m1731a(CharSequence charSequence, C5060h.C5062b c5062b) {
        return m1730a(charSequence, c5062b, EnumC5058b.UNKNOWN);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00db  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.i18n.phonenumbers.C5055g.EnumC5059c m1730a(java.lang.CharSequence r6, com.google.i18n.phonenumbers.C5060h.C5062b r7, com.google.i18n.phonenumbers.C5055g.EnumC5058b r8) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.C5055g.m1730a(java.lang.CharSequence, com.google.i18n.phonenumbers.h$b, com.google.i18n.phonenumbers.g$b):com.google.i18n.phonenumbers.g$c");
    }

    /* renamed from: a */
    public static C5055g m1745a() {
        C5055g c5055g;
        synchronized (C5055g.class) {
            try {
                if (f21341z == null) {
                    m1739a(m1741a(C5051d.f21306a));
                }
                c5055g = f21341z;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c5055g;
    }

    /* renamed from: a */
    public static C5055g m1741a(AbstractC5050c abstractC5050c) {
        if (abstractC5050c == null) {
            throw new IllegalArgumentException("metadataLoader could not be null.");
        }
        return m1740a(new C5054f(abstractC5050c));
    }

    /* renamed from: a */
    private static C5055g m1740a(AbstractC5053e abstractC5053e) {
        if (abstractC5053e == null) {
            throw new IllegalArgumentException("metadataSource could not be null.");
        }
        return new C5055g(abstractC5053e, C5049b.m1753a());
    }

    /* renamed from: a */
    private C5060h.C5062b m1742a(int i, String str) {
        return "001".equals(str) ? m1744a(i) : m1722a(str);
    }

    /* renamed from: a */
    static CharSequence m1732a(CharSequence charSequence) {
        CharSequence charSequence2;
        Matcher matcher = f21333r.matcher(charSequence);
        if (matcher.find()) {
            CharSequence subSequence = charSequence.subSequence(matcher.start(), charSequence.length());
            Matcher matcher2 = f21318c.matcher(subSequence);
            CharSequence charSequence3 = subSequence;
            if (matcher2.find()) {
                charSequence3 = subSequence.subSequence(0, matcher2.start());
            }
            Matcher matcher3 = f21317b.matcher(charSequence3);
            charSequence2 = charSequence3;
            if (matcher3.find()) {
                charSequence2 = charSequence3.subSequence(0, matcher3.start());
            }
        } else {
            charSequence2 = "";
        }
        return charSequence2;
    }

    /* renamed from: a */
    private static String m1724a(CharSequence charSequence, Map<Character, Character> map, boolean z) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            Character ch = map.get(Character.valueOf(Character.toUpperCase(charAt)));
            if (ch != null) {
                sb.append(ch);
            } else if (!z) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private String m1721a(String str, C5060h.C5061a c5061a, EnumC5057a enumC5057a, CharSequence charSequence) {
        String replaceAll;
        String m1699b = c5061a.m1699b();
        Matcher matcher = this.f21346E.m1757a(c5061a.m1703a()).matcher(str);
        if (enumC5057a != EnumC5057a.NATIONAL || charSequence == null || charSequence.length() <= 0 || c5061a.m1693e().length() <= 0) {
            String m1695d = c5061a.m1695d();
            replaceAll = (enumC5057a != EnumC5057a.NATIONAL || m1695d == null || m1695d.length() <= 0) ? matcher.replaceAll(m1699b) : matcher.replaceAll(f21339x.matcher(m1699b).replaceFirst(m1695d));
        } else {
            replaceAll = matcher.replaceAll(f21339x.matcher(m1699b).replaceFirst(c5061a.m1693e().replace("$CC", charSequence)));
        }
        String str2 = replaceAll;
        if (enumC5057a == EnumC5057a.RFC3966) {
            Matcher matcher2 = f21331p.matcher(replaceAll);
            if (matcher2.lookingAt()) {
                replaceAll = matcher2.replaceFirst("");
            }
            str2 = matcher2.reset(replaceAll).replaceAll("-");
        }
        return str2;
    }

    /* renamed from: a */
    private String m1720a(String str, C5060h.C5062b c5062b, EnumC5057a enumC5057a) {
        return m1719a(str, c5062b, enumC5057a, (CharSequence) null);
    }

    /* renamed from: a */
    private String m1719a(String str, C5060h.C5062b c5062b, EnumC5057a enumC5057a, CharSequence charSequence) {
        C5060h.C5061a m1713a = m1713a((c5062b.m1643t().size() == 0 || enumC5057a == EnumC5057a.NATIONAL) ? c5062b.m1645r() : c5062b.m1643t(), str);
        if (m1713a != null) {
            str = m1721a(str, m1713a, enumC5057a, charSequence);
        }
        return str;
    }

    /* renamed from: a */
    static StringBuilder m1723a(CharSequence charSequence, boolean z) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            int digit = Character.digit(charAt, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (z) {
                sb.append(charAt);
            }
        }
        return sb;
    }

    /* renamed from: a */
    static StringBuilder m1717a(StringBuilder sb) {
        if (f21334s.matcher(sb).matches()) {
            sb.replace(0, sb.length(), m1724a((CharSequence) sb, f21327l, true));
        } else {
            sb.replace(0, sb.length(), m1705c(sb));
        }
        return sb;
    }

    /* renamed from: a */
    private void m1743a(int i, EnumC5057a enumC5057a, StringBuilder sb) {
        switch (C50561.f21350b[enumC5057a.ordinal()]) {
            case 1:
                sb.insert(0, i).insert(0, '+');
                return;
            case 2:
                sb.insert(0, " ").insert(0, i).insert(0, '+');
                return;
            case 3:
                sb.insert(0, "-").insert(0, i).insert(0, '+').insert(0, "tel:");
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    static void m1739a(C5055g c5055g) {
        synchronized (C5055g.class) {
            try {
                f21341z = c5055g;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private void m1733a(C5065i.C5066a c5066a, C5060h.C5062b c5062b, EnumC5057a enumC5057a, StringBuilder sb) {
        if (!c5066a.m1621c() || c5066a.m1619d().length() <= 0) {
            return;
        }
        if (enumC5057a == EnumC5057a.RFC3966) {
            sb.append(";ext=").append(c5066a.m1619d());
        } else if (c5062b.m1653n()) {
            sb.append(c5062b.m1651o()).append(c5066a.m1619d());
        } else {
            sb.append(" ext. ").append(c5066a.m1619d());
        }
    }

    /* renamed from: a */
    static void m1728a(CharSequence charSequence, C5065i.C5066a c5066a) {
        if (charSequence.length() <= 1 || charSequence.charAt(0) != '0') {
            return;
        }
        c5066a.m1625a(true);
        int i = 1;
        while (i < charSequence.length() - 1 && charSequence.charAt(i) == '0') {
            i++;
        }
        if (i == 1) {
            return;
        }
        c5066a.m1623b(i);
    }

    /* renamed from: a */
    private void m1725a(CharSequence charSequence, String str, boolean z, boolean z2, C5065i.C5066a c5066a) {
        int i;
        C5060h.C5062b c5062b;
        if (charSequence == null) {
            throw new NumberParseException(NumberParseException.EnumC5042a.NOT_A_NUMBER, "The phone number supplied was null.");
        }
        if (charSequence.length() > 250) {
            throw new NumberParseException(NumberParseException.EnumC5042a.TOO_LONG, "The string supplied was too long to parse.");
        }
        StringBuilder sb = new StringBuilder();
        String charSequence2 = charSequence.toString();
        m1718a(charSequence2, sb);
        if (!m1710b((CharSequence) sb)) {
            throw new NumberParseException(NumberParseException.EnumC5042a.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
        }
        if (z2 && !m1709b(sb, str)) {
            throw new NumberParseException(NumberParseException.EnumC5042a.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
        }
        if (z) {
            c5066a.m1622b(charSequence2);
        }
        String m1707b = m1707b(sb);
        if (m1707b.length() > 0) {
            c5066a.m1626a(m1707b);
        }
        C5060h.C5062b m1722a = m1722a(str);
        StringBuilder sb2 = new StringBuilder();
        try {
            i = m1729a(sb, m1722a, sb2, z, c5066a);
        } catch (NumberParseException e) {
            Matcher matcher = f21316a.matcher(sb);
            if (e.m1762a() != NumberParseException.EnumC5042a.INVALID_COUNTRY_CODE || !matcher.lookingAt()) {
                throw new NumberParseException(e.m1762a(), e.getMessage());
            }
            int m1729a = m1729a(sb.substring(matcher.end()), m1722a, sb2, z, c5066a);
            i = m1729a;
            if (m1729a == 0) {
                throw new NumberParseException(NumberParseException.EnumC5042a.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
            }
        }
        if (i != 0) {
            String m1711b = m1711b(i);
            c5062b = m1722a;
            if (!m1711b.equals(str)) {
                c5062b = m1742a(i, m1711b);
            }
        } else {
            sb2.append(m1717a(sb));
            if (str != null) {
                c5066a.m1630a(m1722a.m1657l());
                c5062b = m1722a;
            } else {
                c5062b = m1722a;
                if (z) {
                    c5066a.m1610m();
                    c5062b = m1722a;
                }
            }
        }
        if (sb2.length() < 2) {
            throw new NumberParseException(NumberParseException.EnumC5042a.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        StringBuilder sb3 = sb2;
        if (c5062b != null) {
            StringBuilder sb4 = new StringBuilder();
            StringBuilder sb5 = new StringBuilder(sb2);
            m1716a(sb5, c5062b, sb4);
            EnumC5059c m1731a = m1731a(sb5, c5062b);
            sb3 = sb2;
            if (m1731a != EnumC5059c.TOO_SHORT) {
                sb3 = sb2;
                if (m1731a != EnumC5059c.IS_POSSIBLE_LOCAL_ONLY) {
                    sb3 = sb2;
                    if (m1731a != EnumC5059c.INVALID_LENGTH) {
                        if (z && sb4.length() > 0) {
                            c5066a.m1620c(sb4.toString());
                        }
                        sb3 = sb5;
                    }
                }
            }
        }
        int length = sb3.length();
        if (length < 2) {
            throw new NumberParseException(NumberParseException.EnumC5042a.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        if (length > 17) {
            throw new NumberParseException(NumberParseException.EnumC5042a.TOO_LONG, "The string supplied is too long to be a phone number.");
        }
        m1728a(sb3, c5066a);
        c5066a.m1629a(Long.parseLong(sb3.toString()));
    }

    /* renamed from: a */
    private void m1718a(String str, StringBuilder sb) {
        int indexOf = str.indexOf(";phone-context=");
        if (indexOf >= 0) {
            int length = ";phone-context=".length() + indexOf;
            if (length < str.length() - 1 && str.charAt(length) == '+') {
                int indexOf2 = str.indexOf(59, length);
                if (indexOf2 > 0) {
                    sb.append(str.substring(length, indexOf2));
                } else {
                    sb.append(str.substring(length));
                }
            }
            int indexOf3 = str.indexOf("tel:");
            sb.append(str.substring(indexOf3 >= 0 ? indexOf3 + "tel:".length() : 0, indexOf));
        } else {
            sb.append(m1732a((CharSequence) str));
        }
        int indexOf4 = sb.indexOf(";isub=");
        if (indexOf4 > 0) {
            sb.delete(indexOf4, sb.length());
        }
    }

    /* renamed from: a */
    private static boolean m1737a(C5060h.C5064d c5064d) {
        boolean z = false;
        if (c5064d.m1634c() != 1 || c5064d.m1638a(0) != -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    private boolean m1712a(Pattern pattern, StringBuilder sb) {
        Matcher matcher = pattern.matcher(sb);
        boolean z = false;
        if (matcher.lookingAt()) {
            int end = matcher.end();
            Matcher matcher2 = f21332q.matcher(sb.substring(end));
            if (!matcher2.find() || !m1705c((CharSequence) matcher2.group(1)).equals("0")) {
                sb.delete(0, end);
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    private static String m1708b(String str) {
        return ";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|доб|[" + str + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*(\\p{Nd}{1,7})#?|[- ]+(\\p{Nd}{1,5})#";
    }

    /* renamed from: b */
    static boolean m1710b(CharSequence charSequence) {
        return charSequence.length() < 2 ? false : f21338w.matcher(charSequence).matches();
    }

    /* renamed from: b */
    private boolean m1709b(CharSequence charSequence, String str) {
        return m1704c(str) || !(charSequence == null || charSequence.length() == 0 || !f21316a.matcher(charSequence).lookingAt());
    }

    /* renamed from: c */
    public static String m1705c(CharSequence charSequence) {
        return m1723a(charSequence, false).toString();
    }

    /* renamed from: c */
    private boolean m1706c(int i) {
        return this.f21343B.containsKey(Integer.valueOf(i));
    }

    /* renamed from: c */
    private boolean m1704c(String str) {
        return str != null && this.f21347F.contains(str);
    }

    /* renamed from: a */
    int m1729a(CharSequence charSequence, C5060h.C5062b c5062b, StringBuilder sb, boolean z, C5065i.C5066a c5066a) {
        int i;
        if (charSequence.length() == 0) {
            i = 0;
        } else {
            StringBuilder sb2 = new StringBuilder(charSequence);
            String str = "NonMatch";
            if (c5062b != null) {
                str = c5062b.m1655m();
            }
            C5065i.C5066a.EnumC5067a m1715a = m1715a(sb2, str);
            if (z) {
                c5066a.m1628a(m1715a);
            }
            if (m1715a == C5065i.C5066a.EnumC5067a.FROM_DEFAULT_COUNTRY) {
                if (c5062b != null) {
                    i = c5062b.m1657l();
                    String valueOf = String.valueOf(i);
                    String sb3 = sb2.toString();
                    if (sb3.startsWith(valueOf)) {
                        StringBuilder sb4 = new StringBuilder(sb3.substring(valueOf.length()));
                        C5060h.C5064d m1692a = c5062b.m1692a();
                        m1716a(sb4, c5062b, (StringBuilder) null);
                        if ((!this.f21344C.mo1759a(sb2, m1692a, false) && this.f21344C.mo1759a(sb4, m1692a, false)) || m1731a(sb2, c5062b) == EnumC5059c.TOO_LONG) {
                            sb.append((CharSequence) sb4);
                            if (z) {
                                c5066a.m1628a(C5065i.C5066a.EnumC5067a.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                            }
                            c5066a.m1630a(i);
                        }
                    }
                }
                c5066a.m1630a(0);
                i = 0;
            } else if (sb2.length() <= 2) {
                throw new NumberParseException(NumberParseException.EnumC5042a.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
            } else {
                i = m1714a(sb2, sb);
                if (i == 0) {
                    throw new NumberParseException(NumberParseException.EnumC5042a.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
                }
                c5066a.m1630a(i);
            }
        }
        return i;
    }

    /* renamed from: a */
    int m1714a(StringBuilder sb, StringBuilder sb2) {
        int i;
        if (sb.length() == 0 || sb.charAt(0) == '0') {
            i = 0;
        } else {
            int length = sb.length();
            for (int i2 = 1; i2 <= 3 && i2 <= length; i2++) {
                int parseInt = Integer.parseInt(sb.substring(0, i2));
                if (this.f21343B.containsKey(Integer.valueOf(parseInt))) {
                    sb2.append(sb.substring(i2));
                    i = parseInt;
                    break;
                }
            }
            i = 0;
        }
        return i;
    }

    /* renamed from: a */
    C5060h.C5061a m1713a(List<C5060h.C5061a> list, String str) {
        C5060h.C5061a c5061a;
        Iterator<C5060h.C5061a> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                c5061a = null;
                break;
            }
            c5061a = it.next();
            int m1697c = c5061a.m1697c();
            if (m1697c == 0 || this.f21346E.m1757a(c5061a.m1702a(m1697c - 1)).matcher(str).lookingAt()) {
                if (this.f21346E.m1757a(c5061a.m1703a()).matcher(str).matches()) {
                    break;
                }
            }
        }
        return c5061a;
    }

    /* renamed from: a */
    C5060h.C5062b m1744a(int i) {
        return !this.f21343B.containsKey(Integer.valueOf(i)) ? null : this.f21342A.mo1748a(i);
    }

    /* renamed from: a */
    C5060h.C5062b m1722a(String str) {
        return !m1704c(str) ? null : this.f21342A.mo1747a(str);
    }

    /* renamed from: a */
    C5060h.C5064d m1738a(C5060h.C5062b c5062b, EnumC5058b enumC5058b) {
        C5060h.C5064d m1659k;
        switch (C50561.f21351c[enumC5058b.ordinal()]) {
            case 1:
                m1659k = c5062b.m1675e();
                break;
            case 2:
                m1659k = c5062b.m1679d();
                break;
            case 3:
                m1659k = c5062b.m1683c();
                break;
            case 4:
            case 5:
                m1659k = c5062b.m1687b();
                break;
            case 6:
                m1659k = c5062b.m1672f();
                break;
            case 7:
                m1659k = c5062b.m1666h();
                break;
            case 8:
                m1659k = c5062b.m1669g();
                break;
            case 9:
                m1659k = c5062b.m1663i();
                break;
            case 10:
                m1659k = c5062b.m1661j();
                break;
            case 11:
                m1659k = c5062b.m1659k();
                break;
            default:
                m1659k = c5062b.m1692a();
                break;
        }
        return m1659k;
    }

    /* renamed from: a */
    C5065i.C5066a.EnumC5067a m1715a(StringBuilder sb, String str) {
        C5065i.C5066a.EnumC5067a enumC5067a;
        if (sb.length() == 0) {
            enumC5067a = C5065i.C5066a.EnumC5067a.FROM_DEFAULT_COUNTRY;
        } else {
            Matcher matcher = f21316a.matcher(sb);
            if (matcher.lookingAt()) {
                sb.delete(0, matcher.end());
                m1717a(sb);
                enumC5067a = C5065i.C5066a.EnumC5067a.FROM_NUMBER_WITH_PLUS_SIGN;
            } else {
                Pattern m1757a = this.f21346E.m1757a(str);
                m1717a(sb);
                enumC5067a = m1712a(m1757a, sb) ? C5065i.C5066a.EnumC5067a.FROM_NUMBER_WITH_IDD : C5065i.C5066a.EnumC5067a.FROM_DEFAULT_COUNTRY;
            }
        }
        return enumC5067a;
    }

    /* renamed from: a */
    public C5065i.C5066a m1727a(CharSequence charSequence, String str) {
        C5065i.C5066a c5066a = new C5065i.C5066a();
        m1726a(charSequence, str, c5066a);
        return c5066a;
    }

    /* renamed from: a */
    public String m1736a(C5065i.C5066a c5066a) {
        StringBuilder sb = new StringBuilder();
        if (c5066a.m1617f() && c5066a.m1615h() > 0) {
            char[] cArr = new char[c5066a.m1615h()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(c5066a.m1624b());
        return sb.toString();
    }

    /* renamed from: a */
    public String m1735a(C5065i.C5066a c5066a, EnumC5057a enumC5057a) {
        String sb;
        if (c5066a.m1624b() == 0 && c5066a.m1614i()) {
            String m1613j = c5066a.m1613j();
            if (m1613j.length() > 0) {
                sb = m1613j;
                return sb;
            }
        }
        StringBuilder sb2 = new StringBuilder(20);
        m1734a(c5066a, enumC5057a, sb2);
        sb = sb2.toString();
        return sb;
    }

    /* renamed from: a */
    public void m1734a(C5065i.C5066a c5066a, EnumC5057a enumC5057a, StringBuilder sb) {
        sb.setLength(0);
        int m1631a = c5066a.m1631a();
        String m1736a = m1736a(c5066a);
        if (enumC5057a == EnumC5057a.E164) {
            sb.append(m1736a);
            m1743a(m1631a, EnumC5057a.E164, sb);
        } else if (!m1706c(m1631a)) {
            sb.append(m1736a);
        } else {
            C5060h.C5062b m1742a = m1742a(m1631a, m1711b(m1631a));
            sb.append(m1720a(m1736a, m1742a, enumC5057a));
            m1733a(c5066a, m1742a, enumC5057a, sb);
            m1743a(m1631a, enumC5057a, sb);
        }
    }

    /* renamed from: a */
    public void m1726a(CharSequence charSequence, String str, C5065i.C5066a c5066a) {
        m1725a(charSequence, str, false, true, c5066a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0099, code lost:
        if (r6.f21344C.mo1759a(r7.substring(r0.end()), r0, false) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00fc, code lost:
        if (r6.f21344C.mo1759a(r0.toString(), r0, false) != false) goto L33;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean m1716a(java.lang.StringBuilder r7, com.google.i18n.phonenumbers.C5060h.C5062b r8, java.lang.StringBuilder r9) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.C5055g.m1716a(java.lang.StringBuilder, com.google.i18n.phonenumbers.h$b, java.lang.StringBuilder):boolean");
    }

    /* renamed from: b */
    public String m1711b(int i) {
        List<String> list = this.f21343B.get(Integer.valueOf(i));
        return list == null ? "ZZ" : list.get(0);
    }

    /* renamed from: b */
    String m1707b(StringBuilder sb) {
        String str;
        Matcher matcher = f21337v.matcher(sb);
        if (matcher.find() && m1710b((CharSequence) sb.substring(0, matcher.start()))) {
            int groupCount = matcher.groupCount();
            for (int i = 1; i <= groupCount; i++) {
                if (matcher.group(i) != null) {
                    String group = matcher.group(i);
                    sb.delete(matcher.start(), sb.length());
                    str = group;
                    break;
                }
            }
        }
        str = "";
        return str;
    }
}
