package com.google.android.gms.tagmanager;

import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.internal.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cn.class */
public final class cn {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f4361a = null;

    /* renamed from: b  reason: collision with root package name */
    private static Long f4362b = new Long(0);
    private static Double c = new Double(0.0d);
    private static cm d = cm.a(0);
    private static String e = new String(BuildConfig.FLAVOR);
    private static Boolean f = new Boolean(false);
    private static List<Object> g = new ArrayList(0);
    private static Map<Object, Object> h = new HashMap();
    private static k.a i = a((Object) e);

    public static k.a a(Object obj) {
        k.a aVar;
        boolean z = false;
        k.a aVar2 = new k.a();
        if (obj instanceof k.a) {
            aVar = (k.a) obj;
        } else {
            if (obj instanceof String) {
                aVar2.f4210a = 1;
                aVar2.f4211b = (String) obj;
            } else if (obj instanceof List) {
                aVar2.f4210a = 2;
                List<Object> list = (List) obj;
                ArrayList arrayList = new ArrayList(list.size());
                z = false;
                for (Object obj2 : list) {
                    k.a a2 = a(obj2);
                    if (a2 == i) {
                        aVar = i;
                        break;
                    }
                    z = z || a2.l;
                    arrayList.add(a2);
                }
                aVar2.c = (k.a[]) arrayList.toArray(new k.a[0]);
            } else if (obj instanceof Map) {
                aVar2.f4210a = 3;
                Set<Map.Entry> entrySet = ((Map) obj).entrySet();
                ArrayList arrayList2 = new ArrayList(entrySet.size());
                ArrayList arrayList3 = new ArrayList(entrySet.size());
                z = false;
                for (Map.Entry entry : entrySet) {
                    k.a a3 = a(entry.getKey());
                    k.a a4 = a(entry.getValue());
                    if (a3 == i || a4 == i) {
                        aVar = i;
                        break;
                    }
                    z = z || a3.l || a4.l;
                    arrayList2.add(a3);
                    arrayList3.add(a4);
                }
                aVar2.d = (k.a[]) arrayList2.toArray(new k.a[0]);
                aVar2.e = (k.a[]) arrayList3.toArray(new k.a[0]);
            } else if (c(obj)) {
                aVar2.f4210a = 1;
                aVar2.f4211b = obj.toString();
            } else if (d(obj)) {
                aVar2.f4210a = 6;
                aVar2.h = e(obj);
            } else if (obj instanceof Boolean) {
                aVar2.f4210a = 8;
                aVar2.i = ((Boolean) obj).booleanValue();
            } else {
                String valueOf = String.valueOf(obj == null ? "null" : obj.getClass().toString());
                an.a(valueOf.length() != 0 ? "Converting to Value from unknown object type: ".concat(valueOf) : new String("Converting to Value from unknown object type: "));
                aVar = i;
            }
            aVar2.l = z;
            aVar = aVar2;
        }
        return aVar;
    }

    public static k.a a(String str) {
        k.a aVar = new k.a();
        aVar.f4210a = 5;
        aVar.g = str;
        return aVar;
    }

    public static Object a() {
        return null;
    }

    public static String a(k.a aVar) {
        return b(e(aVar));
    }

    public static cm b(k.a aVar) {
        cm b2;
        double d2;
        Object e2 = e(aVar);
        if (e2 instanceof cm) {
            b2 = (cm) e2;
        } else if (d(e2)) {
            b2 = cm.a(e(e2));
        } else if (c(e2)) {
            if (e2 instanceof Number) {
                d2 = ((Number) e2).doubleValue();
            } else {
                an.a("getDouble received non-Number");
                d2 = 0.0d;
            }
            b2 = cm.a(Double.valueOf(d2));
        } else {
            b2 = b(b(e2));
        }
        return b2;
    }

    private static cm b(String str) {
        cm cmVar;
        try {
            cmVar = cm.a(str);
        } catch (NumberFormatException e2) {
            an.a(new StringBuilder(String.valueOf(str).length() + 33).append("Failed to convert '").append(str).append("' to a number.").toString());
            cmVar = d;
        }
        return cmVar;
    }

    public static Long b() {
        return f4362b;
    }

    private static String b(Object obj) {
        return obj == null ? e : obj.toString();
    }

    public static Boolean c() {
        return f;
    }

    public static Long c(k.a aVar) {
        Long valueOf;
        Object e2 = e(aVar);
        if (d(e2)) {
            valueOf = Long.valueOf(e(e2));
        } else {
            cm b2 = b(b(e2));
            valueOf = b2 == d ? f4362b : Long.valueOf(b2.longValue());
        }
        return valueOf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if ((!((com.google.android.gms.tagmanager.cm) r2).f4359a) != false) goto L_0x002b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean c(java.lang.Object r2) {
        /*
            r0 = 0
            r3 = r0
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Double
            if (r0 != 0) goto L_0x002b
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Float
            if (r0 != 0) goto L_0x002b
            r0 = r3
            r4 = r0
            r0 = r2
            boolean r0 = r0 instanceof com.google.android.gms.tagmanager.cm
            if (r0 == 0) goto L_0x002d
            r0 = r2
            com.google.android.gms.tagmanager.cm r0 = (com.google.android.gms.tagmanager.cm) r0
            boolean r0 = r0.f4359a
            if (r0 != 0) goto L_0x002f
            r0 = 1
            r5 = r0
        L_0x0025:
            r0 = r3
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L_0x002d
        L_0x002b:
            r0 = 1
            r4 = r0
        L_0x002d:
            r0 = r4
            return r0
        L_0x002f:
            r0 = 0
            r5 = r0
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.cn.c(java.lang.Object):boolean");
    }

    public static cm d() {
        return d;
    }

    public static Boolean d(k.a aVar) {
        Boolean bool;
        Object e2 = e(aVar);
        if (e2 instanceof Boolean) {
            bool = (Boolean) e2;
        } else {
            String b2 = b(e2);
            bool = "true".equalsIgnoreCase(b2) ? Boolean.TRUE : "false".equalsIgnoreCase(b2) ? Boolean.FALSE : f;
        }
        return bool;
    }

    private static boolean d(Object obj) {
        return (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || ((obj instanceof cm) && ((cm) obj).f4359a);
    }

    private static long e(Object obj) {
        long j;
        if (obj instanceof Number) {
            j = ((Number) obj).longValue();
        } else {
            an.a("getInt64 received non-Number");
            j = 0;
        }
        return j;
    }

    public static Object e(k.a aVar) {
        Object valueOf;
        int i2 = 0;
        int i3 = 0;
        if (aVar != null) {
            switch (aVar.f4210a) {
                case 1:
                    valueOf = aVar.f4211b;
                    break;
                case 2:
                    ArrayList arrayList = new ArrayList(aVar.c.length);
                    k.a[] aVarArr = aVar.c;
                    int length = aVarArr.length;
                    while (true) {
                        if (i3 >= length) {
                            valueOf = arrayList;
                            break;
                        } else {
                            Object e2 = e(aVarArr[i3]);
                            if (e2 == null) {
                                valueOf = null;
                                break;
                            } else {
                                arrayList.add(e2);
                                i3++;
                            }
                        }
                    }
                case 3:
                    if (aVar.d.length != aVar.e.length) {
                        String valueOf2 = String.valueOf(aVar.toString());
                        an.a(valueOf2.length() != 0 ? "Converting an invalid value to object: ".concat(valueOf2) : new String("Converting an invalid value to object: "));
                        valueOf = null;
                        break;
                    } else {
                        HashMap hashMap = new HashMap(aVar.e.length);
                        for (int i4 = 0; i4 < aVar.d.length; i4++) {
                            Object e3 = e(aVar.d[i4]);
                            Object e4 = e(aVar.e[i4]);
                            if (e3 == null || e4 == null) {
                                valueOf = null;
                                break;
                            } else {
                                hashMap.put(e3, e4);
                            }
                        }
                        valueOf = hashMap;
                        break;
                    }
                case 4:
                    an.a("Trying to convert a macro reference to object");
                    valueOf = null;
                    break;
                case 5:
                    an.a("Trying to convert a function id to object");
                    valueOf = null;
                    break;
                case 6:
                    valueOf = Long.valueOf(aVar.h);
                    break;
                case 7:
                    StringBuffer stringBuffer = new StringBuffer();
                    k.a[] aVarArr2 = aVar.j;
                    int length2 = aVarArr2.length;
                    while (true) {
                        if (i2 >= length2) {
                            valueOf = stringBuffer.toString();
                            break;
                        } else {
                            String a2 = a(aVarArr2[i2]);
                            if (a2 == e) {
                                valueOf = null;
                                break;
                            } else {
                                stringBuffer.append(a2);
                                i2++;
                            }
                        }
                    }
                case 8:
                    valueOf = Boolean.valueOf(aVar.i);
                    break;
                default:
                    an.a(new StringBuilder(46).append("Failed to convert a value of type: ").append(aVar.f4210a).toString());
                    valueOf = null;
                    break;
            }
        } else {
            valueOf = null;
        }
        return valueOf;
    }

    public static String e() {
        return e;
    }

    public static k.a f() {
        return i;
    }
}
