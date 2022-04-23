package com.rey.material.app;

import com.rey.material.app.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/rey/material/app/b$d.class */
public class b$d implements b.a {

    /* renamed from: a */
    ArrayList<WeakReference<b$c>> f11751a = new ArrayList<>();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.rey.material.app.b$b] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1459a(int r5) {
        /*
            r4 = this;
            com.rey.material.app.b$b r0 = new com.rey.material.app.b$b
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r6 = r0
            r0 = r4
            java.util.ArrayList<java.lang.ref.WeakReference<com.rey.material.app.b$c>> r0 = r0.f11751a
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
            r5 = r0
        L_0x0013:
            r0 = r5
            if (r0 < 0) goto L_0x0049
            r0 = r4
            java.util.ArrayList<java.lang.ref.WeakReference<com.rey.material.app.b$c>> r0 = r0.f11751a
            r1 = r5
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r7 = r0
            r0 = r7
            java.lang.Object r0 = r0.get()
            if (r0 != 0) goto L_0x0036
            r0 = r4
            java.util.ArrayList<java.lang.ref.WeakReference<com.rey.material.app.b$c>> r0 = r0.f11751a
            r1 = r5
            java.lang.Object r0 = r0.remove(r1)
            goto L_0x0043
        L_0x0036:
            r0 = r7
            java.lang.Object r0 = r0.get()
            com.rey.material.app.b$c r0 = (com.rey.material.app.b$c) r0
            r1 = r6
            r0.mo1341d(r1)
        L_0x0043:
            int r5 = r5 + (-1)
            goto L_0x0013
        L_0x0049:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.app.b$d.m1459a(int):void");
    }

    /* renamed from: b */
    public void m1458b(b$c b_c) {
        boolean z = false;
        for (int size = this.f11751a.size() - 1; size >= 0; size--) {
            WeakReference<b$c> weakReference = this.f11751a.get(size);
            if (weakReference.get() == null) {
                this.f11751a.remove(size);
            } else if (weakReference.get() == b_c) {
                z = true;
            }
        }
        if (!z) {
            this.f11751a.add(new WeakReference<>(b_c));
        }
    }

    /* renamed from: c */
    public void m1457c(b$c b_c) {
        for (int size = this.f11751a.size() - 1; size >= 0; size--) {
            WeakReference<b$c> weakReference = this.f11751a.get(size);
            if (weakReference.get() == null || weakReference.get() == b_c) {
                this.f11751a.remove(size);
            }
        }
    }
}
