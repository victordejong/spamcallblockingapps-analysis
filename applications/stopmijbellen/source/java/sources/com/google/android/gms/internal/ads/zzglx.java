package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglx.class */
public final class zzglx {
    public static String zza(zzglv zzglvVar, String str) {
        StringBuilder m7624k = C0608b.m7624k("# ", str);
        zzd(zzglvVar, m7624k, 0);
        return m7624k.toString();
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
                sb.append(zzgnd.zza(zzgjf.zzx((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgjf) {
                sb.append(": \"");
                sb.append(zzgnd.zza((zzgjf) obj));
                sb.append('\"');
            } else if (obj instanceof zzgkl) {
                sb.append(" {");
                zzd((zzgkl) obj, sb, i + 2);
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
                zzb(sb, i4, "key", entry2.getKey());
                zzb(sb, i4, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry2.getValue());
                sb.append("\n");
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
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    private static void zzd(zzglv zzglvVar, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet treeSet = new TreeSet();
        for (Method method : zzglvVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        Iterator it2 = treeSet.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String valueOf = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf2 = String.valueOf(substring.substring(1, substring.length() - 4));
                String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zzb(sb, i, zzc(concat), zzgkl.zzaI(method2, zzglvVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb, i, zzc(concat2), zzgkl.zzaI(method3, zzglvVar, new Object[0]));
                }
            }
            if (((Method) hashMap2.get(substring.length() != 0 ? "set".concat(substring) : new String("set"))) != null) {
                if (substring.endsWith("Bytes")) {
                    String valueOf5 = String.valueOf(substring.substring(0, substring.length() - 5));
                    if (!hashMap.containsKey(valueOf5.length() != 0 ? "get".concat(valueOf5) : new String("get"))) {
                    }
                }
                String valueOf6 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf7 = String.valueOf(substring.substring(1));
                String concat3 = valueOf7.length() != 0 ? valueOf6.concat(valueOf7) : new String(valueOf6);
                Method method4 = (Method) hashMap.get(substring.length() != 0 ? "get".concat(substring) : new String("get"));
                Method method5 = (Method) hashMap.get(substring.length() != 0 ? "has".concat(substring) : new String("has"));
                if (method4 != null) {
                    Object zzaI = zzgkl.zzaI(method4, zzglvVar, new Object[0]);
                    if (method5 == null) {
                        if (zzaI instanceof Boolean) {
                            if (((Boolean) zzaI).booleanValue()) {
                                zzb(sb, i, zzc(concat3), zzaI);
                            }
                        } else if (zzaI instanceof Integer) {
                            if (((Integer) zzaI).intValue() != 0) {
                                zzb(sb, i, zzc(concat3), zzaI);
                            }
                        } else if (zzaI instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) zzaI).floatValue()) != 0) {
                                zzb(sb, i, zzc(concat3), zzaI);
                            }
                        } else if (!(zzaI instanceof Double)) {
                            if (zzaI instanceof String) {
                                equals = zzaI.equals("");
                            } else if (zzaI instanceof zzgjf) {
                                equals = zzaI.equals(zzgjf.zzb);
                            } else if (!(zzaI instanceof zzglv)) {
                                if ((zzaI instanceof Enum) && ((Enum) zzaI).ordinal() == 0) {
                                }
                                zzb(sb, i, zzc(concat3), zzaI);
                            } else if (zzaI != ((zzglv) zzaI).zzbp()) {
                                zzb(sb, i, zzc(concat3), zzaI);
                            }
                            if (!equals) {
                                zzb(sb, i, zzc(concat3), zzaI);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) zzaI).doubleValue()) != 0) {
                            zzb(sb, i, zzc(concat3), zzaI);
                        }
                    } else if (((Boolean) zzgkl.zzaI(method5, zzglvVar, new Object[0])).booleanValue()) {
                        zzb(sb, i, zzc(concat3), zzaI);
                    }
                }
            }
        }
        if (zzglvVar instanceof zzgki) {
            zzgki zzgkiVar = (zzgki) zzglvVar;
            throw null;
        }
        zzgng zzgngVar = ((zzgkl) zzglvVar).zzc;
        if (zzgngVar == null) {
            return;
        }
        zzgngVar.zzg(sb, i);
    }
}
