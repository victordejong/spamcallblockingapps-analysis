package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC13517gc;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.gd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gd.class */
final class C13518gd<T extends AbstractC13517gc<T>> {

    /* renamed from: d */
    private static final C13518gd f50749d = new C13518gd(true);

    /* renamed from: a */
    final C13579ik<T, Object> f50750a = new C13572id(16);

    /* renamed from: b */
    private boolean f50751b;

    /* renamed from: c */
    private boolean f50752c;

    private C13518gd() {
    }

    private C13518gd(boolean z) {
        m12787b();
        m12787b();
    }

    /* renamed from: a */
    public static <T extends AbstractC13517gc<T>> C13518gd<T> m12789a() {
        throw null;
    }

    /* renamed from: a */
    private void m12788a(T t, Object obj) {
        if (!t.m12790c()) {
            m12786b(t, obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m12786b(t, arrayList.get(i));
            }
            obj = arrayList;
        }
        if (obj instanceof C13537gw) {
            this.f50752c = true;
        }
        this.f50750a.m12583a((C13579ik<T, Object>) t, (T) obj);
    }

    /* renamed from: b */
    private void m12787b() {
        if (this.f50751b) {
            return;
        }
        this.f50750a.mo12588a();
        this.f50751b = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void m12786b(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.measurement.jd r0 = r0.m12791b()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.measurement.C13534gt.m12746a(r0)
            com.google.android.gms.internal.measurement.jd r0 = com.google.android.gms.internal.measurement.EnumC13599jd.DOUBLE
            r11 = r0
            com.google.android.gms.internal.measurement.je r0 = com.google.android.gms.internal.measurement.EnumC13600je.INT
            r11 = r0
            r0 = r10
            com.google.android.gms.internal.measurement.je r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto Lab;
                case 1: goto La2;
                case 2: goto L99;
                case 3: goto L90;
                case 4: goto L87;
                case 5: goto L7e;
                case 6: goto L6f;
                case 7: goto L60;
                case 8: goto L4f;
                default: goto L4c;
            }
        L4c:
            goto Lb7
        L4f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.AbstractC13556ho
            if (r0 != 0) goto Lb6
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.C13537gw
            if (r0 == 0) goto Lb7
            goto Lb6
        L60:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto Lb6
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.AbstractC13528gn
            if (r0 == 0) goto Lb7
            return
        L6f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.AbstractC13500fm
            if (r0 != 0) goto Lb6
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto Lb7
            return
        L7e:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.String
            r12 = r0
            goto Lb1
        L87:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Boolean
            r12 = r0
            goto Lb1
        L90:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Double
            r12 = r0
            goto Lb1
        L99:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Float
            r12 = r0
            goto Lb1
        La2:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Long
            r12 = r0
            goto Lb1
        Lab:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            r12 = r0
        Lb1:
            r0 = r12
            if (r0 == 0) goto Lb7
        Lb6:
            return
        Lb7:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r8
            int r6 = r6.m12792a()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r8
            com.google.android.gms.internal.measurement.jd r6 = r6.m12791b()
            com.google.android.gms.internal.measurement.je r6 = r6.zza()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C13518gd.m12786b(com.google.android.gms.internal.measurement.gc, java.lang.Object):void");
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        C13518gd c13518gd = new C13518gd();
        for (int i = 0; i < this.f50750a.m12579c(); i++) {
            Map.Entry<T, Object> m12587a = this.f50750a.m12587a(i);
            c13518gd.m12788a(m12587a.getKey(), m12587a.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f50750a.m12577d()) {
            c13518gd.m12788a(entry.getKey(), entry.getValue());
        }
        c13518gd.f50752c = this.f50752c;
        return c13518gd;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C13518gd) {
            return this.f50750a.equals(((C13518gd) obj).f50750a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f50750a.hashCode();
    }
}
