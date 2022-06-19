package com.p051a.p052a.p053a.p054a.p056b.p057a;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p056b.AbstractC1110a;
/* renamed from: com.a.a.a.a.b.a.h */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a/h.class */
public abstract class AbstractC1121h extends AbstractC1113b<C1123j> {
    public AbstractC1121h(AbstractC1110a abstractC1110a) {
        super(abstractC1110a);
    }

    /* renamed from: a */
    public abstract boolean mo4142a(RecyclerView.AbstractC0977w abstractC0977w);

    /* renamed from: d */
    public void mo4188d(C1123j c1123j, RecyclerView.AbstractC0977w abstractC0977w) {
        if (m4218a()) {
            Log.d("ARVItemRemoveAnimMgr", "dispatchRemoveStarting(" + abstractC0977w + ")");
        }
        this.f3504a.m4543l(abstractC0977w);
    }

    /* renamed from: e */
    public void mo4186e(C1123j c1123j, RecyclerView.AbstractC0977w abstractC0977w) {
        if (m4218a()) {
            Log.d("ARVItemRemoveAnimMgr", "dispatchRemoveFinished(" + abstractC0977w + ")");
        }
        this.f3504a.m4546i(abstractC0977w);
    }

    /* renamed from: f */
    public boolean mo4184f(C1123j c1123j, RecyclerView.AbstractC0977w abstractC0977w) {
        if (c1123j.f3525a != null) {
            if (abstractC0977w != null && c1123j.f3525a != abstractC0977w) {
                return false;
            }
            mo4137b(c1123j, c1123j.f3525a);
            mo4186e(c1123j, c1123j.f3525a);
            c1123j.mo4180a(c1123j.f3525a);
            return true;
        }
        return false;
    }

    /* renamed from: h */
    public long m4182h() {
        return this.f3504a.m4932g();
    }
}
