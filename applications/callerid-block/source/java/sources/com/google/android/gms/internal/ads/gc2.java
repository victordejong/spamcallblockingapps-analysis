package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.fc2;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gc2.class */
final class gc2<T extends fc2<T>> {

    /* renamed from: d */
    private static final gc2 f6637d = new gc2(true);

    /* renamed from: a */
    final re2<T, Object> f6638a = new ke2(16);

    /* renamed from: b */
    private boolean f6639b;

    /* renamed from: c */
    private boolean f6640c;

    private gc2() {
    }

    private gc2(boolean z) {
        m7403b();
        m7403b();
    }

    /* renamed from: a */
    public static <T extends fc2<T>> gc2<T> m7404a() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void m7401d(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.ads.zzewj r0 = r0.m7554b()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.ads.xc2.m4918a(r0)
            com.google.android.gms.internal.ads.zzewj r0 = com.google.android.gms.internal.ads.zzewj.DOUBLE
            r11 = r0
            com.google.android.gms.internal.ads.zzewk r0 = com.google.android.gms.internal.ads.zzewk.INT
            r11 = r0
            r0 = r10
            com.google.android.gms.internal.ads.zzewk r0 = r0.zza()
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
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.qd2
            if (r0 != 0) goto Lb3
            goto Lb4
        L59:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto Lb3
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.qc2
            if (r0 == 0) goto Lb4
            goto Lb3
        L6a:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.zzesf
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
            com.google.android.gms.internal.ads.zzewj r6 = r6.m7554b()
            com.google.android.gms.internal.ads.zzewk r6 = r6.zza()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.gc2.m7401d(com.google.android.gms.internal.ads.fc2, java.lang.Object):void");
    }

    /* renamed from: b */
    public final void m7403b() {
        if (this.f6639b) {
            return;
        }
        this.f6638a.m5979a();
        this.f6639b = true;
    }

    /* renamed from: c */
    public final void m7402c(T t, Object obj) {
        if (!t.m7553c()) {
            m7401d(t, obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m7401d(t, arrayList.get(i));
            }
            obj = arrayList;
        }
        this.f6638a.put(t, obj);
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        gc2 gc2Var = new gc2();
        for (int i = 0; i < this.f6638a.m5977c(); i++) {
            Map.Entry<T, Object> m5976d = this.f6638a.m5976d(i);
            gc2Var.m7402c(m5976d.getKey(), m5976d.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f6638a.m5975e()) {
            gc2Var.m7402c(entry.getKey(), entry.getValue());
        }
        gc2Var.f6640c = this.f6640c;
        return gc2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof gc2) {
            return this.f6638a.equals(((gc2) obj).f6638a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6638a.hashCode();
    }
}
