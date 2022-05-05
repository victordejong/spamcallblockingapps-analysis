package p459j.p460a.p474c0.p491g;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: j.a.c0.g.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/e.class */
public abstract class AbstractC12006e implements AbstractC12099o {

    /* renamed from: a */
    public View f26897a;

    /* renamed from: b */
    public Parcelable f26898b;

    @Override // p459j.p460a.p474c0.p491g.AbstractC12099o
    /* renamed from: a */
    public View mo7171a(ViewGroup viewGroup) {
        if (this.f26897a == null) {
            this.f26897a = mo7182b(viewGroup);
            m7558x();
        }
        return this.f26897a;
    }

    /* renamed from: b */
    public abstract View mo7182b(ViewGroup viewGroup);

    @Override // p459j.p460a.p474c0.p491g.AbstractC12099o
    /* renamed from: e */
    public View mo7170e() {
        m7557y();
        View view = this.f26897a;
        this.f26897a = null;
        return view;
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12100p
    /* renamed from: f */
    public void mo7169f() {
        this.f26898b = null;
        View view = this.f26897a;
        if (view != null && (view instanceof AbstractC12100p)) {
            ((AbstractC12100p) view).mo7169f();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12100p
    public void restoreState(Parcelable parcelable) {
        if (parcelable != null) {
            this.f26898b = parcelable;
            m7558x();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12100p
    public Parcelable saveState() {
        m7557y();
        return this.f26898b;
    }

    /* renamed from: x */
    public final void m7558x() {
        Parcelable parcelable;
        View view = this.f26897a;
        if (view != null && (view instanceof AbstractC12100p) && (parcelable = this.f26898b) != null) {
            ((AbstractC12100p) view).restoreState(parcelable);
        }
    }

    /* renamed from: y */
    public final void m7557y() {
        View view = this.f26897a;
        if (view != null && (view instanceof AbstractC12100p)) {
            this.f26898b = ((AbstractC12100p) view).saveState();
        }
    }
}
