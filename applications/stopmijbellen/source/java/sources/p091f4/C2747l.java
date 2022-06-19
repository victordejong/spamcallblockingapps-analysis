package p091f4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p090f3.C2727a;
import p124i4.C3102d;
import p163m0.C3589v;
import p163m0.C3611y;
import p304z3.C5071c;
/* renamed from: f4.l */
/* loaded from: classes-dex2jar.jar:f4/l.class */
public final class C2747l {

    /* renamed from: a */
    public final Context f9407a;

    /* renamed from: b */
    public final TextInputLayout f9408b;

    /* renamed from: c */
    public LinearLayout f9409c;

    /* renamed from: d */
    public int f9410d;

    /* renamed from: e */
    public FrameLayout f9411e;

    /* renamed from: f */
    public Animator f9412f;

    /* renamed from: g */
    public final float f9413g;

    /* renamed from: h */
    public int f9414h;

    /* renamed from: i */
    public int f9415i;

    /* renamed from: j */
    public CharSequence f9416j;

    /* renamed from: k */
    public boolean f9417k;

    /* renamed from: l */
    public TextView f9418l;

    /* renamed from: m */
    public CharSequence f9419m;

    /* renamed from: n */
    public int f9420n;

    /* renamed from: o */
    public ColorStateList f9421o;

    /* renamed from: p */
    public CharSequence f9422p;

    /* renamed from: q */
    public boolean f9423q;

    /* renamed from: r */
    public TextView f9424r;

    /* renamed from: s */
    public int f9425s;

    /* renamed from: t */
    public ColorStateList f9426t;

    /* renamed from: u */
    public Typeface f9427u;

    /* renamed from: f4.l$a */
    /* loaded from: classes-dex2jar.jar:f4/l$a.class */
    public class C2748a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ int f9428a;

        /* renamed from: b */
        public final /* synthetic */ TextView f9429b;

        /* renamed from: c */
        public final /* synthetic */ int f9430c;

        /* renamed from: d */
        public final /* synthetic */ TextView f9431d;

        public C2748a(int i, TextView textView, int i2, TextView textView2) {
            C2747l.this = r4;
            this.f9428a = i;
            this.f9429b = textView;
            this.f9430c = i2;
            this.f9431d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            TextView textView;
            C2747l c2747l = C2747l.this;
            c2747l.f9414h = this.f9428a;
            c2747l.f9412f = null;
            TextView textView2 = this.f9429b;
            if (textView2 != null) {
                textView2.setVisibility(4);
                if (this.f9430c == 1 && (textView = C2747l.this.f9418l) != null) {
                    textView.setText((CharSequence) null);
                }
            }
            TextView textView3 = this.f9431d;
            if (textView3 != null) {
                textView3.setTranslationY(0.0f);
                this.f9431d.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f9431d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public C2747l(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f9407a = context;
        this.f9408b = textInputLayout;
        this.f9413g = context.getResources().getDimensionPixelSize(2131165358);
    }

    /* renamed from: a */
    public void m3182a(TextView textView, int i) {
        if (this.f9409c == null && this.f9411e == null) {
            LinearLayout linearLayout = new LinearLayout(this.f9407a);
            this.f9409c = linearLayout;
            linearLayout.setOrientation(0);
            this.f9408b.addView(this.f9409c, -1, -2);
            this.f9411e = new FrameLayout(this.f9407a);
            this.f9409c.addView(this.f9411e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f9408b.getEditText() != null) {
                m3181b();
            }
        }
        if (i == 0 || i == 1) {
            this.f9411e.setVisibility(0);
            this.f9411e.addView(textView);
        } else {
            this.f9409c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f9409c.setVisibility(0);
        this.f9410d++;
    }

    /* renamed from: b */
    public void m3181b() {
        if ((this.f9409c == null || this.f9408b.getEditText() == null) ? false : true) {
            EditText editText = this.f9408b.getEditText();
            boolean m69d = C5071c.m69d(this.f9407a);
            LinearLayout linearLayout = this.f9409c;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3594e.m2064k(linearLayout, m3175h(m69d, 2131165565, C3589v.C3594e.m2069f(editText)), m3175h(m69d, 2131165566, this.f9407a.getResources().getDimensionPixelSize(2131165564)), m3175h(m69d, 2131165565, C3589v.C3594e.m2070e(editText)), 0);
        }
    }

    /* renamed from: c */
    public void m3180c() {
        Animator animator = this.f9412f;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: d */
    public final void m3179d(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i != i3 && i != i2) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, i3 == i ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(C2727a.f9372a);
        list.add(ofFloat);
        if (i3 != i) {
            return;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f9413g, 0.0f);
        ofFloat2.setDuration(217L);
        ofFloat2.setInterpolator(C2727a.f9375d);
        list.add(ofFloat2);
    }

    /* renamed from: e */
    public boolean m3178e() {
        boolean z = true;
        if (this.f9415i != 1 || this.f9418l == null || TextUtils.isEmpty(this.f9416j)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public final TextView m3177f(int i) {
        if (i != 1) {
            if (i == 2) {
                return this.f9424r;
            }
            return null;
        }
        return this.f9418l;
    }

    /* renamed from: g */
    public int m3176g() {
        TextView textView = this.f9418l;
        return textView != null ? textView.getCurrentTextColor() : -1;
    }

    /* renamed from: h */
    public final int m3175h(boolean z, int i, int i2) {
        if (z) {
            i2 = this.f9407a.getResources().getDimensionPixelSize(i);
        }
        return i2;
    }

    /* renamed from: i */
    public void m3174i() {
        this.f9416j = null;
        m3180c();
        if (this.f9414h == 1) {
            if (!this.f9423q || TextUtils.isEmpty(this.f9422p)) {
                this.f9415i = 0;
            } else {
                this.f9415i = 2;
            }
        }
        m3171l(this.f9414h, this.f9415i, m3172k(this.f9418l, null));
    }

    /* renamed from: j */
    public void m3173j(TextView textView, int i) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f9409c;
        if (linearLayout == null) {
            return;
        }
        if (!(i == 0 || i == 1) || (frameLayout = this.f9411e) == null) {
            linearLayout.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i2 = this.f9410d - 1;
        this.f9410d = i2;
        LinearLayout linearLayout2 = this.f9409c;
        if (i2 != 0) {
            return;
        }
        linearLayout2.setVisibility(8);
    }

    /* renamed from: k */
    public final boolean m3172k(TextView textView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f9408b;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        return C3589v.C3596g.m2058c(textInputLayout) && this.f9408b.isEnabled() && (this.f9415i != this.f9414h || textView == null || !TextUtils.equals(textView.getText(), charSequence));
    }

    /* renamed from: l */
    public final void m3171l(int i, int i2, boolean z) {
        TextView m3177f;
        TextView m3177f2;
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f9412f = animatorSet;
            ArrayList arrayList = new ArrayList();
            m3179d(arrayList, this.f9423q, this.f9424r, 2, i, i2);
            m3179d(arrayList, this.f9417k, this.f9418l, 1, i, i2);
            C3102d.m2647E(animatorSet, arrayList);
            animatorSet.addListener(new C2748a(i2, m3177f(i), i, m3177f(i2)));
            animatorSet.start();
        } else if (i != i2) {
            if (i2 != 0 && (m3177f2 = m3177f(i2)) != null) {
                m3177f2.setVisibility(0);
                m3177f2.setAlpha(1.0f);
            }
            if (i != 0 && (m3177f = m3177f(i)) != null) {
                m3177f.setVisibility(4);
                if (i == 1) {
                    m3177f.setText((CharSequence) null);
                }
            }
            this.f9414h = i2;
        }
        this.f9408b.m4515y();
        this.f9408b.m4547A(z, false);
        this.f9408b.m4540H();
    }
}
