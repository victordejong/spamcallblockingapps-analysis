package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmz.class */
public final class dmz<T extends dnb<T>> {

    /* renamed from: d  reason: collision with root package name */
    private static final dmz f26979d = new dmz(true);

    /* renamed from: a  reason: collision with root package name */
    final dpu<T, Object> f26980a;

    /* renamed from: b  reason: collision with root package name */
    boolean f26981b;

    /* renamed from: c  reason: collision with root package name */
    boolean f26982c;

    private dmz() {
        this.f26980a = dpu.a(16);
    }

    private dmz(dpu<T, Object> dpuVar) {
        this.f26980a = dpuVar;
        b();
    }

    private dmz(boolean z) {
        this(dpu.a(0));
        b();
    }

    public static int a(dnb<?> dnbVar, Object obj) {
        dqx b2 = dnbVar.b();
        int a2 = dnbVar.a();
        if (!dnbVar.d()) {
            return a(b2, a2, obj);
        }
        int i = 0;
        int i2 = 0;
        if (dnbVar.e()) {
            for (Object obj2 : (List) obj) {
                i2 += a(b2, obj2);
            }
            return zzemk.l(a2) + i2 + zzemk.q(i2);
        }
        for (Object obj3 : (List) obj) {
            i += a(b2, a2, obj3);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(dqx dqxVar, int i, Object obj) {
        int l = zzemk.l(i);
        int i2 = l;
        if (dqxVar == dqx.GROUP) {
            dnj.a();
            i2 = l << 1;
        }
        return i2 + a(dqxVar, obj);
    }

    private static int a(dqx dqxVar, Object obj) {
        switch (dmy.f26978b[dqxVar.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                return zzemk.f();
            case 2:
                ((Float) obj).floatValue();
                return zzemk.e();
            case 3:
                return zzemk.d(((Long) obj).longValue());
            case 4:
                return zzemk.e(((Long) obj).longValue());
            case 5:
                return zzemk.m(((Integer) obj).intValue());
            case 6:
                ((Long) obj).longValue();
                return zzemk.c();
            case 7:
                ((Integer) obj).intValue();
                return zzemk.a();
            case 8:
                ((Boolean) obj).booleanValue();
                return zzemk.g();
            case 9:
                return zzemk.c((dot) obj);
            case 10:
                return obj instanceof dnt ? zzemk.a((dnt) obj) : zzemk.b((dot) obj);
            case 11:
                return obj instanceof dlw ? zzemk.b((dlw) obj) : zzemk.b((String) obj);
            case 12:
                return obj instanceof dlw ? zzemk.b((dlw) obj) : zzemk.b((byte[]) obj);
            case 13:
                return zzemk.n(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                return zzemk.b();
            case 15:
                ((Long) obj).longValue();
                return zzemk.d();
            case 16:
                return zzemk.o(((Integer) obj).intValue());
            case 17:
                return zzemk.f(((Long) obj).longValue());
            case 18:
                return obj instanceof dnm ? zzemk.p(((dnm) obj).zzv()) : zzemk.p(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static <T extends dnb<T>> dmz<T> a() {
        return f26979d;
    }

    private final Object a(T t) {
        Object obj = this.f26980a.get(t);
        Object obj2 = obj;
        if (obj instanceof dnt) {
            obj2 = dnt.a();
        }
        return obj2;
    }

    private static Object a(Object obj) {
        if (obj instanceof doy) {
            return ((doy) obj).a();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzemk zzemkVar, dqx dqxVar, int i, Object obj) throws IOException {
        if (dqxVar == dqx.GROUP) {
            dnj.a();
            zzemkVar.a(i, 3);
            ((dot) obj).a(zzemkVar);
            zzemkVar.a(i, 4);
            return;
        }
        zzemkVar.a(i, dqxVar.zzbmi());
        switch (dmy.f26978b[dqxVar.ordinal()]) {
            case 1:
                zzemkVar.a(((Double) obj).doubleValue());
                return;
            case 2:
                zzemkVar.a(((Float) obj).floatValue());
                return;
            case 3:
                zzemkVar.a(((Long) obj).longValue());
                return;
            case 4:
                zzemkVar.a(((Long) obj).longValue());
                return;
            case 5:
                zzemkVar.a(((Integer) obj).intValue());
                return;
            case 6:
                zzemkVar.c(((Long) obj).longValue());
                return;
            case 7:
                zzemkVar.d(((Integer) obj).intValue());
                return;
            case 8:
                zzemkVar.a(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((dot) obj).a(zzemkVar);
                return;
            case 10:
                zzemkVar.a((dot) obj);
                return;
            case 11:
                if (obj instanceof dlw) {
                    zzemkVar.a((dlw) obj);
                    return;
                } else {
                    zzemkVar.a((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof dlw) {
                    zzemkVar.a((dlw) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzemkVar.a(bArr, bArr.length);
                return;
            case 13:
                zzemkVar.b(((Integer) obj).intValue());
                return;
            case 14:
                zzemkVar.d(((Integer) obj).intValue());
                return;
            case 15:
                zzemkVar.c(((Long) obj).longValue());
                return;
            case 16:
                zzemkVar.c(((Integer) obj).intValue());
                return;
            case 17:
                zzemkVar.b(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof dnm) {
                    zzemkVar.a(((dnm) obj).zzv());
                    return;
                } else {
                    zzemkVar.a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.c() != dra.MESSAGE || key.d() || key.e()) ? a((dnb<?>) key, value) : value instanceof dnt ? zzemk.b(entry.getKey().a(), (dnt) value) : zzemk.b(entry.getKey().a(), (dot) value);
    }

    private final void b(T t, Object obj) {
        if (!t.d()) {
            c(t, obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                c(t, obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof dnt) {
            this.f26982c = true;
        }
        this.f26980a.a((dpu<T, Object>) t, (T) obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0069, code lost:
        if ((r9 instanceof com.google.android.gms.internal.ads.dnm) == false) goto L_0x0048;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
        if ((r9 instanceof byte[]) == false) goto L_0x0048;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0058, code lost:
        if ((r9 instanceof com.google.android.gms.internal.ads.dnt) == false) goto L_0x0048;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void c(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.ads.dqx r0 = r0.b()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.ads.dnj.a(r0)
            int[] r0 = com.google.android.gms.internal.ads.dmy.f26977a
            r1 = r10
            com.google.android.gms.internal.ads.dra r1 = r1.zzbmh()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x00aa;
                case 2: goto L_0x00a2;
                case 3: goto L_0x009a;
                case 4: goto L_0x0092;
                case 5: goto L_0x008a;
                case 6: goto L_0x0082;
                case 7: goto L_0x006f;
                case 8: goto L_0x005e;
                case 9: goto L_0x004d;
                default: goto L_0x0048;
            }
        L_0x0048:
            r0 = 0
            r11 = r0
            goto L_0x00af
        L_0x004d:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.dot
            if (r0 != 0) goto L_0x007d
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.dnt
            if (r0 == 0) goto L_0x0048
            goto L_0x007d
        L_0x005e:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x007d
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.dnm
            if (r0 == 0) goto L_0x0048
            goto L_0x007d
        L_0x006f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.dlw
            if (r0 != 0) goto L_0x007d
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x0048
        L_0x007d:
            r0 = 1
            r11 = r0
            goto L_0x00af
        L_0x0082:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.String
            r11 = r0
            goto L_0x00af
        L_0x008a:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Boolean
            r11 = r0
            goto L_0x00af
        L_0x0092:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Double
            r11 = r0
            goto L_0x00af
        L_0x009a:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Float
            r11 = r0
            goto L_0x00af
        L_0x00a2:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Long
            r11 = r0
            goto L_0x00af
        L_0x00aa:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            r11 = r0
        L_0x00af:
            r0 = r11
            if (r0 == 0) goto L_0x00b4
            return
        L_0x00b4:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r8
            int r6 = r6.a()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r8
            com.google.android.gms.internal.ads.dqx r6 = r6.b()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dmz.c(com.google.android.gms.internal.ads.dnb, java.lang.Object):void");
    }

    private static <T extends dnb<T>> boolean c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.c() != dra.MESSAGE) {
            return true;
        }
        if (key.d()) {
            for (dot dotVar : (List) entry.getValue()) {
                if (!dotVar.j()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof dot) {
            return ((dot) value).j();
        }
        if (value instanceof dnt) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Map.Entry<T, Object> entry) {
        dot dotVar;
        T key = entry.getKey();
        Object value = entry.getValue();
        Object obj = value;
        if (value instanceof dnt) {
            obj = dnt.a();
        }
        if (key.d()) {
            Object a2 = a((dmz<T>) key);
            Object obj2 = a2;
            if (a2 == null) {
                obj2 = new ArrayList();
            }
            for (Object obj3 : (List) obj) {
                ((List) obj2).add(a(obj3));
            }
            this.f26980a.a((dpu<T, Object>) key, (T) obj2);
        } else if (key.c() == dra.MESSAGE) {
            Object a3 = a((dmz<T>) key);
            if (a3 == null) {
                this.f26980a.a((dpu<T, Object>) key, (T) a(obj));
                return;
            }
            if (a3 instanceof doy) {
                dotVar = key.g();
            } else {
                ((dot) a3).m();
                dotVar = key.f().f();
            }
            this.f26980a.a((dpu<T, Object>) key, (T) dotVar);
        } else {
            this.f26980a.a((dpu<T, Object>) key, (T) a(obj));
        }
    }

    public final void b() {
        if (!this.f26981b) {
            this.f26980a.a();
            this.f26981b = true;
        }
    }

    public final Iterator<Map.Entry<T, Object>> c() {
        return this.f26982c ? new dny(this.f26980a.entrySet().iterator()) : this.f26980a.entrySet().iterator();
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        dmz dmzVar = new dmz();
        for (int i = 0; i < this.f26980a.c(); i++) {
            Map.Entry<T, Object> b2 = this.f26980a.b(i);
            dmzVar.b(b2.getKey(), b2.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f26980a.d()) {
            dmzVar.b(entry.getKey(), entry.getValue());
        }
        dmzVar.f26982c = this.f26982c;
        return dmzVar;
    }

    public final boolean d() {
        for (int i = 0; i < this.f26980a.c(); i++) {
            if (!c(this.f26980a.b(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f26980a.d()) {
            if (!c(entry)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dmz)) {
            return false;
        }
        return this.f26980a.equals(((dmz) obj).f26980a);
    }

    public final int hashCode() {
        return this.f26980a.hashCode();
    }
}
