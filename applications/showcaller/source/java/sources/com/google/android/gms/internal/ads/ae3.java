package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zd3;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ae3.class */
public final class ae3<T extends zd3<T>> {

    /* renamed from: a */
    private static final ae3 f19924a = new ae3(true);

    /* renamed from: b */
    final og3<T, Object> f19925b = new gg3(16);

    /* renamed from: c */
    private boolean f19926c;

    /* renamed from: d */
    private boolean f19927d;

    private ae3() {
    }

    private ae3(boolean z) {
        m16618b();
        m16618b();
    }

    /* renamed from: a */
    public static <T extends zd3<T>> ae3<T> m16619a() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void m16616d(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.ads.zzgje r0 = r0.m8430b()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.ads.se3.m11072a(r0)
            com.google.android.gms.internal.ads.zzgje r0 = com.google.android.gms.internal.ads.zzgje.DOUBLE
            r11 = r0
            com.google.android.gms.internal.ads.zzgjf r0 = com.google.android.gms.internal.ads.zzgjf.INT
            r11 = r0
            r0 = r10
            com.google.android.gms.internal.ads.zzgjf r0 = r0.zza()
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
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.mf3
            if (r0 != 0) goto Lb3
            goto Lb4
        L59:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto Lb3
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.ke3
            if (r0 == 0) goto Lb4
            goto Lb3
        L6a:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.zzgex
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
            com.google.android.gms.internal.ads.zzgje r6 = r6.m8430b()
            com.google.android.gms.internal.ads.zzgjf r6 = r6.zza()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ae3.m16616d(com.google.android.gms.internal.ads.zd3, java.lang.Object):void");
    }

    /* renamed from: b */
    public final void m16618b() {
        if (this.f19926c) {
            return;
        }
        this.f19925b.mo12671a();
        this.f19926c = true;
    }

    /* renamed from: c */
    public final void m16617c(T t, Object obj) {
        if (!t.m8429c()) {
            m16616d(t, obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m16616d(t, arrayList.get(i));
            }
            obj = arrayList;
        }
        this.f19925b.put(t, obj);
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        ae3 ae3Var = new ae3();
        for (int i = 0; i < this.f19925b.m12667e(); i++) {
            Map.Entry<T, Object> m12666f = this.f19925b.m12666f(i);
            ae3Var.m16617c(m12666f.getKey(), m12666f.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f19925b.m12665g()) {
            ae3Var.m16617c(entry.getKey(), entry.getValue());
        }
        ae3Var.f19927d = this.f19927d;
        return ae3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ae3) {
            return this.f19925b.equals(((ae3) obj).f19925b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f19925b.hashCode();
    }
}
