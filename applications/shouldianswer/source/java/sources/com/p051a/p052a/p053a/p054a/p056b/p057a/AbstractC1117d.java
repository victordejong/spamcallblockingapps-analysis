package com.p051a.p052a.p053a.p054a.p056b.p057a;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p056b.AbstractC1110a;
/* renamed from: com.a.a.a.a.b.a.d */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a/d.class */
public abstract class AbstractC1117d extends AbstractC1113b<C1112a> {
    public AbstractC1117d(AbstractC1110a abstractC1110a) {
        super(abstractC1110a);
    }

    /* renamed from: a */
    public abstract boolean mo4158a(RecyclerView.AbstractC0977w abstractC0977w);

    /* renamed from: d */
    public void mo4188d(C1112a c1112a, RecyclerView.AbstractC0977w abstractC0977w) {
        if (m4218a()) {
            Log.d("ARVItemAddAnimMgr", "dispatchAddStarting(" + abstractC0977w + ")");
        }
        this.f3504a.m4541n(abstractC0977w);
    }

    /* renamed from: e */
    public void mo4186e(C1112a c1112a, RecyclerView.AbstractC0977w abstractC0977w) {
        if (m4218a()) {
            Log.d("ARVItemAddAnimMgr", "dispatchAddFinished(" + abstractC0977w + ")");
        }
        this.f3504a.m4544k(abstractC0977w);
    }

    /* renamed from: f */
    public boolean mo4184f(C1112a c1112a, RecyclerView.AbstractC0977w abstractC0977w) {
        if (c1112a.f3502a != null) {
            if (abstractC0977w != null && c1112a.f3502a != abstractC0977w) {
                return false;
            }
            mo4137b(c1112a, c1112a.f3502a);
            mo4186e(c1112a, c1112a.f3502a);
            c1112a.mo4180a(c1112a.f3502a);
            return true;
        }
        return false;
    }

    /* renamed from: h */
    public long m4198h() {
        return this.f3504a.m4934f();
    }
}
