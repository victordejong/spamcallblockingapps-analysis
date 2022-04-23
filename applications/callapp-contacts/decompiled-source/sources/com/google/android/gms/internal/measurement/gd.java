package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.gc;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gd.class */
final class gd<T extends gc<T>> {

    /* renamed from: d  reason: collision with root package name */
    private static final gd f29049d = new gd(true);

    /* renamed from: a  reason: collision with root package name */
    final ik<T, Object> f29050a = new id(16);

    /* renamed from: b  reason: collision with root package name */
    private boolean f29051b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29052c;

    private gd() {
    }

    private gd(boolean z) {
        b();
        b();
    }

    public static <T extends gc<T>> gd<T> a() {
        throw null;
    }

    private void a(T t, Object obj) {
        if (!t.c()) {
            b(t, obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                b(t, arrayList.get(i));
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof gw) {
            this.f29052c = true;
        }
        this.f29050a.a((ik<T, Object>) t, (T) obj);
    }

    private void b() {
        if (!this.f29051b) {
            this.f29050a.a();
            this.f29051b = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void b(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.measurement.jd r0 = r0.b()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.measurement.gt.a(r0)
            com.google.android.gms.internal.measurement.jd r0 = com.google.android.gms.internal.measurement.jd.DOUBLE
            r11 = r0
            com.google.android.gms.internal.measurement.je r0 = com.google.android.gms.internal.measurement.je.INT
            r11 = r0
            r0 = r10
            com.google.android.gms.internal.measurement.je r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L_0x00ab;
                case 1: goto L_0x00a2;
                case 2: goto L_0x0099;
                case 3: goto L_0x0090;
                case 4: goto L_0x0087;
                case 5: goto L_0x007e;
                case 6: goto L_0x006f;
                case 7: goto L_0x0060;
                case 8: goto L_0x004f;
                default: goto L_0x004c;
            }
        L_0x004c:
            goto L_0x00b7
        L_0x004f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.ho
            if (r0 != 0) goto L_0x00b6
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.gw
            if (r0 == 0) goto L_0x00b7
            goto L_0x00b6
        L_0x0060:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x00b6
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.gn
            if (r0 == 0) goto L_0x00b7
            return
        L_0x006f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.fm
            if (r0 != 0) goto L_0x00b6
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x00b7
            return
        L_0x007e:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.String
            r12 = r0
            goto L_0x00b1
        L_0x0087:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Boolean
            r12 = r0
            goto L_0x00b1
        L_0x0090:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Double
            r12 = r0
            goto L_0x00b1
        L_0x0099:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Float
            r12 = r0
            goto L_0x00b1
        L_0x00a2:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Long
            r12 = r0
            goto L_0x00b1
        L_0x00ab:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            r12 = r0
        L_0x00b1:
            r0 = r12
            if (r0 == 0) goto L_0x00b7
        L_0x00b6:
            return
        L_0x00b7:
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
            com.google.android.gms.internal.measurement.jd r6 = r6.b()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.gd.b(com.google.android.gms.internal.measurement.gc, java.lang.Object):void");
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        gd gdVar = new gd();
        for (int i = 0; i < this.f29050a.c(); i++) {
            Map.Entry<T, Object> a2 = this.f29050a.a(i);
            gdVar.a(a2.getKey(), a2.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f29050a.d()) {
            gdVar.a(entry.getKey(), entry.getValue());
        }
        gdVar.f29052c = this.f29052c;
        return gdVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gd)) {
            return false;
        }
        return this.f29050a.equals(((gd) obj).f29050a);
    }

    public final int hashCode() {
        return this.f29050a.hashCode();
    }
}
