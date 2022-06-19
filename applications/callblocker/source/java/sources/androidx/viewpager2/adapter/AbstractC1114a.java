package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.p026h.C0595u;
import androidx.fragment.app.AbstractC0670i;
import androidx.fragment.app.AbstractC0695o;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0867f;
import androidx.lifecycle.AbstractC0869h;
import androidx.p013b.C0378d;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.p051a.C1107f;
/* renamed from: androidx.viewpager2.adapter.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/a.class */
public abstract class AbstractC1114a extends RecyclerView.AbstractC0914a<C1117b> implements AbstractC1118c {

    /* renamed from: a */
    final AbstractC0864e f3843a;

    /* renamed from: b */
    final AbstractC0670i f3844b;

    /* renamed from: c */
    final C0378d<Fragment> f3845c;

    /* renamed from: d */
    private C1116a f3846d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager2.adapter.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/a$a.class */
    public class C1116a {

        /* renamed from: a */
        final /* synthetic */ AbstractC1114a f3850a;

        /* renamed from: b */
        private C1107f f3851b;

        /* renamed from: c */
        private long f3852c;

        /* renamed from: a */
        public void m17985a(boolean z) {
            int currentItem;
            Fragment m21131a;
            if (!this.f3850a.m17987e() && this.f3851b.getScrollState() == 0 && !this.f3850a.f3845c.m21125c() && this.f3850a.mo959a() != 0 && (currentItem = this.f3851b.getCurrentItem()) < this.f3850a.mo959a()) {
                long mo3121b = this.f3850a.mo3121b(currentItem);
                if ((mo3121b == this.f3852c && !z) || (m21131a = this.f3850a.f3845c.m21131a(mo3121b)) == null || !m21131a.m19914z()) {
                    return;
                }
                this.f3852c = mo3121b;
                AbstractC0695o mo19803a = this.f3850a.f3844b.mo19803a();
                Fragment fragment = null;
                for (int i = 0; i < this.f3850a.f3845c.m21129b(); i++) {
                    long m21128b = this.f3850a.f3845c.m21128b(i);
                    Fragment m21124c = this.f3850a.f3845c.m21124c(i);
                    if (m21124c.m19914z()) {
                        if (m21128b != this.f3852c) {
                            mo19803a.mo19660a(m21124c, AbstractC0864e.EnumC0866b.STARTED);
                        } else {
                            fragment = m21124c;
                        }
                        m21124c.m19945d(m21128b == this.f3852c);
                    }
                }
                if (fragment != null) {
                    mo19803a.mo19660a(fragment, AbstractC0864e.EnumC0866b.RESUMED);
                }
                if (mo19803a.mo19647i()) {
                    return;
                }
                mo19803a.mo19651d();
            }
        }
    }

    /* renamed from: a */
    private void m17989a(final Fragment fragment, final FrameLayout frameLayout) {
        this.f3844b.mo19775a(new AbstractC0670i.AbstractC0671a() { // from class: androidx.viewpager2.adapter.a.1
            @Override // androidx.fragment.app.AbstractC0670i.AbstractC0671a
            /* renamed from: a */
            public void mo17986a(AbstractC0670i abstractC0670i, Fragment fragment2, View view, Bundle bundle) {
                if (fragment2 == fragment) {
                    abstractC0670i.mo19776a(this);
                    AbstractC1114a.this.m17990a(view, frameLayout);
                }
            }
        }, false);
    }

    /* renamed from: a */
    void m17990a(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    /* renamed from: a */
    public void m17988a(final C1117b c1117b) {
        Fragment m21131a = this.f3845c.m21131a(c1117b.m18791g());
        if (m21131a == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout m17984B = c1117b.m17984B();
        View m20016G = m21131a.m20016G();
        if (!m21131a.m19914z() && m20016G != null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (m21131a.m19914z() && m20016G == null) {
            m17989a(m21131a, m17984B);
        } else if (m21131a.m19914z() && m20016G.getParent() != null) {
            if (m20016G.getParent() == m17984B) {
                return;
            }
            m17990a(m20016G, m17984B);
        } else if (m21131a.m19914z()) {
            m17990a(m20016G, m17984B);
        } else if (!m17987e()) {
            m17989a(m21131a, m17984B);
            this.f3844b.mo19803a().m19659a(m21131a, "f" + c1117b.m18791g()).mo19660a(m21131a, AbstractC0864e.EnumC0866b.STARTED).mo19651d();
            this.f3846d.m17985a(false);
        } else if (this.f3844b.mo19741d()) {
        } else {
            this.f3843a.mo19219a(new AbstractC0867f() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$2
                @Override // androidx.lifecycle.AbstractC0867f
                /* renamed from: a */
                public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
                    if (AbstractC1114a.this.m17987e()) {
                        return;
                    }
                    abstractC0869h.mo19203b().mo19214b(this);
                    if (!C0595u.m20370B(c1117b.m17984B())) {
                        return;
                    }
                    AbstractC1114a.this.m17988a(c1117b);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: b */
    public long mo3121b(int i) {
        return i;
    }

    /* renamed from: e */
    public boolean m17987e() {
        return this.f3844b.mo19732f();
    }
}
