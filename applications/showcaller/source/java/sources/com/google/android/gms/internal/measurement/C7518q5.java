package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC7504p5;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.q5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/q5.class */
final class C7518q5<T extends AbstractC7504p5<T>> {

    /* renamed from: a */
    private static final C7518q5 f34640a = new C7518q5(true);

    /* renamed from: b */
    final C7572u7<T, Object> f34641b = new C7478n7(16);

    /* renamed from: c */
    private boolean f34642c;

    /* renamed from: d */
    private boolean f34643d;

    private C7518q5() {
    }

    private C7518q5(boolean z) {
        m6999b();
        m6999b();
    }

    /* renamed from: a */
    public static <T extends AbstractC7504p5<T>> C7518q5<T> m7000a() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void m6997d(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.measurement.zzkl r0 = r0.m7026b()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.measurement.C7365f6.m7503a(r0)
            com.google.android.gms.internal.measurement.zzkl r0 = com.google.android.gms.internal.measurement.zzkl.DOUBLE
            r11 = r0
            com.google.android.gms.internal.measurement.zzkm r0 = com.google.android.gms.internal.measurement.zzkm.INT
            r11 = r0
            r0 = r10
            com.google.android.gms.internal.measurement.zzkm r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto La8;
                case 1: goto L9f;
                case 2: goto L96;
                case 3: goto L8d;
                case 4: goto L84;
                case 5: goto L7b;
                case 6: goto L6a;
                case 7: goto L59;
                case 8: goto L4f;
                default: goto L4c;
            }
        L4c:
            goto Lb4
        L4f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.AbstractC7623y6
            if (r0 != 0) goto Lb3
            goto Lb4
        L59:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto Lb3
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.AbstractC7635z5
            if (r0 == 0) goto Lb4
            goto Lb3
        L6a:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzgr
            if (r0 != 0) goto Lb3
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto Lb4
            goto Lb3
        L7b:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.String
            r12 = r0
            goto Lae
        L84:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Boolean
            r12 = r0
            goto Lae
        L8d:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Double
            r12 = r0
            goto Lae
        L96:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Float
            r12 = r0
            goto Lae
        L9f:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Long
            r12 = r0
            goto Lae
        La8:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            r12 = r0
        Lae:
            r0 = r12
            if (r0 == 0) goto Lb4
        Lb3:
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
            int r6 = r6.zza()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r8
            com.google.android.gms.internal.measurement.zzkl r6 = r6.m7026b()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C7518q5.m6997d(com.google.android.gms.internal.measurement.p5, java.lang.Object):void");
    }

    /* renamed from: b */
    public final void m6999b() {
        if (this.f34642c) {
            return;
        }
        this.f34641b.mo6878a();
        this.f34642c = true;
    }

    /* renamed from: c */
    public final void m6998c(T t, Object obj) {
        if (!t.m7025c()) {
            m6997d(t, obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m6997d(t, arrayList.get(i));
            }
            obj = arrayList;
        }
        this.f34641b.put(t, obj);
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        C7518q5 c7518q5 = new C7518q5();
        for (int i = 0; i < this.f34641b.m6876c(); i++) {
            Map.Entry<T, Object> m6875d = this.f34641b.m6875d(i);
            c7518q5.m6998c(m6875d.getKey(), m6875d.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f34641b.m6874e()) {
            c7518q5.m6998c(entry.getKey(), entry.getValue());
        }
        c7518q5.f34643d = this.f34643d;
        return c7518q5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C7518q5) {
            return this.f34641b.equals(((C7518q5) obj).f34641b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f34641b.hashCode();
    }
}
