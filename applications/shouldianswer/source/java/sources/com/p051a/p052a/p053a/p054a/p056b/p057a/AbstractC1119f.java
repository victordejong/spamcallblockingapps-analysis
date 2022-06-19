package com.p051a.p052a.p053a.p054a.p056b.p057a;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p056b.AbstractC1110a;
/* renamed from: com.a.a.a.a.b.a.f */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a/f.class */
public abstract class AbstractC1119f extends AbstractC1113b<C1116c> {
    public AbstractC1119f(AbstractC1110a abstractC1110a) {
        super(abstractC1110a);
    }

    /* renamed from: a */
    protected abstract void mo4152a(C1116c c1116c);

    /* renamed from: a */
    public abstract boolean mo4153a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, int i, int i2, int i3, int i4);

    /* renamed from: b */
    protected abstract void mo4150b(C1116c c1116c);

    /* renamed from: c */
    public void mo4141a(C1116c c1116c) {
        if (c1116c.f3515b != null && c1116c.f3515b.itemView != null) {
            mo4152a(c1116c);
        }
        if (c1116c.f3514a == null || c1116c.f3514a.itemView == null) {
            return;
        }
        mo4150b(c1116c);
    }

    /* renamed from: d */
    public void mo4188d(C1116c c1116c, RecyclerView.AbstractC0977w abstractC0977w) {
        if (m4218a()) {
            Log.d("ARVItemChangeAnimMgr", "dispatchChangeStarting(" + abstractC0977w + ")");
        }
        this.f3504a.m4549b(abstractC0977w, abstractC0977w == c1116c.f3515b);
    }

    /* renamed from: e */
    public void mo4186e(C1116c c1116c, RecyclerView.AbstractC0977w abstractC0977w) {
        if (m4218a()) {
            Log.d("ARVItemChangeAnimMgr", "dispatchChangeFinished(" + abstractC0977w + ")");
        }
        this.f3504a.m4552a(abstractC0977w, abstractC0977w == c1116c.f3515b);
    }

    /* renamed from: f */
    public boolean mo4184f(C1116c c1116c, RecyclerView.AbstractC0977w abstractC0977w) {
        if (c1116c.f3515b != null && (abstractC0977w == null || c1116c.f3515b == abstractC0977w)) {
            mo4137b(c1116c, c1116c.f3515b);
            mo4186e(c1116c, c1116c.f3515b);
            c1116c.mo4180a(c1116c.f3515b);
        }
        if (c1116c.f3514a != null && (abstractC0977w == null || c1116c.f3514a == abstractC0977w)) {
            mo4137b(c1116c, c1116c.f3514a);
            mo4186e(c1116c, c1116c.f3514a);
            c1116c.mo4180a(c1116c.f3514a);
        }
        return c1116c.f3515b == null && c1116c.f3514a == null;
    }

    /* renamed from: h */
    public long m4193h() {
        return this.f3504a.m4930h();
    }
}
