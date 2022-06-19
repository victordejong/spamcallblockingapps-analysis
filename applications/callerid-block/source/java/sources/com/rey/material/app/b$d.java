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
    /* renamed from: a */
    public void m1459a(int i) {
        ?? r0 = new Object(i) { // from class: com.rey.material.app.b$b
        };
        for (int size = this.f11751a.size() - 1; size >= 0; size--) {
            WeakReference<b$c> weakReference = this.f11751a.get(size);
            if (weakReference.get() == null) {
                this.f11751a.remove(size);
            } else {
                weakReference.get().mo1341d(r0);
            }
        }
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
