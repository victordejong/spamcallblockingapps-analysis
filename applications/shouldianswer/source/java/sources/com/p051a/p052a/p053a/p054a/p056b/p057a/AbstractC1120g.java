package com.p051a.p052a.p053a.p054a.p056b.p057a;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p056b.AbstractC1110a;
/* renamed from: com.a.a.a.a.b.a.g */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a/g.class */
public abstract class AbstractC1120g extends AbstractC1113b<C1122i> {
    public AbstractC1120g(AbstractC1110a abstractC1110a) {
        super(abstractC1110a);
    }

    /* renamed from: a */
    public abstract boolean mo4147a(RecyclerView.AbstractC0977w abstractC0977w, int i, int i2, int i3, int i4);

    /* renamed from: d */
    public void mo4188d(C1122i c1122i, RecyclerView.AbstractC0977w abstractC0977w) {
        if (m4218a()) {
            Log.d("ARVItemMoveAnimMgr", "dispatchMoveStarting(" + abstractC0977w + ")");
        }
        this.f3504a.m4542m(abstractC0977w);
    }

    /* renamed from: e */
    public void mo4186e(C1122i c1122i, RecyclerView.AbstractC0977w abstractC0977w) {
        if (m4218a()) {
            Log.d("ARVItemMoveAnimMgr", "dispatchMoveFinished(" + abstractC0977w + ")");
        }
        this.f3504a.m4545j(abstractC0977w);
    }

    /* renamed from: f */
    public boolean mo4184f(C1122i c1122i, RecyclerView.AbstractC0977w abstractC0977w) {
        if (c1122i.f3520a != null) {
            if (abstractC0977w != null && c1122i.f3520a != abstractC0977w) {
                return false;
            }
            mo4137b(c1122i, c1122i.f3520a);
            mo4186e(c1122i, c1122i.f3520a);
            c1122i.mo4180a(c1122i.f3520a);
            return true;
        }
        return false;
    }

    /* renamed from: h */
    public long m4189h() {
        return this.f3504a.m4936e();
    }
}
