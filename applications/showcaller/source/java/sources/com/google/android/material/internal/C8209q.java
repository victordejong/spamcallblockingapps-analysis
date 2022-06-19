package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import p020b.p041h.p050l.AbstractC1673q;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1896l;
/* renamed from: com.google.android.material.internal.q */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/q.class */
public class C8209q {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.q$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/q$a.class */
    public static final class RunnableC8210a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ View f37036d;

        RunnableC8210a(View view) {
            this.f37036d = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((InputMethodManager) this.f37036d.getContext().getSystemService("input_method")).showSoftInput(this.f37036d, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.q$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/q$b.class */
    public static final class C8211b implements AbstractC8214e {

        /* renamed from: a */
        final /* synthetic */ boolean f37037a;

        /* renamed from: b */
        final /* synthetic */ boolean f37038b;

        /* renamed from: c */
        final /* synthetic */ boolean f37039c;

        /* renamed from: d */
        final /* synthetic */ AbstractC8214e f37040d;

        C8211b(boolean z, boolean z2, boolean z3, AbstractC8214e abstractC8214e) {
            this.f37037a = z;
            this.f37038b = z2;
            this.f37039c = z3;
            this.f37040d = abstractC8214e;
        }

        @Override // com.google.android.material.internal.C8209q.AbstractC8214e
        /* renamed from: a */
        public C1615e0 mo4440a(View view, C1615e0 c1615e0, C8215f c8215f) {
            if (this.f37037a) {
                c8215f.f37046d += c1615e0.m29591i();
            }
            boolean m4445h = C8209q.m4445h(view);
            if (this.f37038b) {
                if (m4445h) {
                    c8215f.f37045c += c1615e0.m29590j();
                } else {
                    c8215f.f37043a += c1615e0.m29590j();
                }
            }
            if (this.f37039c) {
                if (m4445h) {
                    c8215f.f37043a += c1615e0.m29589k();
                } else {
                    c8215f.f37045c += c1615e0.m29589k();
                }
            }
            c8215f.m4439a(view);
            AbstractC8214e abstractC8214e = this.f37040d;
            C1615e0 c1615e02 = c1615e0;
            if (abstractC8214e != null) {
                c1615e02 = abstractC8214e.mo4440a(view, c1615e0, c8215f);
            }
            return c1615e02;
        }
    }

    /* renamed from: com.google.android.material.internal.q$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/q$c.class */
    public static final class C8212c implements AbstractC1673q {

        /* renamed from: a */
        final /* synthetic */ AbstractC8214e f37041a;

        /* renamed from: b */
        final /* synthetic */ C8215f f37042b;

        C8212c(AbstractC8214e abstractC8214e, C8215f c8215f) {
            this.f37041a = abstractC8214e;
            this.f37042b = c8215f;
        }

        @Override // p020b.p041h.p050l.AbstractC1673q
        /* renamed from: a */
        public C1615e0 mo4441a(View view, C1615e0 c1615e0) {
            return this.f37041a.mo4440a(view, c1615e0, new C8215f(this.f37042b));
        }
    }

    /* renamed from: com.google.android.material.internal.q$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/q$d.class */
    public static final class View$OnAttachStateChangeListenerC8213d implements View.OnAttachStateChangeListener {
        View$OnAttachStateChangeListenerC8213d() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            C1679w.m29279o0(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: com.google.android.material.internal.q$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/q$e.class */
    public interface AbstractC8214e {
        /* renamed from: a */
        C1615e0 mo4440a(View view, C1615e0 c1615e0, C8215f c8215f);
    }

    /* renamed from: com.google.android.material.internal.q$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/q$f.class */
    public static class C8215f {

        /* renamed from: a */
        public int f37043a;

        /* renamed from: b */
        public int f37044b;

        /* renamed from: c */
        public int f37045c;

        /* renamed from: d */
        public int f37046d;

        public C8215f(int i, int i2, int i3, int i4) {
            this.f37043a = i;
            this.f37044b = i2;
            this.f37045c = i3;
            this.f37046d = i4;
        }

        public C8215f(C8215f c8215f) {
            this.f37043a = c8215f.f37043a;
            this.f37044b = c8215f.f37044b;
            this.f37045c = c8215f.f37045c;
            this.f37046d = c8215f.f37046d;
        }

        /* renamed from: a */
        public void m4439a(View view) {
            C1679w.m29339F0(view, this.f37043a, this.f37044b, this.f37045c, this.f37046d);
        }
    }

    /* renamed from: a */
    public static void m4452a(View view, AttributeSet attributeSet, int i, int i2, AbstractC8214e abstractC8214e) {
        TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, C1896l.Insets, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(C1896l.Insets_paddingBottomSystemWindowInsets, false);
        boolean z2 = obtainStyledAttributes.getBoolean(C1896l.Insets_paddingLeftSystemWindowInsets, false);
        boolean z3 = obtainStyledAttributes.getBoolean(C1896l.Insets_paddingRightSystemWindowInsets, false);
        obtainStyledAttributes.recycle();
        m4451b(view, new C8211b(z, z2, z3, abstractC8214e));
    }

    /* renamed from: b */
    public static void m4451b(View view, AbstractC8214e abstractC8214e) {
        C1679w.m29341E0(view, new C8212c(abstractC8214e, new C8215f(C1679w.m29334I(view), view.getPaddingTop(), C1679w.m29336H(view), view.getPaddingBottom())));
        m4443j(view);
    }

    /* renamed from: c */
    public static float m4450c(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* renamed from: d */
    public static ViewGroup m4449d(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(16908290);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView != view && (rootView instanceof ViewGroup)) {
            return (ViewGroup) rootView;
        }
        return null;
    }

    /* renamed from: e */
    public static AbstractC8208p m4448e(View view) {
        return m4447f(m4449d(view));
    }

    /* renamed from: f */
    public static AbstractC8208p m4447f(View view) {
        if (view == null) {
            return null;
        }
        return Build.VERSION.SDK_INT >= 18 ? new C8207o(view) : C8205n.m4460c(view);
    }

    /* renamed from: g */
    public static float m4446g(View view) {
        float f = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f += C1679w.m29264w((View) parent);
        }
        return f;
    }

    /* renamed from: h */
    public static boolean m4445h(View view) {
        boolean z = true;
        if (C1679w.m29346C(view) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    public static PorterDuff.Mode m4444i(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i == 5) {
                return PorterDuff.Mode.SRC_IN;
            }
            if (i == 9) {
                return PorterDuff.Mode.SRC_ATOP;
            }
            switch (i) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    /* renamed from: j */
    public static void m4443j(View view) {
        if (C1679w.m29314U(view)) {
            C1679w.m29279o0(view);
        } else {
            view.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC8213d());
        }
    }

    /* renamed from: k */
    public static void m4442k(View view) {
        view.requestFocus();
        view.post(new RunnableC8210a(view));
    }
}
