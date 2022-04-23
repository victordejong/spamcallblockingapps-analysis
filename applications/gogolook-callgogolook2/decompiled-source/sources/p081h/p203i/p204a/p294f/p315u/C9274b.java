package p081h.p203i.p204a.p294f.p315u;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.legacy.widget.Space;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p294f.p295a.C9167a;
import p081h.p203i.p204a.p294f.p295a.C9168b;
/* renamed from: h.i.a.f.u.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/u/b.class */
public final class C9274b {

    /* renamed from: a */
    public final Context f21288a;

    /* renamed from: b */
    public final TextInputLayout f21289b;

    /* renamed from: c */
    public LinearLayout f21290c;

    /* renamed from: d */
    public int f21291d;

    /* renamed from: e */
    public FrameLayout f21292e;

    /* renamed from: f */
    public int f21293f;
    @Nullable

    /* renamed from: g */
    public Animator f21294g;

    /* renamed from: h */
    public final float f21295h;

    /* renamed from: i */
    public int f21296i;

    /* renamed from: j */
    public int f21297j;

    /* renamed from: k */
    public CharSequence f21298k;

    /* renamed from: l */
    public boolean f21299l;

    /* renamed from: m */
    public TextView f21300m;

    /* renamed from: n */
    public int f21301n;

    /* renamed from: o */
    public CharSequence f21302o;

    /* renamed from: p */
    public boolean f21303p;

    /* renamed from: q */
    public TextView f21304q;

    /* renamed from: r */
    public int f21305r;

    /* renamed from: s */
    public Typeface f21306s;

    /* renamed from: h.i.a.f.u.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/u/b$a.class */
    public class C9275a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ int f21307a;

        /* renamed from: b */
        public final /* synthetic */ TextView f21308b;

        /* renamed from: c */
        public final /* synthetic */ int f21309c;

        /* renamed from: d */
        public final /* synthetic */ TextView f21310d;

        public C9275a(int i, TextView textView, int i2, TextView textView2) {
            this.f21307a = i;
            this.f21308b = textView;
            this.f21309c = i2;
            this.f21310d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C9274b.this.f21296i = this.f21307a;
            C9274b.this.f21294g = null;
            TextView textView = this.f21308b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f21309c == 1 && C9274b.this.f21300m != null) {
                    C9274b.this.f21300m.setText((CharSequence) null);
                }
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f21310d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public C9274b(TextInputLayout textInputLayout) {
        this.f21288a = textInputLayout.getContext();
        this.f21289b = textInputLayout;
        this.f21295h = this.f21288a.getResources().getDimensionPixelSize(R$dimen.design_textinput_caption_translate_y);
    }

    /* renamed from: a */
    public final ObjectAnimator m15535a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f21295h, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(C9167a.f20882d);
        return ofFloat;
    }

    /* renamed from: a */
    public final ObjectAnimator m15532a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(C9167a.f20879a);
        return ofFloat;
    }

    @Nullable
    /* renamed from: a */
    public final TextView m15539a(int i) {
        if (i == 1) {
            return this.f21300m;
        }
        if (i != 2) {
            return null;
        }
        return this.f21304q;
    }

    /* renamed from: a */
    public void m15540a() {
        if (m15525b()) {
            ViewCompat.setPaddingRelative(this.f21290c, ViewCompat.getPaddingStart(this.f21289b.m31182m()), 0, ViewCompat.getPaddingEnd(this.f21289b.m31182m()), 0);
        }
    }

    /* renamed from: a */
    public final void m15538a(int i, int i2) {
        TextView a;
        TextView a2;
        if (i != i2) {
            if (!(i2 == 0 || (a2 = m15539a(i2)) == null)) {
                a2.setVisibility(0);
                a2.setAlpha(1.0f);
            }
            if (!(i == 0 || (a = m15539a(i)) == null)) {
                a.setVisibility(4);
                if (i == 1) {
                    a.setText((CharSequence) null);
                }
            }
            this.f21296i = i2;
        }
    }

    /* renamed from: a */
    public final void m15537a(int i, int i2, boolean z) {
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f21294g = animatorSet;
            ArrayList arrayList = new ArrayList();
            m15527a(arrayList, this.f21303p, this.f21304q, 2, i, i2);
            m15527a(arrayList, this.f21299l, this.f21300m, 1, i, i2);
            C9168b.m15972a(animatorSet, arrayList);
            animatorSet.addListener(new C9275a(i2, m15539a(i), i, m15539a(i2)));
            animatorSet.start();
        } else {
            m15538a(i, i2);
        }
        this.f21289b.m31172w();
        this.f21289b.m31188g(z);
        this.f21289b.m31220B();
    }

    /* renamed from: a */
    public final void m15536a(ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: a */
    public void m15534a(TextView textView, int i) {
        if (this.f21290c == null && this.f21292e == null) {
            this.f21290c = new LinearLayout(this.f21288a);
            this.f21290c.setOrientation(0);
            this.f21289b.addView(this.f21290c, -1, -2);
            this.f21292e = new FrameLayout(this.f21288a);
            this.f21290c.addView(this.f21292e, -1, new FrameLayout.LayoutParams(-2, -2));
            this.f21290c.addView(new Space(this.f21288a), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.f21289b.m31182m() != null) {
                m15540a();
            }
        }
        if (m15519c(i)) {
            this.f21292e.setVisibility(0);
            this.f21292e.addView(textView);
            this.f21293f++;
        } else {
            this.f21290c.addView(textView, i);
        }
        this.f21290c.setVisibility(0);
        this.f21291d++;
    }

    /* renamed from: a */
    public void m15528a(CharSequence charSequence) {
        m15520c();
        this.f21298k = charSequence;
        this.f21300m.setText(charSequence);
        if (this.f21296i != 1) {
            this.f21297j = 1;
        }
        m15537a(this.f21296i, this.f21297j, m15533a(this.f21300m, charSequence));
    }

    /* renamed from: a */
    public final void m15527a(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView != null && z) {
            if (i == i3 || i == i2) {
                list.add(m15532a(textView, i3 == i));
                if (i3 == i) {
                    list.add(m15535a(textView));
                }
            }
        }
    }

    /* renamed from: a */
    public void m15526a(boolean z) {
        if (this.f21299l != z) {
            m15520c();
            if (z) {
                this.f21300m = new AppCompatTextView(this.f21288a);
                this.f21300m.setId(R$id.textinput_error);
                Typeface typeface = this.f21306s;
                if (typeface != null) {
                    this.f21300m.setTypeface(typeface);
                }
                m15517d(this.f21301n);
                this.f21300m.setVisibility(4);
                ViewCompat.setAccessibilityLiveRegion(this.f21300m, 1);
                m15534a(this.f21300m, 0);
            } else {
                m15512h();
                m15523b(this.f21300m, 0);
                this.f21300m = null;
                this.f21289b.m31172w();
                this.f21289b.m31220B();
            }
            this.f21299l = z;
        }
    }

    /* renamed from: a */
    public final boolean m15533a(TextView textView, @Nullable CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f21289b) && this.f21289b.isEnabled() && (this.f21297j != this.f21296i || textView == null || !TextUtils.equals(textView.getText(), charSequence));
    }

    /* renamed from: b */
    public void m15523b(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.f21290c != null) {
            if (!m15519c(i) || (frameLayout = this.f21292e) == null) {
                this.f21290c.removeView(textView);
            } else {
                this.f21293f--;
                m15536a(frameLayout, this.f21293f);
                this.f21292e.removeView(textView);
            }
            this.f21291d--;
            m15536a(this.f21290c, this.f21291d);
        }
    }

    /* renamed from: b */
    public void m15522b(CharSequence charSequence) {
        m15520c();
        this.f21302o = charSequence;
        this.f21304q.setText(charSequence);
        if (this.f21296i != 2) {
            this.f21297j = 2;
        }
        m15537a(this.f21296i, this.f21297j, m15533a(this.f21304q, charSequence));
    }

    /* renamed from: b */
    public void m15521b(boolean z) {
        if (this.f21303p != z) {
            m15520c();
            if (z) {
                this.f21304q = new AppCompatTextView(this.f21288a);
                this.f21304q.setId(R$id.textinput_helper_text);
                Typeface typeface = this.f21306s;
                if (typeface != null) {
                    this.f21304q.setTypeface(typeface);
                }
                this.f21304q.setVisibility(4);
                ViewCompat.setAccessibilityLiveRegion(this.f21304q, 1);
                m15515e(this.f21305r);
                m15534a(this.f21304q, 1);
            } else {
                m15511i();
                m15523b(this.f21304q, 1);
                this.f21304q = null;
                this.f21289b.m31172w();
                this.f21289b.m31220B();
            }
            this.f21303p = z;
        }
    }

    /* renamed from: b */
    public final boolean m15525b() {
        return (this.f21290c == null || this.f21289b.m31182m() == null) ? false : true;
    }

    /* renamed from: b */
    public final boolean m15524b(int i) {
        boolean z = true;
        if (i != 1 || this.f21300m == null || TextUtils.isEmpty(this.f21298k)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public void m15520c() {
        Animator animator = this.f21294g;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: c */
    public boolean m15519c(int i) {
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: d */
    public void m15517d(@StyleRes int i) {
        this.f21301n = i;
        TextView textView = this.f21300m;
        if (textView != null) {
            this.f21289b.m31213a(textView, i);
        }
    }

    /* renamed from: d */
    public boolean m15518d() {
        return m15524b(this.f21297j);
    }

    /* renamed from: e */
    public CharSequence m15516e() {
        return this.f21298k;
    }

    /* renamed from: e */
    public void m15515e(@StyleRes int i) {
        this.f21305r = i;
        TextView textView = this.f21304q;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i);
        }
    }

    @ColorInt
    /* renamed from: f */
    public int m15514f() {
        TextView textView = this.f21300m;
        return textView != null ? textView.getCurrentTextColor() : -1;
    }

    @Nullable
    /* renamed from: g */
    public ColorStateList m15513g() {
        TextView textView = this.f21300m;
        return textView != null ? textView.getTextColors() : null;
    }

    /* renamed from: h */
    public void m15512h() {
        this.f21298k = null;
        m15520c();
        if (this.f21296i == 1) {
            if (!this.f21303p || TextUtils.isEmpty(this.f21302o)) {
                this.f21297j = 0;
            } else {
                this.f21297j = 2;
            }
        }
        m15537a(this.f21296i, this.f21297j, m15533a(this.f21300m, (CharSequence) null));
    }

    /* renamed from: i */
    public void m15511i() {
        m15520c();
        if (this.f21296i == 2) {
            this.f21297j = 0;
        }
        m15537a(this.f21296i, this.f21297j, m15533a(this.f21304q, (CharSequence) null));
    }

    /* renamed from: j */
    public boolean m15510j() {
        return this.f21299l;
    }

    /* renamed from: k */
    public boolean m15509k() {
        return this.f21303p;
    }
}
