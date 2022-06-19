package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmz.class */
public final class dmz<T extends dnb<T>> {

    /* renamed from: d */
    private static final dmz f47259d = new dmz(true);

    /* renamed from: a */
    final dpu<T, Object> f47260a;

    /* renamed from: b */
    boolean f47261b;

    /* renamed from: c */
    boolean f47262c;

    private dmz() {
        this.f47260a = dpu.m16052a(16);
    }

    private dmz(dpu<T, Object> dpuVar) {
        this.f47260a = dpuVar;
        m16372b();
    }

    private dmz(boolean z) {
        this(dpu.m16052a(0));
        m16372b();
    }

    /* renamed from: a */
    public static int m16378a(dnb<?> dnbVar, Object obj) {
        dqx m16363b = dnbVar.m16363b();
        int m16364a = dnbVar.m16364a();
        if (dnbVar.m16361d()) {
            int i = 0;
            if (dnbVar.m16360e()) {
                for (Object obj2 : (List) obj) {
                    i += m16376a(m16363b, obj2);
                }
                return zzemk.m13667l(m16364a) + i + zzemk.m13662q(i);
            }
            Iterator it2 = ((List) obj).iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it2.hasNext()) {
                    return i3;
                }
                i2 = i3 + m16377a(m16363b, m16364a, it2.next());
            }
        } else {
            return m16377a(m16363b, m16364a, obj);
        }
    }

    /* renamed from: a */
    public static int m16377a(dqx dqxVar, int i, Object obj) {
        int m13667l = zzemk.m13667l(i);
        int i2 = m13667l;
        if (dqxVar == dqx.GROUP) {
            dnj.m16319a();
            i2 = m13667l << 1;
        }
        return i2 + m16376a(dqxVar, obj);
    }

    /* renamed from: a */
    private static int m16376a(dqx dqxVar, Object obj) {
        switch (dmy.f47258b[dqxVar.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                return zzemk.m13684f();
            case 2:
                ((Float) obj).floatValue();
                return zzemk.m13688e();
            case 3:
                return zzemk.m13689d(((Long) obj).longValue());
            case 4:
                return zzemk.m13685e(((Long) obj).longValue());
            case 5:
                return zzemk.m13666m(((Integer) obj).intValue());
            case 6:
                ((Long) obj).longValue();
                return zzemk.m13698c();
            case 7:
                ((Integer) obj).intValue();
                return zzemk.m13720a();
            case 8:
                ((Boolean) obj).booleanValue();
                return zzemk.m13679g();
            case 9:
                return zzemk.m13694c((dot) obj);
            case 10:
                return obj instanceof dnt ? zzemk.m13714a((dnt) obj) : zzemk.m13701b((dot) obj);
            case 11:
                return obj instanceof dlw ? zzemk.m13702b((dlw) obj) : zzemk.m13700b((String) obj);
            case 12:
                return obj instanceof dlw ? zzemk.m13702b((dlw) obj) : zzemk.m13699b((byte[]) obj);
            case 13:
                return zzemk.m13665n(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                return zzemk.m13709b();
            case 15:
                ((Long) obj).longValue();
                return zzemk.m13693d();
            case 16:
                return zzemk.m13664o(((Integer) obj).intValue());
            case 17:
                return zzemk.m13680f(((Long) obj).longValue());
            case 18:
                return obj instanceof dnm ? zzemk.m13663p(((dnm) obj).zzv()) : zzemk.m13663p(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: a */
    public static <T extends dnb<T>> dmz<T> m16380a() {
        return f47259d;
    }

    /* renamed from: a */
    private final Object m16379a(T t) {
        Object obj = this.f47260a.get(t);
        dot dotVar = obj;
        if (obj instanceof dnt) {
            dotVar = dnt.m16302a();
        }
        return dotVar;
    }

    /* renamed from: a */
    private static Object m16374a(Object obj) {
        if (obj instanceof doy) {
            return ((doy) obj).m16207a();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: a */
    public static void m16375a(zzemk zzemkVar, dqx dqxVar, int i, Object obj) throws IOException {
        if (dqxVar == dqx.GROUP) {
            dnj.m16319a();
            zzemkVar.mo13658a(i, 3);
            ((dot) obj).mo16258a(zzemkVar);
            zzemkVar.mo13658a(i, 4);
            return;
        }
        zzemkVar.mo13658a(i, dqxVar.zzbmi());
        switch (dmy.f47258b[dqxVar.ordinal()]) {
            case 1:
                zzemkVar.m13719a(((Double) obj).doubleValue());
                return;
            case 2:
                zzemkVar.m13718a(((Float) obj).floatValue());
                return;
            case 3:
                zzemkVar.mo13651a(((Long) obj).longValue());
                return;
            case 4:
                zzemkVar.mo13651a(((Long) obj).longValue());
                return;
            case 5:
                zzemkVar.mo13659a(((Integer) obj).intValue());
                return;
            case 6:
                zzemkVar.mo13639c(((Long) obj).longValue());
                return;
            case 7:
                zzemkVar.mo13638d(((Integer) obj).intValue());
                return;
            case 8:
                zzemkVar.m13711a(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((dot) obj).mo16258a(zzemkVar);
                return;
            case 10:
                zzemkVar.mo13649a((dot) obj);
                return;
            case 11:
                if (obj instanceof dlw) {
                    zzemkVar.mo13650a((dlw) obj);
                    return;
                } else {
                    zzemkVar.mo13648a((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof dlw) {
                    zzemkVar.mo13650a((dlw) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzemkVar.mo13647a(bArr, bArr.length);
                return;
            case 13:
                zzemkVar.mo13645b(((Integer) obj).intValue());
                return;
            case 14:
                zzemkVar.mo13638d(((Integer) obj).intValue());
                return;
            case 15:
                zzemkVar.mo13639c(((Long) obj).longValue());
                return;
            case 16:
                zzemkVar.m13697c(((Integer) obj).intValue());
                return;
            case 17:
                zzemkVar.m13703b(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof dnm) {
                    zzemkVar.mo13659a(((dnm) obj).zzv());
                    return;
                } else {
                    zzemkVar.mo13659a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: b */
    public static int m16370b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.m16362c() != dra.MESSAGE || key.m16361d() || key.m16360e()) ? m16378a((dnb<?>) key, value) : value instanceof dnt ? zzemk.m13707b(entry.getKey().m16364a(), (dnt) value) : zzemk.m13706b(entry.getKey().m16364a(), (dot) value);
    }

    /* renamed from: b */
    private final void m16371b(T t, Object obj) {
        if (!t.m16361d()) {
            m16368c(t, obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                i++;
                m16368c(t, arrayList2.get(i));
            }
            obj = arrayList;
        }
        if (obj instanceof dnt) {
            this.f47262c = true;
        }
        this.f47260a.m16048a((dpu<T, Object>) t, (T) obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0069, code lost:
        if ((r9 instanceof com.google.android.gms.internal.ads.dnm) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
        if ((r9 instanceof byte[]) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0058, code lost:
        if ((r9 instanceof com.google.android.gms.internal.ads.dnt) == false) goto L4;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m16368c(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.ads.dqx r0 = r0.m16363b()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.ads.dnj.m16316a(r0)
            int[] r0 = com.google.android.gms.internal.ads.dmy.f47257a
            r1 = r10
            com.google.android.gms.internal.ads.dra r1 = r1.zzbmh()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto Laa;
                case 2: goto La2;
                case 3: goto L9a;
                case 4: goto L92;
                case 5: goto L8a;
                case 6: goto L82;
                case 7: goto L6f;
                case 8: goto L5e;
                case 9: goto L4d;
                default: goto L48;
            }
        L48:
            r0 = 0
            r11 = r0
            goto Laf
        L4d:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.dot
            if (r0 != 0) goto L7d
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.dnt
            if (r0 == 0) goto L48
            goto L7d
        L5e:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L7d
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.dnm
            if (r0 == 0) goto L48
            goto L7d
        L6f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.dlw
            if (r0 != 0) goto L7d
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L48
        L7d:
            r0 = 1
            r11 = r0
            goto Laf
        L82:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.String
            r11 = r0
            goto Laf
        L8a:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Boolean
            r11 = r0
            goto Laf
        L92:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Double
            r11 = r0
            goto Laf
        L9a:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Float
            r11 = r0
            goto Laf
        La2:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Long
            r11 = r0
            goto Laf
        Laa:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            r11 = r0
        Laf:
            r0 = r11
            if (r0 == 0) goto Lb4
            return
        Lb4:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r8
            int r6 = r6.m16364a()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r8
            com.google.android.gms.internal.ads.dqx r6 = r6.m16363b()
            com.google.android.gms.internal.ads.dra r6 = r6.zzbmh()
            r4[r5] = r6
            r4 = r3
            r5 = 2
            r6 = r9
            java.lang.Class r6 = r6.getClass()
            java.lang.String r6 = r6.getName()
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dmz.m16368c(com.google.android.gms.internal.ads.dnb, java.lang.Object):void");
    }

    /* renamed from: c */
    private static <T extends dnb<T>> boolean m16367c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.m16362c() == dra.MESSAGE) {
            if (key.m16361d()) {
                for (dot dotVar : (List) entry.getValue()) {
                    if (!dotVar.mo16249j()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof dot) {
                return ((dot) value).mo16249j();
            } else if (value instanceof dnt) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    /* renamed from: a */
    public final void m16373a(Map.Entry<T, Object> entry) {
        doy doyVar;
        T key = entry.getKey();
        Object value = entry.getValue();
        dot dotVar = value;
        if (value instanceof dnt) {
            dotVar = dnt.m16302a();
        }
        if (key.m16361d()) {
            Object m16379a = m16379a((dmz<T>) key);
            ArrayList arrayList = m16379a;
            if (m16379a == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) dotVar) {
                ((List) arrayList).add(m16374a(obj));
            }
            this.f47260a.m16048a((dpu<T, Object>) key, (T) arrayList);
        } else if (key.m16362c() != dra.MESSAGE) {
            this.f47260a.m16048a((dpu<T, Object>) key, (T) m16374a(dotVar));
        } else {
            Object m16379a2 = m16379a((dmz<T>) key);
            if (m16379a2 == null) {
                this.f47260a.m16048a((dpu<T, Object>) key, (T) m16374a(dotVar));
                return;
            }
            if (m16379a2 instanceof doy) {
                doyVar = key.m16358g();
            } else {
                ((dot) m16379a2).mo16254m();
                doyVar = key.m16359f().mo16259f();
            }
            this.f47260a.m16048a((dpu<T, Object>) key, (T) doyVar);
        }
    }

    /* renamed from: b */
    public final void m16372b() {
        if (this.f47261b) {
            return;
        }
        this.f47260a.mo16053a();
        this.f47261b = true;
    }

    /* renamed from: c */
    public final Iterator<Map.Entry<T, Object>> m16369c() {
        return this.f47262c ? new dny(this.f47260a.entrySet().iterator()) : this.f47260a.entrySet().iterator();
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        dmz dmzVar = new dmz();
        for (int i = 0; i < this.f47260a.m16044c(); i++) {
            Map.Entry<T, Object> m16046b = this.f47260a.m16046b(i);
            dmzVar.m16371b(m16046b.getKey(), m16046b.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f47260a.m16041d()) {
            dmzVar.m16371b(entry.getKey(), entry.getValue());
        }
        dmzVar.f47262c = this.f47262c;
        return dmzVar;
    }

    /* renamed from: d */
    public final boolean m16366d() {
        for (int i = 0; i < this.f47260a.m16044c(); i++) {
            if (!m16367c(this.f47260a.m16046b(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f47260a.m16041d()) {
            if (!m16367c(entry)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof dmz) {
            return this.f47260a.equals(((dmz) obj).f47260a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f47260a.hashCode();
    }
}
