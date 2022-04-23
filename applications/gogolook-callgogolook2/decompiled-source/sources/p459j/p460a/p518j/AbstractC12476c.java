package p459j.p460a.p518j;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.fragment.app.FragmentActivity;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.main.MainActivity;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0014J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\rH\u0015J\b\u0010\u000e\u001a\u00020\rH\u0015J\b\u0010\u000f\u001a\u00020\rH%J\b\u0010\u0010\u001a\u00020\nH\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0004J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0007\u001a\u0004\u0018\u00010\bH$J&\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\u001c\u001a\u00020\nH\u0016J\b\u0010\u001d\u001a\u00020\nH\u0017J\b\u0010\u001e\u001a\u00020\nH\u0016J\u001a\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00162\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010!\u001a\u00020\nH\u0004J\b\u0010\"\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006%"}, m815d2 = {"Lgogolook/callgogolook2/app/WhoscallDeferredFragment;", "Lgogolook/callgogolook2/app/WhoscallFragment;", "()V", "delayInflation", "", "hasInflated", "isLowMemory", "savedInstanceState", "Landroid/os/Bundle;", "executeDeferredAction", "", "executeDeferredActionIfNeed", "getDefaultBackgroundResource", "", "getFragmentBackgroundColor", "getLayoutResource", "inflateLayoutAsync", "isFragmentReady", "isValidBackgroundResource", "needLayoutInflationAsync", "onAsyncInflationFinished", "inflatedView", "Landroid/view/View;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "onLowMemory", "onResume", "onViewCreated", "view", "removeDefaultBackground", "setDefaultBackground", "setUserVisibleHint", "isVisibleToUser", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j.c */
/* loaded from: classes2-dex2jar.jar:j/a/j/c.class */
public abstract class AbstractC12476c extends AbstractC12478d {

    /* renamed from: a */
    public Bundle f28101a;

    /* renamed from: b */
    public boolean f28102b;

    /* renamed from: c */
    public boolean f28103c;

    /* renamed from: d */
    public boolean f28104d;

    /* renamed from: e */
    public HashMap f28105e;

    /* renamed from: j.a.j.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/j/c$a.class */
    public static final class C12477a implements AsyncLayoutInflater.OnInflateFinishedListener {
        public C12477a() {
        }

        @Override // androidx.asynclayoutinflater.view.AsyncLayoutInflater.OnInflateFinishedListener
        public final void onInflateFinished(View view, int i, ViewGroup viewGroup) {
            C15149k.m377b(view, "inflatedView");
            if (C14217x3.m2196a((Activity) AbstractC12476c.this.getActivity()) && viewGroup != null) {
                viewGroup.addView(view);
                AbstractC12476c cVar = AbstractC12476c.this;
                cVar.mo1412a(view, cVar.f28101a);
                AbstractC12476c.this.f28102b = true;
                AbstractC12476c.this.m6071L();
            }
        }
    }

    /* renamed from: J */
    public void mo1420J() {
        HashMap hashMap = this.f28105e;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K */
    public void mo1419K() {
    }

    /* renamed from: L */
    public final void m6071L() {
        if (m6067Q()) {
            mo1419K();
        }
    }

    @DrawableRes
    /* renamed from: M */
    public int mo6070M() {
        return 0;
    }

    @ColorInt
    /* renamed from: N */
    public int m6069N() {
        return 0;
    }

    @LayoutRes
    /* renamed from: O */
    public abstract int mo1418O();

    /* renamed from: P */
    public final void m6068P() {
        if (getActivity() == null) {
            this.f28103c = true;
            return;
        }
        m6063U();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            new AsyncLayoutInflater(activity).inflate(mo1418O(), (ViewGroup) getView(), new C12477a());
        } else {
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: Q */
    public final boolean m6067Q() {
        return C14217x3.m2196a((Activity) getActivity()) && getUserVisibleHint() && this.f28102b;
    }

    /* renamed from: R */
    public final boolean m6066R() {
        return mo6070M() != 0;
    }

    /* renamed from: S */
    public final boolean m6065S() {
        return mo1418O() != 0 && !this.f28102b;
    }

    /* renamed from: T */
    public final void m6064T() {
        View view = getView();
        if (view != null) {
            view.setBackgroundColor(0);
        }
        ImageView imageView = (ImageView) mo1408c(R$id.defaultBackground);
        imageView.setVisibility(8);
        imageView.setBackground(null);
    }

    /* renamed from: U */
    public final void m6063U() {
        Drawable drawable;
        View view = getView();
        if (view != null) {
            view.setBackgroundColor(m6069N());
        }
        if (!m6066R() || this.f28104d) {
            ImageView imageView = (ImageView) mo1408c(R$id.defaultBackground);
            C15149k.m383a((Object) imageView, "defaultBackground");
            imageView.setVisibility(8);
            return;
        }
        ImageView imageView2 = (ImageView) mo1408c(R$id.defaultBackground);
        imageView2.setVisibility(0);
        if (C14017g4.m2805s()) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                C15149k.m383a((Object) activity, "activity!!");
                Resources resources = activity.getResources();
                int M = mo6070M();
                FragmentActivity activity2 = getActivity();
                if (activity2 != null) {
                    C15149k.m383a((Object) activity2, "activity!!");
                    drawable = resources.getDrawable(M, activity2.getTheme());
                } else {
                    C15149k.m378b();
                    throw null;
                }
            } else {
                C15149k.m378b();
                throw null;
            }
        } else {
            FragmentActivity activity3 = getActivity();
            if (activity3 != null) {
                C15149k.m383a((Object) activity3, "activity!!");
                drawable = activity3.getResources().getDrawable(mo6070M());
            } else {
                C15149k.m378b();
                throw null;
            }
        }
        imageView2.setBackground(drawable);
    }

    /* renamed from: a */
    public abstract void mo1412a(View view, Bundle bundle);

    /* renamed from: c */
    public View mo1408c(int i) {
        if (this.f28105e == null) {
            this.f28105e = new HashMap();
        }
        View view = (View) this.f28105e.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f28105e.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(R$layout.fragment_container, viewGroup, false);
        this.f28101a = bundle;
        if (!(getActivity() instanceof MainActivity)) {
            this.f28103c = true;
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f28102b = false;
        mo1420J();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    @CallSuper
    public void onLowMemory() {
        super.onLowMemory();
        this.f28104d = true;
        m6064T();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m6071L();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        if (m6065S() && this.f28103c) {
            m6068P();
            this.f28103c = false;
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12478d, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z && m6065S()) {
            m6068P();
        }
        m6071L();
    }
}
