package com.google.api.client.http;

import com.google.api.client.p379a.C15214ag;
import com.google.api.client.p379a.C15232j;
import com.google.api.client.p379a.C15240m;
import com.google.api.client.p379a.p380a.C15201a;
import com.google.common.base.AbstractC15369c;
import com.google.common.base.C15391m;
import com.google.common.base.C15393o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.ListIterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.google.api.client.http.ad */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ad.class */
public final class C15318ad {

    /* renamed from: a */
    private static final Map<Character, EnumC15319a> f55320a = new HashMap();

    /* renamed from: com.google.api.client.http.ad$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ad$a.class */
    public enum EnumC15319a {
        PLUS('+', "", ",", false, true),
        HASH('#', "#", ",", false, true),
        DOT('.', ".", ".", false, false),
        FORWARD_SLASH('/', "/", "/", false, false),
        SEMI_COLON(';', ";", ";", true, false),
        QUERY('?', "?", "&", true, false),
        AMP('&', "&", "&", true, false),
        SIMPLE(null, "", ",", false, false);
        
        private final String explodeJoiner;
        private final String outputPrefix;
        private final Character propertyPrefix;
        private final boolean requiresVarAssignment;
        private final boolean reservedExpansion;

        EnumC15319a(Character ch, String str, String str2, boolean z, boolean z2) {
            this.propertyPrefix = ch;
            this.outputPrefix = (String) C15391m.m8946a(str);
            this.explodeJoiner = (String) C15391m.m8946a(str2);
            this.requiresVarAssignment = z;
            this.reservedExpansion = z2;
            if (ch != null) {
                C15318ad.f55320a.put(ch, this);
            }
        }

        public String getEncodedValue(String str) {
            return this.reservedExpansion ? C15201a.m9293f(str) : C15201a.m9297b(str);
        }

        final String getExplodeJoiner() {
            return this.explodeJoiner;
        }

        final String getOutputPrefix() {
            return this.outputPrefix;
        }

        final int getVarNameStartIndex() {
            return this.propertyPrefix == null ? 0 : 1;
        }

        final boolean requiresVarAssignment() {
            return this.requiresVarAssignment;
        }
    }

    static {
        EnumC15319a.values();
    }

    /* renamed from: a */
    private static String m9127a(String str, Object obj, boolean z) {
        String str2;
        Map<String, Object> m9128a = m9128a(obj);
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                break;
            }
            int indexOf = str.indexOf(123, i2);
            if (indexOf == -1) {
                sb.append(str.substring(i2));
                break;
            }
            sb.append(str.substring(i2, indexOf));
            int indexOf2 = str.indexOf(JsonReaderKt.END_OBJ, indexOf + 2);
            String substring = str.substring(indexOf + 1, indexOf2);
            EnumC15319a enumC15319a = f55320a.get(Character.valueOf(substring.charAt(0)));
            EnumC15319a enumC15319a2 = enumC15319a;
            if (enumC15319a == null) {
                enumC15319a2 = EnumC15319a.SIMPLE;
            }
            ListIterator<String> listIterator = C15393o.m8929a(AbstractC15369c.m8970a(',')).m8928a(substring).listIterator();
            boolean z2 = true;
            while (listIterator.hasNext()) {
                String next = listIterator.next();
                boolean endsWith = next.endsWith("*");
                int varNameStartIndex = listIterator.nextIndex() == 1 ? enumC15319a2.getVarNameStartIndex() : 0;
                int length2 = next.length();
                int i3 = length2;
                if (endsWith) {
                    i3 = length2 - 1;
                }
                String substring2 = next.substring(varNameStartIndex, i3);
                Object remove = m9128a.remove(substring2);
                if (remove != null) {
                    if (!z2) {
                        sb.append(enumC15319a2.getExplodeJoiner());
                    } else {
                        sb.append(enumC15319a2.getOutputPrefix());
                        z2 = false;
                    }
                    if (remove instanceof Iterator) {
                        str2 = m9124a(substring2, (Iterator) remove, endsWith, enumC15319a2);
                    } else if ((remove instanceof Iterable) || remove.getClass().isArray()) {
                        str2 = m9124a(substring2, C15214ag.m9267a(remove).iterator(), endsWith, enumC15319a2);
                    } else if (remove.getClass().isEnum()) {
                        String str3 = C15240m.m9222a((Enum<?>) remove).f55116c;
                        if (str3 == null) {
                            str3 = remove.toString();
                        }
                        str2 = m9126a(substring2, str3, enumC15319a2);
                    } else {
                        str2 = !C15232j.m9232d(remove) ? m9123a(substring2, m9128a(remove), endsWith, enumC15319a2) : m9126a(substring2, remove.toString(), enumC15319a2);
                    }
                    sb.append((Object) str2);
                }
            }
            i = indexOf2 + 1;
        }
        C15330i.m9108a(m9128a.entrySet(), sb, false);
        return sb.toString();
    }

    /* renamed from: a */
    private static String m9126a(String str, String str2, EnumC15319a enumC15319a) {
        return enumC15319a.requiresVarAssignment() ? String.format("%s=%s", str, enumC15319a.getEncodedValue(str2)) : enumC15319a.getEncodedValue(str2);
    }

    /* renamed from: a */
    public static String m9125a(String str, String str2, Object obj) {
        String str3;
        if (str2.startsWith("/")) {
            C15330i c15330i = new C15330i(str);
            c15330i.f55334b = C15330i.m9110a(null, c15330i.f55336d);
            str3 = c15330i.m9106b() + str2;
        } else {
            str3 = str2;
            if (!str2.startsWith("http://")) {
                if (str2.startsWith("https://")) {
                    str3 = str2;
                } else {
                    str3 = str + str2;
                }
            }
        }
        return m9127a(str3, obj, true);
    }

    /* renamed from: a */
    private static String m9124a(String str, Iterator<?> it2, boolean z, EnumC15319a enumC15319a) {
        String str2;
        if (!it2.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            str2 = enumC15319a.getExplodeJoiner();
        } else {
            if (enumC15319a.requiresVarAssignment()) {
                sb.append(C15201a.m9294e(str));
                sb.append("=");
            }
            str2 = ",";
        }
        while (it2.hasNext()) {
            if (z && enumC15319a.requiresVarAssignment()) {
                sb.append(C15201a.m9294e(str));
                sb.append("=");
            }
            sb.append(enumC15319a.getEncodedValue(it2.next().toString()));
            if (it2.hasNext()) {
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String m9123a(String str, Map<String, Object> map, boolean z, EnumC15319a enumC15319a) {
        String str2;
        String str3;
        if (map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            str3 = enumC15319a.getExplodeJoiner();
            str2 = "=";
        } else {
            if (enumC15319a.requiresVarAssignment()) {
                sb.append(C15201a.m9294e(str));
                sb.append("=");
            }
            str3 = ",";
            str2 = ",";
        }
        Iterator<Map.Entry<String, Object>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, Object> next = it2.next();
            String encodedValue = enumC15319a.getEncodedValue(next.getKey());
            String encodedValue2 = enumC15319a.getEncodedValue(next.getValue().toString());
            sb.append(encodedValue);
            sb.append(str2);
            sb.append(encodedValue2);
            if (it2.hasNext()) {
                sb.append(str3);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static Map<String, Object> m9128a(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : C15232j.m9235b(obj).entrySet()) {
            Object value = entry.getValue();
            if (value != null && !C15232j.m9241a(value)) {
                linkedHashMap.put(entry.getKey(), value);
            }
        }
        return linkedHashMap;
    }
}
