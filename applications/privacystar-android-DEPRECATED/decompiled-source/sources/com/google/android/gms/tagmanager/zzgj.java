package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzgj.class */
public final class zzgj {
    private static final Object zzbgo = null;
    private static Long zzbgp = new Long(0);
    private static Double zzbgq = new Double(0.0d);
    private static zzgi zzbgr = zzgi.zzar(0);
    private static String zzbgs = new String("");
    private static Boolean zzbgt = new Boolean(false);
    private static List<Object> zzbgu = new ArrayList(0);
    private static Map<Object, Object> zzbgv = new HashMap();
    private static zzp zzbgw = zzj(zzbgs);

    private static double getDouble(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        zzdi.m329e("getDouble received non-Number");
        return 0.0d;
    }

    public static String zzc(zzp zzpVar) {
        return zzi(zzh(zzpVar));
    }

    public static zzgi zzd(zzp zzpVar) {
        Object zzh = zzh(zzpVar);
        return zzh instanceof zzgi ? (zzgi) zzh : zzl(zzh) ? zzgi.zzar(zzm(zzh)) : zzk(zzh) ? zzgi.zza(Double.valueOf(getDouble(zzh))) : zzec(zzi(zzh));
    }

    public static Long zze(zzp zzpVar) {
        Object zzh = zzh(zzpVar);
        if (zzl(zzh)) {
            return Long.valueOf(zzm(zzh));
        }
        zzgi zzec = zzec(zzi(zzh));
        return zzec == zzbgr ? zzbgp : Long.valueOf(zzec.longValue());
    }

    public static zzp zzeb(String str) {
        zzp zzpVar = new zzp();
        zzpVar.type = 5;
        zzpVar.zzqn = str;
        return zzpVar;
    }

    private static zzgi zzec(String str) {
        try {
            return zzgi.zzea(str);
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
            sb.append("Failed to convert '");
            sb.append(str);
            sb.append("' to a number.");
            zzdi.m329e(sb.toString());
            return zzbgr;
        }
    }

    public static Double zzf(zzp zzpVar) {
        Object zzh = zzh(zzpVar);
        if (zzk(zzh)) {
            return Double.valueOf(getDouble(zzh));
        }
        zzgi zzec = zzec(zzi(zzh));
        return zzec == zzbgr ? zzbgq : Double.valueOf(zzec.doubleValue());
    }

    public static Boolean zzg(zzp zzpVar) {
        Object zzh = zzh(zzpVar);
        if (zzh instanceof Boolean) {
            return (Boolean) zzh;
        }
        String zzi = zzi(zzh);
        return "true".equalsIgnoreCase(zzi) ? Boolean.TRUE : "false".equalsIgnoreCase(zzi) ? Boolean.FALSE : zzbgt;
    }

    public static Object zzh(zzp zzpVar) {
        if (zzpVar == null) {
            return null;
        }
        switch (zzpVar.type) {
            case 1:
                return zzpVar.string;
            case 2:
                ArrayList arrayList = new ArrayList(zzpVar.zzqj.length);
                for (zzp zzpVar2 : zzpVar.zzqj) {
                    Object zzh = zzh(zzpVar2);
                    if (zzh == null) {
                        return null;
                    }
                    arrayList.add(zzh);
                }
                return arrayList;
            case 3:
                if (zzpVar.zzqk.length != zzpVar.zzql.length) {
                    String valueOf = String.valueOf(zzpVar.toString());
                    zzdi.m329e(valueOf.length() != 0 ? "Converting an invalid value to object: ".concat(valueOf) : new String("Converting an invalid value to object: "));
                    return null;
                }
                HashMap hashMap = new HashMap(zzpVar.zzql.length);
                for (int i = 0; i < zzpVar.zzqk.length; i++) {
                    Object zzh2 = zzh(zzpVar.zzqk[i]);
                    Object zzh3 = zzh(zzpVar.zzql[i]);
                    if (zzh2 == null || zzh3 == null) {
                        return null;
                    }
                    hashMap.put(zzh2, zzh3);
                }
                return hashMap;
            case 4:
                zzdi.m329e("Trying to convert a macro reference to object");
                return null;
            case 5:
                zzdi.m329e("Trying to convert a function id to object");
                return null;
            case 6:
                return Long.valueOf(zzpVar.zzqo);
            case 7:
                StringBuilder sb = new StringBuilder();
                for (zzp zzpVar3 : zzpVar.zzqq) {
                    String zzi = zzi(zzh(zzpVar3));
                    if (zzi == zzbgs) {
                        return null;
                    }
                    sb.append(zzi);
                }
                return sb.toString();
            case 8:
                return Boolean.valueOf(zzpVar.zzqp);
            default:
                int i2 = zzpVar.type;
                StringBuilder sb2 = new StringBuilder(46);
                sb2.append("Failed to convert a value of type: ");
                sb2.append(i2);
                zzdi.m329e(sb2.toString());
                return null;
        }
    }

    private static String zzi(Object obj) {
        return obj == null ? zzbgs : obj.toString();
    }

    public static zzp zzj(Object obj) {
        zzp zzpVar = new zzp();
        if (obj instanceof zzp) {
            return (zzp) obj;
        }
        boolean z = false;
        if (obj instanceof String) {
            zzpVar.type = 1;
            zzpVar.string = (String) obj;
        } else if (obj instanceof List) {
            zzpVar.type = 2;
            List<Object> list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            z = false;
            for (Object obj2 : list) {
                zzp zzj = zzj(obj2);
                if (zzj == zzbgw) {
                    return zzbgw;
                }
                z = z || zzj.zzqs;
                arrayList.add(zzj);
            }
            zzpVar.zzqj = (zzp[]) arrayList.toArray(new zzp[0]);
        } else if (obj instanceof Map) {
            zzpVar.type = 3;
            Set<Map.Entry> entrySet = ((Map) obj).entrySet();
            ArrayList arrayList2 = new ArrayList(entrySet.size());
            ArrayList arrayList3 = new ArrayList(entrySet.size());
            z = false;
            for (Map.Entry entry : entrySet) {
                zzp zzj2 = zzj(entry.getKey());
                zzp zzj3 = zzj(entry.getValue());
                if (zzj2 == zzbgw || zzj3 == zzbgw) {
                    return zzbgw;
                }
                z = z || zzj2.zzqs || zzj3.zzqs;
                arrayList2.add(zzj2);
                arrayList3.add(zzj3);
            }
            zzpVar.zzqk = (zzp[]) arrayList2.toArray(new zzp[0]);
            zzpVar.zzql = (zzp[]) arrayList3.toArray(new zzp[0]);
        } else if (zzk(obj)) {
            zzpVar.type = 1;
            zzpVar.string = obj.toString();
        } else if (zzl(obj)) {
            zzpVar.type = 6;
            zzpVar.zzqo = zzm(obj);
        } else if (obj instanceof Boolean) {
            zzpVar.type = 8;
            zzpVar.zzqp = ((Boolean) obj).booleanValue();
        } else {
            String valueOf = String.valueOf(obj == null ? "null" : obj.getClass().toString());
            zzdi.m329e(valueOf.length() != 0 ? "Converting to Value from unknown object type: ".concat(valueOf) : new String("Converting to Value from unknown object type: "));
            return zzbgw;
        }
        zzpVar.zzqs = z;
        return zzpVar;
    }

    private static boolean zzk(Object obj) {
        if ((obj instanceof Double) || (obj instanceof Float)) {
            return true;
        }
        return (obj instanceof zzgi) && ((zzgi) obj).zzpy();
    }

    private static boolean zzl(Object obj) {
        if ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long)) {
            return true;
        }
        return (obj instanceof zzgi) && ((zzgi) obj).zzpz();
    }

    private static long zzm(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        zzdi.m329e("getInt64 received non-Number");
        return 0L;
    }

    public static Object zzqa() {
        return null;
    }

    public static Long zzqb() {
        return zzbgp;
    }

    public static Double zzqc() {
        return zzbgq;
    }

    public static Boolean zzqd() {
        return zzbgt;
    }

    public static zzgi zzqe() {
        return zzbgr;
    }

    public static String zzqf() {
        return zzbgs;
    }

    public static zzp zzqg() {
        return zzbgw;
    }
}
