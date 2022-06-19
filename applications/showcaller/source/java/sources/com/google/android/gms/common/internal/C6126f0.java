package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.api.C5984a;
/* renamed from: com.google.android.gms.common.internal.f0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/f0.class */
public final class C6126f0 {

    /* renamed from: a */
    private final SparseIntArray f19552a = new SparseIntArray();

    /* renamed from: b */
    private C6086c f19553b;

    public C6126f0(C6086c c6086c) {
        C6155o.m17018j(c6086c);
        this.f19553b = c6086c;
    }

    /* renamed from: a */
    public final int m17063a(Context context, C5984a.AbstractC5993f abstractC5993f) {
        C6155o.m17018j(context);
        C6155o.m17018j(abstractC5993f);
        if (!abstractC5993f.mo17312j()) {
            return 0;
        }
        int mo5858l = abstractC5993f.mo5858l();
        int m17062b = m17062b(context, mo5858l);
        if (m17062b == -1) {
            int i = 0;
            while (true) {
                if (i >= this.f19552a.size()) {
                    m17062b = -1;
                    break;
                }
                int keyAt = this.f19552a.keyAt(i);
                if (keyAt > mo5858l && this.f19552a.get(keyAt) == 0) {
                    m17062b = 0;
                    break;
                }
                i++;
            }
            if (m17062b == -1) {
                m17062b = this.f19553b.mo17219h(context, mo5858l);
            }
            this.f19552a.put(mo5858l, m17062b);
        }
        return m17062b;
    }

    /* renamed from: b */
    public final int m17062b(Context context, int i) {
        return this.f19552a.get(i, -1);
    }

    /* renamed from: c */
    public final void m17061c() {
        this.f19552a.clear();
    }
}
