package com.google.api.client.http;

import com.google.api.client.a.ag;
import com.google.api.client.a.j;
import com.google.common.base.c;
import com.google.common.base.m;
import com.google.common.base.o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.ListIterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Character, a> f31794a = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ad$a.class */
    public enum a {
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

        a(Character ch, String str, String str2, boolean z, boolean z2) {
            this.propertyPrefix = ch;
            this.outputPrefix = (String) m.a(str);
            this.explodeJoiner = (String) m.a(str2);
            this.requiresVarAssignment = z;
            this.reservedExpansion = z2;
            if (ch != null) {
                ad.f31794a.put(ch, this);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getEncodedValue(String str) {
            return this.reservedExpansion ? com.google.api.client.a.a.a.f(str) : com.google.api.client.a.a.a.b(str);
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
        a.values();
    }

    private static String a(String str, Object obj, boolean z) {
        String str2;
        Map<String, Object> a2 = a(obj);
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int indexOf = str.indexOf(123, i);
            if (indexOf == -1) {
                sb.append(str.substring(i));
                break;
            }
            sb.append(str.substring(i, indexOf));
            int indexOf2 = str.indexOf(JsonReaderKt.END_OBJ, indexOf + 2);
            String substring = str.substring(indexOf + 1, indexOf2);
            a aVar = f31794a.get(Character.valueOf(substring.charAt(0)));
            a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = a.SIMPLE;
            }
            ListIterator<String> listIterator = o.a(c.a(',')).a(substring).listIterator();
            boolean z2 = true;
            while (listIterator.hasNext()) {
                String next = listIterator.next();
                boolean endsWith = next.endsWith("*");
                int varNameStartIndex = listIterator.nextIndex() == 1 ? aVar2.getVarNameStartIndex() : 0;
                int length2 = next.length();
                int i2 = length2;
                if (endsWith) {
                    i2 = length2 - 1;
                }
                String substring2 = next.substring(varNameStartIndex, i2);
                Object remove = a2.remove(substring2);
                if (remove != null) {
                    if (!z2) {
                        sb.append(aVar2.getExplodeJoiner());
                    } else {
                        sb.append(aVar2.getOutputPrefix());
                        z2 = false;
                    }
                    if (remove instanceof Iterator) {
                        str2 = a(substring2, (Iterator) remove, endsWith, aVar2);
                    } else if ((remove instanceof Iterable) || remove.getClass().isArray()) {
                        str2 = a(substring2, ag.a(remove).iterator(), endsWith, aVar2);
                    } else if (remove.getClass().isEnum()) {
                        String str3 = com.google.api.client.a.m.a((Enum<?>) remove).f31651c;
                        if (str3 == null) {
                            str3 = remove.toString();
                        }
                        str2 = a(substring2, str3, aVar2);
                    } else {
                        str2 = !j.d(remove) ? a(substring2, a(remove), endsWith, aVar2) : a(substring2, remove.toString(), aVar2);
                    }
                    sb.append((Object) str2);
                }
            }
            i = indexOf2 + 1;
        }
        i.a(a2.entrySet(), sb, false);
        return sb.toString();
    }

    private static String a(String str, String str2, a aVar) {
        return aVar.requiresVarAssignment() ? String.format("%s=%s", str, aVar.getEncodedValue(str2)) : aVar.getEncodedValue(str2);
    }

    public static String a(String str, String str2, Object obj) {
        String str3;
        if (str2.startsWith("/")) {
            i iVar = new i(str);
            iVar.f31807b = i.a(null, iVar.f31809d);
            str3 = iVar.b() + str2;
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
        return a(str3, obj, true);
    }

    private static String a(String str, Iterator<?> it2, boolean z, a aVar) {
        String str2;
        if (!it2.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            str2 = aVar.getExplodeJoiner();
        } else {
            if (aVar.requiresVarAssignment()) {
                sb.append(com.google.api.client.a.a.a.e(str));
                sb.append("=");
            }
            str2 = ",";
        }
        while (it2.hasNext()) {
            if (z && aVar.requiresVarAssignment()) {
                sb.append(com.google.api.client.a.a.a.e(str));
                sb.append("=");
            }
            sb.append(aVar.getEncodedValue(it2.next().toString()));
            if (it2.hasNext()) {
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    private static String a(String str, Map<String, Object> map, boolean z, a aVar) {
        if (map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        String str2 = "=";
        String str3 = ",";
        if (z) {
            str3 = aVar.getExplodeJoiner();
        } else {
            if (aVar.requiresVarAssignment()) {
                sb.append(com.google.api.client.a.a.a.e(str));
                sb.append("=");
            }
            str2 = ",";
        }
        Iterator<Map.Entry<String, Object>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, Object> next = it2.next();
            String encodedValue = aVar.getEncodedValue(next.getKey());
            String encodedValue2 = aVar.getEncodedValue(next.getValue().toString());
            sb.append(encodedValue);
            sb.append(str2);
            sb.append(encodedValue2);
            if (it2.hasNext()) {
                sb.append(str3);
            }
        }
        return sb.toString();
    }

    private static Map<String, Object> a(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : j.b(obj).entrySet()) {
            Object value = entry.getValue();
            if (value != null && !j.a(value)) {
                linkedHashMap.put(entry.getKey(), value);
            }
        }
        return linkedHashMap;
    }
}
