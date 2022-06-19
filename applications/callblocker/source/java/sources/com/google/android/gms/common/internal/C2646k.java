package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.C2591e;
import com.google.android.gms.common.C2593f;
import com.google.android.gms.common.api.C2471a;
/* renamed from: com.google.android.gms.common.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k.class */
public class C2646k {

    /* renamed from: a */
    private final SparseIntArray f7410a;

    /* renamed from: b */
    private C2593f f7411b;

    public C2646k() {
        this(C2591e.m14185a());
    }

    public C2646k(C2593f c2593f) {
        this.f7410a = new SparseIntArray();
        C2662s.m13981a(c2593f);
        this.f7411b = c2593f;
    }

    /* renamed from: a */
    public int m14002a(Context context, C2471a.AbstractC2483f abstractC2483f) {
        int i;
        int i2 = 0;
        C2662s.m13981a(context);
        C2662s.m13981a(abstractC2483f);
        if (abstractC2483f.m14445i()) {
            int mo2031d = abstractC2483f.mo2031d();
            i2 = this.f7410a.get(mo2031d, -1);
            if (i2 == -1) {
                int i3 = 0;
                while (true) {
                    if (i3 >= this.f7410a.size()) {
                        i = i2;
                        break;
                    }
                    int keyAt = this.f7410a.keyAt(i3);
                    if (keyAt > mo2031d && this.f7410a.get(keyAt) == 0) {
                        i = 0;
                        break;
                    }
                    i3++;
                }
                i2 = i;
                if (i == -1) {
                    i2 = this.f7411b.mo14163b(context, mo2031d);
                }
                this.f7410a.put(mo2031d, i2);
            }
        }
        return i2;
    }

    /* renamed from: a */
    public void m14003a() {
        this.f7410a.clear();
    }
}
