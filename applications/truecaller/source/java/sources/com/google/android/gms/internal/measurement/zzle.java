package com.google.android.gms.internal.measurement;

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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzle.class */
public final class zzle {
    public static String zza(zzlc zzlcVar, String str) {
        StringBuilder m8696K = C22128a.m8696K("# ", str);
        zzd(zzlcVar, m8696K, 0);
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
                sb.append(zzlz.zza(zzix.zzm((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzix) {
                sb.append(": \"");
                sb.append(zzlz.zza((zzix) obj));
                sb.append('\"');
            } else if (obj instanceof zzjx) {
                sb.append(" {");
                zzd((zzjx) obj, sb, i + 2);
                sb.append(StringConstant.NEW_LINE);
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (!(obj instanceof Map.Entry)) {
                sb.append(": ");
                sb.append(obj);
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

    private static final String zzc(String str) {
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

    private static void zzd(zzlc zzlcVar, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet treeSet = new TreeSet();
        for (Method method : zzlcVar.getClass().getDeclaredMethods()) {
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
                    zzb(sb, i, zzc(concat), zzjx.zzbC(method2, zzlcVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String m8607j22 = C22128a.m8607j2(substring, 0, 1);
                String m8603k22 = C22128a.m8603k2(substring, -3, 1);
                String concat2 = m8603k22.length() != 0 ? m8607j22.concat(m8603k22) : new String(m8607j22);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb, i, zzc(concat2), zzjx.zzbC(method3, zzlcVar, new Object[0]));
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
                    Object zzbC = zzjx.zzbC(method4, zzlcVar, new Object[0]);
                    if (method5 == null) {
                        if (zzbC instanceof Boolean) {
                            if (((Boolean) zzbC).booleanValue()) {
                                zzb(sb, i, zzc(concat3), zzbC);
                            }
                        } else if (zzbC instanceof Integer) {
                            if (((Integer) zzbC).intValue() != 0) {
                                zzb(sb, i, zzc(concat3), zzbC);
                            }
                        } else if (zzbC instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) zzbC).floatValue()) != 0) {
                                zzb(sb, i, zzc(concat3), zzbC);
                            }
                        } else if (!(zzbC instanceof Double)) {
                            if (zzbC instanceof String) {
                                equals = zzbC.equals("");
                            } else if (zzbC instanceof zzix) {
                                equals = zzbC.equals(zzix.zzb);
                            } else if (!(zzbC instanceof zzlc)) {
                                if ((zzbC instanceof Enum) && ((Enum) zzbC).ordinal() == 0) {
                                }
                                zzb(sb, i, zzc(concat3), zzbC);
                            } else if (zzbC != ((zzlc) zzbC).zzbJ()) {
                                zzb(sb, i, zzc(concat3), zzbC);
                            }
                            if (!equals) {
                                zzb(sb, i, zzc(concat3), zzbC);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) zzbC).doubleValue()) != 0) {
                            zzb(sb, i, zzc(concat3), zzbC);
                        }
                    } else if (((Boolean) zzjx.zzbC(method5, zzlcVar, new Object[0])).booleanValue()) {
                        zzb(sb, i, zzc(concat3), zzbC);
                    }
                }
            }
        }
        if (zzlcVar instanceof zzju) {
            zzju zzjuVar = (zzju) zzlcVar;
            throw null;
        }
        zzmc zzmcVar = ((zzjx) zzlcVar).zzc;
        if (zzmcVar == null) {
            return;
        }
        zzmcVar.zzg(sb, i);
    }
}
