package com.google.android.gms.internal.ads;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghk.class */
public final class zzghk {
    public static String zza(zzghi zzghiVar, String str) {
        StringBuilder m8696K = C22128a.m8696K("# ", str);
        zzc(zzghiVar, m8696K, 0);
        return m8696K.toString();
    }

    public static final void zzb(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zzb(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zzb(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(zzgim.zza(zzgex.zzv((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgex) {
                sb.append(": \"");
                sb.append(zzgim.zza((zzgex) obj));
                sb.append('\"');
            } else if (obj instanceof zzgga) {
                sb.append(" {");
                zzc((zzgga) obj, sb, i + 2);
                sb.append(StringConstant.NEW_LINE);
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (!(obj instanceof Map.Entry)) {
                sb.append(": ");
                sb.append(obj.toString());
            } else {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                zzb(sb, i4, AnalyticsConstants.KEY, entry2.getKey());
                zzb(sb, i4, "value", entry2.getValue());
                sb.append(StringConstant.NEW_LINE);
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    private static void zzc(zzghi zzghiVar, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet treeSet = new TreeSet();
        for (Method method : zzghiVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String m8607j2 = C22128a.m8607j2(substring, 0, 1);
                String m8603k2 = C22128a.m8603k2(substring, -4, 1);
                String concat = m8603k2.length() != 0 ? m8607j2.concat(m8603k2) : new String(m8607j2);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zzb(sb, i, zzd(concat), zzgga.zzaA(method2, zzghiVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String m8607j22 = C22128a.m8607j2(substring, 0, 1);
                String m8603k22 = C22128a.m8603k2(substring, -3, 1);
                String concat2 = m8603k22.length() != 0 ? m8607j22.concat(m8603k22) : new String(m8607j22);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb, i, zzd(concat2), zzgga.zzaA(method3, zzghiVar, new Object[0]));
                }
            }
            if (((Method) hashMap2.get(substring.length() != 0 ? "set".concat(substring) : new String("set"))) != null) {
                if (substring.endsWith("Bytes")) {
                    String m8603k23 = C22128a.m8603k2(substring, -5, 0);
                    if (!hashMap.containsKey(m8603k23.length() != 0 ? "get".concat(m8603k23) : new String("get"))) {
                    }
                }
                String m8607j23 = C22128a.m8607j2(substring, 0, 1);
                String valueOf = String.valueOf(substring.substring(1));
                String concat3 = valueOf.length() != 0 ? m8607j23.concat(valueOf) : new String(m8607j23);
                Method method4 = (Method) hashMap.get(substring.length() != 0 ? "get".concat(substring) : new String("get"));
                Method method5 = (Method) hashMap.get(substring.length() != 0 ? "has".concat(substring) : new String("has"));
                if (method4 != null) {
                    Object zzaA = zzgga.zzaA(method4, zzghiVar, new Object[0]);
                    if (method5 == null) {
                        if (zzaA instanceof Boolean) {
                            if (((Boolean) zzaA).booleanValue()) {
                                zzb(sb, i, zzd(concat3), zzaA);
                            }
                        } else if (zzaA instanceof Integer) {
                            if (((Integer) zzaA).intValue() != 0) {
                                zzb(sb, i, zzd(concat3), zzaA);
                            }
                        } else if (zzaA instanceof Float) {
                            if (((Float) zzaA).floatValue() != 0.0f) {
                                zzb(sb, i, zzd(concat3), zzaA);
                            }
                        } else if (!(zzaA instanceof Double)) {
                            if (zzaA instanceof String) {
                                equals = zzaA.equals("");
                            } else if (zzaA instanceof zzgex) {
                                equals = zzaA.equals(zzgex.zzb);
                            } else if (!(zzaA instanceof zzghi)) {
                                if ((zzaA instanceof Enum) && ((Enum) zzaA).ordinal() == 0) {
                                }
                                zzb(sb, i, zzd(concat3), zzaA);
                            } else if (zzaA != ((zzghi) zzaA).zzbe()) {
                                zzb(sb, i, zzd(concat3), zzaA);
                            }
                            if (!equals) {
                                zzb(sb, i, zzd(concat3), zzaA);
                            }
                        } else if (((Double) zzaA).doubleValue() != PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                            zzb(sb, i, zzd(concat3), zzaA);
                        }
                    } else if (((Boolean) zzgga.zzaA(method5, zzghiVar, new Object[0])).booleanValue()) {
                        zzb(sb, i, zzd(concat3), zzaA);
                    }
                }
            }
        }
        if (zzghiVar instanceof zzgfx) {
            zzgfx zzgfxVar = (zzgfx) zzghiVar;
            throw null;
        }
        zzgip zzgipVar = ((zzgga) zzghiVar).zzc;
        if (zzgipVar == null) {
            return;
        }
        zzgipVar.zzg(sb, i);
    }

    private static final String zzd(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append(AnalyticsConstants.DELIMITER_MAIN);
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
