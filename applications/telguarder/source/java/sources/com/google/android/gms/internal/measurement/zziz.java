package com.google.android.gms.internal.measurement;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zziz.class */
public final class zziz {
    public static String zza(zzix zzixVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zzc(zzixVar, sb, 0);
        return sb.toString();
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
                sb.append(zzju.zza(zzgs.zzk((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgs) {
                sb.append(": \"");
                sb.append(zzju.zza((zzgs) obj));
                sb.append('\"');
            } else if (obj instanceof zzhs) {
                sb.append(" {");
                zzc((zzhs) obj, sb, i + 2);
                sb.append("\n");
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
                zzb(sb, i4, SDKConstants.PARAM_KEY, entry2.getKey());
                zzb(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    private static void zzc(zzix zzixVar, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : zzixVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String valueOf = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf2 = String.valueOf(substring.substring(1, substring.length() - 4));
                String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zzb(sb, i, zzd(concat), zzhs.zzbA(method2, zzixVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb, i, zzd(concat2), zzhs.zzbA(method3, zzixVar, new Object[0]));
                }
            }
            String valueOf5 = String.valueOf(substring);
            if (((Method) hashMap2.get(valueOf5.length() != 0 ? "set".concat(valueOf5) : new String("set"))) != null) {
                if (substring.endsWith("Bytes")) {
                    String valueOf6 = String.valueOf(substring.substring(0, substring.length() - 5));
                    if (!hashMap.containsKey(valueOf6.length() != 0 ? "get".concat(valueOf6) : new String("get"))) {
                    }
                }
                String valueOf7 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf8 = String.valueOf(substring.substring(1));
                String concat3 = valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7);
                String valueOf9 = String.valueOf(substring);
                Method method4 = (Method) hashMap.get(valueOf9.length() != 0 ? "get".concat(valueOf9) : new String("get"));
                String valueOf10 = String.valueOf(substring);
                Method method5 = (Method) hashMap.get(valueOf10.length() != 0 ? "has".concat(valueOf10) : new String("has"));
                if (method4 != null) {
                    Object zzbA = zzhs.zzbA(method4, zzixVar, new Object[0]);
                    if (method5 == null) {
                        if (zzbA instanceof Boolean) {
                            if (((Boolean) zzbA).booleanValue()) {
                                zzb(sb, i, zzd(concat3), zzbA);
                            }
                        } else if (zzbA instanceof Integer) {
                            if (((Integer) zzbA).intValue() != 0) {
                                zzb(sb, i, zzd(concat3), zzbA);
                            }
                        } else if (zzbA instanceof Float) {
                            if (((Float) zzbA).floatValue() != 0.0f) {
                                zzb(sb, i, zzd(concat3), zzbA);
                            }
                        } else if (!(zzbA instanceof Double)) {
                            if (zzbA instanceof String) {
                                equals = zzbA.equals("");
                            } else if (zzbA instanceof zzgs) {
                                equals = zzbA.equals(zzgs.zzb);
                            } else if (!(zzbA instanceof zzix)) {
                                if ((zzbA instanceof Enum) && ((Enum) zzbA).ordinal() == 0) {
                                }
                                zzb(sb, i, zzd(concat3), zzbA);
                            } else if (zzbA != ((zzix) zzbA).zzbK()) {
                                zzb(sb, i, zzd(concat3), zzbA);
                            }
                            if (!equals) {
                                zzb(sb, i, zzd(concat3), zzbA);
                            }
                        } else if (((Double) zzbA).doubleValue() != 0.0d) {
                            zzb(sb, i, zzd(concat3), zzbA);
                        }
                    } else if (((Boolean) zzhs.zzbA(method5, zzixVar, new Object[0])).booleanValue()) {
                        zzb(sb, i, zzd(concat3), zzbA);
                    }
                }
            }
        }
        if (zzixVar instanceof zzhp) {
            zzhj zzhjVar = ((zzhp) zzixVar).zza;
            throw null;
        }
        zzjx zzjxVar = ((zzhs) zzixVar).zzc;
        if (zzjxVar == null) {
            return;
        }
        zzjxVar.zzg(sb, i);
    }

    private static final String zzd(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
