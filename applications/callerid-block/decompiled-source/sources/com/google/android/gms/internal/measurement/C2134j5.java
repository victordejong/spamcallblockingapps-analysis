package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC2130i5;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.j5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/j5.class */
final class C2134j5<T extends AbstractC2130i5<T>> {

    /* renamed from: d */
    private static final C2134j5 f9771d = new C2134j5(true);

    /* renamed from: a */
    final C2150m7<T, Object> f9772a = new f7(16);

    /* renamed from: b */
    private boolean f9773b;

    /* renamed from: c */
    private boolean f9774c;

    private C2134j5() {
    }

    private C2134j5(boolean z) {
        m4278b();
        m4278b();
    }

    /* renamed from: a */
    public static <T extends AbstractC2130i5<T>> C2134j5<T> m4279a() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void m4276d(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.measurement.zzkl r0 = r0.m4321b()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.measurement.C2202x5.m4135a(r0)
            com.google.android.gms.internal.measurement.zzkl r0 = com.google.android.gms.internal.measurement.zzkl.DOUBLE
            r11 = r0
            com.google.android.gms.internal.measurement.zzkm r0 = com.google.android.gms.internal.measurement.zzkm.INT
            r11 = r0
            r0 = r10
            com.google.android.gms.internal.measurement.zzkm r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L_0x00a8;
                case 1: goto L_0x009f;
                case 2: goto L_0x0096;
                case 3: goto L_0x008d;
                case 4: goto L_0x0084;
                case 5: goto L_0x007b;
                case 6: goto L_0x006a;
                case 7: goto L_0x0059;
                case 8: goto L_0x004f;
                default: goto L_0x004c;
            }
        L_0x004c:
            goto L_0x00b4
        L_0x004f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.q6
            if (r0 != 0) goto L_0x00b3
            goto L_0x00b4
        L_0x0059:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x00b3
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.AbstractC2174s5
            if (r0 == 0) goto L_0x00b4
            goto L_0x00b3
        L_0x006a:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzgr
            if (r0 != 0) goto L_0x00b3
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x00b4
            goto L_0x00b3
        L_0x007b:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.String
            r12 = r0
            goto L_0x00ae
        L_0x0084:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Boolean
            r12 = r0
            goto L_0x00ae
        L_0x008d:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Double
            r12 = r0
            goto L_0x00ae
        L_0x0096:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Float
            r12 = r0
            goto L_0x00ae
        L_0x009f:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Long
            r12 = r0
            goto L_0x00ae
        L_0x00a8:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            r12 = r0
        L_0x00ae:
            r0 = r12
            if (r0 == 0) goto L_0x00b4
        L_0x00b3:
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
            int r6 = r6.zza()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r8
            com.google.android.gms.internal.measurement.zzkl r6 = r6.m4321b()
            com.google.android.gms.internal.measurement.zzkm r6 = r6.zza()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2134j5.m4276d(com.google.android.gms.internal.measurement.i5, java.lang.Object):void");
    }

    /* renamed from: b */
    public final void m4278b() {
        if (!this.f9773b) {
            this.f9772a.m4259a();
            this.f9773b = true;
        }
    }

    /* renamed from: c */
    public final void m4277c(T t, Object obj) {
        if (!t.m4320c()) {
            m4276d(t, obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m4276d(t, arrayList.get(i));
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        this.f9772a.put(t, obj);
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        C2134j5 j5Var = new C2134j5();
        for (int i = 0; i < this.f9772a.m4257c(); i++) {
            Map.Entry<T, Object> d = this.f9772a.m4256d(i);
            j5Var.m4277c(d.getKey(), d.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f9772a.m4255e()) {
            j5Var.m4277c(entry.getKey(), entry.getValue());
        }
        j5Var.f9774c = this.f9774c;
        return j5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2134j5)) {
            return false;
        }
        return this.f9772a.equals(((C2134j5) obj).f9772a);
    }

    public final int hashCode() {
        return this.f9772a.hashCode();
    }
}
