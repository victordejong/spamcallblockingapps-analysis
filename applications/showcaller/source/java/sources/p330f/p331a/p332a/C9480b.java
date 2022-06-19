package p330f.p331a.p332a;

import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import p330f.p331a.p332a.p333e.C9483a;
import p330f.p331a.p332a.p333e.C9484b;
import p330f.p331a.p332a.p333e.C9485c;
import p330f.p331a.p332a.p333e.C9486d;
/* renamed from: f.a.a.b */
/* loaded from: classes2-dex2jar.jar:f/a/a/b.class */
class C9480b {
    /* renamed from: a */
    private static String m501a(String str) {
        char c;
        String lowerCase = str.toLowerCase();
        String str2 = lowerCase;
        if (lowerCase.matches("[a-z]*[1-5]?")) {
            if (lowerCase.matches("[a-z]*[1-5]")) {
                int numericValue = Character.getNumericValue(lowerCase.charAt(lowerCase.length() - 1));
                int indexOf = lowerCase.indexOf(97);
                int indexOf2 = lowerCase.indexOf(101);
                int indexOf3 = lowerCase.indexOf("ou");
                if (-1 == indexOf) {
                    if (-1 == indexOf2) {
                        if (-1 == indexOf3) {
                            indexOf3 = lowerCase.length() - 1;
                            while (true) {
                                if (indexOf3 < 0) {
                                    c = '$';
                                    indexOf3 = -1;
                                    break;
                                } else if (String.valueOf(lowerCase.charAt(indexOf3)).matches("[aeiouv]")) {
                                    c = lowerCase.charAt(indexOf3);
                                    break;
                                } else {
                                    indexOf3--;
                                }
                            }
                        } else {
                            c = "ou".charAt(0);
                        }
                    } else {
                        indexOf3 = indexOf2;
                        c = 'e';
                    }
                } else {
                    c = 'a';
                    indexOf3 = indexOf;
                }
                String str3 = lowerCase;
                if ('$' != c) {
                    str3 = lowerCase;
                    if (-1 != indexOf3) {
                        str3 = lowerCase.substring(0, indexOf3).replaceAll("v", "ü") + "āáăàaēéĕèeīíĭìiōóŏòoūúŭùuǖǘǚǜü".charAt(("aeiouv".indexOf(c) * 5) + (numericValue - 1)) + lowerCase.substring(indexOf3 + 1, lowerCase.length() - 1).replaceAll("v", "ü");
                    }
                }
                return str3;
            }
            str2 = lowerCase.replaceAll("v", "ü");
        }
        return str2;
    }

    /* renamed from: b */
    public static String m500b(String str, C9484b c9484b) {
        String str2;
        String str3;
        C9485c c9485c = C9485c.f40360c;
        if (c9485c == c9484b.m493b() && (C9486d.f40363b == c9484b.m492c() || C9486d.f40362a == c9484b.m492c())) {
            throw new BadHanyuPinyinOutputFormatCombination("tone marks cannot be added to v or u:");
        }
        if (C9485c.f40359b == c9484b.m493b()) {
            str2 = str.replaceAll("[1-5]", "");
        } else {
            str2 = str;
            if (c9485c == c9484b.m493b()) {
                str2 = m501a(str.replaceAll("u:", "v"));
            }
        }
        if (C9486d.f40363b == c9484b.m492c()) {
            str3 = str2.replaceAll("u:", "v");
        } else {
            str3 = str2;
            if (C9486d.f40364c == c9484b.m492c()) {
                str3 = str2.replaceAll("u:", "ü");
            }
        }
        String str4 = str3;
        if (C9483a.f40352a == c9484b.m494a()) {
            str4 = str3.toUpperCase();
        }
        return str4;
    }
}
