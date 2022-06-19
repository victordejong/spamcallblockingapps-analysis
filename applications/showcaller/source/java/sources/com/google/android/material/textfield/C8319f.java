package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.C0649k;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p097m.C1898b;
import p078c.p084c.p085a.p096b.p105u.C1919c;
/* renamed from: com.google.android.material.textfield.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/f.class */
public final class C8319f {

    /* renamed from: a */
    private final Context f37512a;

    /* renamed from: b */
    private final TextInputLayout f37513b;

    /* renamed from: c */
    private LinearLayout f37514c;

    /* renamed from: d */
    private int f37515d;

    /* renamed from: e */
    private FrameLayout f37516e;

    /* renamed from: f */
    private Animator f37517f;

    /* renamed from: g */
    private final float f37518g;

    /* renamed from: h */
    private int f37519h;

    /* renamed from: i */
    private int f37520i;

    /* renamed from: j */
    private CharSequence f37521j;

    /* renamed from: k */
    private boolean f37522k;

    /* renamed from: l */
    private TextView f37523l;

    /* renamed from: m */
    private CharSequence f37524m;

    /* renamed from: n */
    private int f37525n;

    /* renamed from: o */
    private ColorStateList f37526o;

    /* renamed from: p */
    private CharSequence f37527p;

    /* renamed from: q */
    private boolean f37528q;

    /* renamed from: r */
    private TextView f37529r;

    /* renamed from: s */
    private int f37530s;

    /* renamed from: t */
    private ColorStateList f37531t;

    /* renamed from: u */
    private Typeface f37532u;

    /* renamed from: com.google.android.material.textfield.f$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/f$a.class */
    public class C8320a extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ int f37533a;

        /* renamed from: b */
        final /* synthetic */ TextView f37534b;

        /* renamed from: c */
        final /* synthetic */ int f37535c;

        /* renamed from: d */
        final /* synthetic */ TextView f37536d;

        C8320a(int i, TextView textView, int i2, TextView textView2) {
            C8319f.this = r4;
            this.f37533a = i;
            this.f37534b = textView;
            this.f37535c = i2;
            this.f37536d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C8319f.this.f37519h = this.f37533a;
            C8319f.this.f37517f = null;
            TextView textView = this.f37534b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f37535c == 1 && C8319f.this.f37523l != null) {
                    C8319f.this.f37523l.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f37536d;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f37536d.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f37536d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public C8319f(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f37512a = context;
        this.f37513b = textInputLayout;
        this.f37518g = context.getResources().getDimensionPixelSize(C1888d.design_textinput_caption_translate_y);
    }

    /* renamed from: A */
    private void m3941A(int i, int i2) {
        TextView m3915l;
        TextView m3915l2;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (m3915l2 = m3915l(i2)) != null) {
            m3915l2.setVisibility(0);
            m3915l2.setAlpha(1.0f);
        }
        if (i != 0 && (m3915l = m3915l(i)) != null) {
            m3915l.setVisibility(4);
            if (i == 1) {
                m3915l.setText((CharSequence) null);
            }
        }
        this.f37519h = i2;
    }

    /* renamed from: I */
    private void m3933I(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* renamed from: K */
    private void m3931K(ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: L */
    private boolean m3930L(TextView textView, CharSequence charSequence) {
        return C1679w.m29313V(this.f37513b) && this.f37513b.isEnabled() && (this.f37520i != this.f37519h || textView == null || !TextUtils.equals(textView.getText(), charSequence));
    }

    /* renamed from: O */
    private void m3927O(int i, int i2, boolean z) {
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f37517f = animatorSet;
            ArrayList arrayList = new ArrayList();
            m3919h(arrayList, this.f37528q, this.f37529r, 2, i, i2);
            m3919h(arrayList, this.f37522k, this.f37523l, 1, i, i2);
            C1898b.m28749a(animatorSet, arrayList);
            animatorSet.addListener(new C8320a(i2, m3915l(i), i, m3915l(i2)));
            animatorSet.start();
        } else {
            m3941A(i, i2);
        }
        this.f37513b.m4013r0();
        this.f37513b.m4007u0(z);
        this.f37513b.m4070E0();
    }

    /* renamed from: f */
    private boolean m3921f() {
        return (this.f37514c == null || this.f37513b.getEditText() == null) ? false : true;
    }

    /* renamed from: h */
    private void m3919h(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i != i3 && i != i2) {
            return;
        }
        list.add(m3918i(textView, i3 == i));
        if (i3 != i) {
            return;
        }
        list.add(m3917j(textView));
    }

    /* renamed from: i */
    private ObjectAnimator m3918i(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(C1897a.f6813a);
        return ofFloat;
    }

    /* renamed from: j */
    private ObjectAnimator m3917j(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f37518g, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(C1897a.f6816d);
        return ofFloat;
    }

    /* renamed from: l */
    private TextView m3915l(int i) {
        if (i != 1) {
            if (i == 2) {
                return this.f37529r;
            }
            return null;
        }
        return this.f37523l;
    }

    /* renamed from: s */
    private int m3908s(boolean z, int i, int i2) {
        if (z) {
            i2 = this.f37512a.getResources().getDimensionPixelSize(i);
        }
        return i2;
    }

    /* renamed from: v */
    private boolean m3905v(int i) {
        boolean z = true;
        if (i != 1 || this.f37523l == null || TextUtils.isEmpty(this.f37521j)) {
            z = false;
        }
        return z;
    }

    /* renamed from: B */
    public void m3940B(CharSequence charSequence) {
        this.f37524m = charSequence;
        TextView textView = this.f37523l;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    /* renamed from: C */
    public void m3939C(boolean z) {
        if (this.f37522k == z) {
            return;
        }
        m3920g();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f37512a);
            this.f37523l = appCompatTextView;
            appCompatTextView.setId(C1890f.textinput_error);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f37523l.setTextAlignment(5);
            }
            Typeface typeface = this.f37532u;
            if (typeface != null) {
                this.f37523l.setTypeface(typeface);
            }
            m3938D(this.f37525n);
            m3937E(this.f37526o);
            m3940B(this.f37524m);
            this.f37523l.setVisibility(4);
            C1679w.m29269t0(this.f37523l, 1);
            m3923d(this.f37523l, 0);
        } else {
            m3907t();
            m3901z(this.f37523l, 0);
            this.f37523l = null;
            this.f37513b.m4013r0();
            this.f37513b.m4070E0();
        }
        this.f37522k = z;
    }

    /* renamed from: D */
    public void m3938D(int i) {
        this.f37525n = i;
        TextView textView = this.f37523l;
        if (textView != null) {
            this.f37513b.m4039e0(textView, i);
        }
    }

    /* renamed from: E */
    public void m3937E(ColorStateList colorStateList) {
        this.f37526o = colorStateList;
        TextView textView = this.f37523l;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* renamed from: F */
    public void m3936F(int i) {
        this.f37530s = i;
        TextView textView = this.f37529r;
        if (textView != null) {
            C0649k.m33074q(textView, i);
        }
    }

    /* renamed from: G */
    public void m3935G(boolean z) {
        if (this.f37528q == z) {
            return;
        }
        m3920g();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f37512a);
            this.f37529r = appCompatTextView;
            appCompatTextView.setId(C1890f.textinput_helper_text);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f37529r.setTextAlignment(5);
            }
            Typeface typeface = this.f37532u;
            if (typeface != null) {
                this.f37529r.setTypeface(typeface);
            }
            this.f37529r.setVisibility(4);
            C1679w.m29269t0(this.f37529r, 1);
            m3936F(this.f37530s);
            m3934H(this.f37531t);
            m3923d(this.f37529r, 1);
        } else {
            m3906u();
            m3901z(this.f37529r, 1);
            this.f37529r = null;
            this.f37513b.m4013r0();
            this.f37513b.m4070E0();
        }
        this.f37528q = z;
    }

    /* renamed from: H */
    public void m3934H(ColorStateList colorStateList) {
        this.f37531t = colorStateList;
        TextView textView = this.f37529r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* renamed from: J */
    public void m3932J(Typeface typeface) {
        if (typeface != this.f37532u) {
            this.f37532u = typeface;
            m3933I(this.f37523l, typeface);
            m3933I(this.f37529r, typeface);
        }
    }

    /* renamed from: M */
    public void m3929M(CharSequence charSequence) {
        m3920g();
        this.f37521j = charSequence;
        this.f37523l.setText(charSequence);
        int i = this.f37519h;
        if (i != 1) {
            this.f37520i = 1;
        }
        m3927O(i, this.f37520i, m3930L(this.f37523l, charSequence));
    }

    /* renamed from: N */
    public void m3928N(CharSequence charSequence) {
        m3920g();
        this.f37527p = charSequence;
        this.f37529r.setText(charSequence);
        int i = this.f37519h;
        if (i != 2) {
            this.f37520i = 2;
        }
        m3927O(i, this.f37520i, m3930L(this.f37529r, charSequence));
    }

    /* renamed from: d */
    public void m3923d(TextView textView, int i) {
        if (this.f37514c == null && this.f37516e == null) {
            LinearLayout linearLayout = new LinearLayout(this.f37512a);
            this.f37514c = linearLayout;
            linearLayout.setOrientation(0);
            this.f37513b.addView(this.f37514c, -1, -2);
            this.f37516e = new FrameLayout(this.f37512a);
            this.f37514c.addView(this.f37516e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f37513b.getEditText() != null) {
                m3922e();
            }
        }
        if (m3904w(i)) {
            this.f37516e.setVisibility(0);
            this.f37516e.addView(textView);
        } else {
            this.f37514c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f37514c.setVisibility(0);
        this.f37515d++;
    }

    /* renamed from: e */
    public void m3922e() {
        if (m3921f()) {
            EditText editText = this.f37513b.getEditText();
            boolean m28680g = C1919c.m28680g(this.f37512a);
            LinearLayout linearLayout = this.f37514c;
            int i = C1888d.material_helper_text_font_1_3_padding_horizontal;
            C1679w.m29339F0(linearLayout, m3908s(m28680g, i, C1679w.m29334I(editText)), m3908s(m28680g, C1888d.material_helper_text_font_1_3_padding_top, this.f37512a.getResources().getDimensionPixelSize(C1888d.material_helper_text_default_padding_top)), m3908s(m28680g, i, C1679w.m29336H(editText)), 0);
        }
    }

    /* renamed from: g */
    void m3920g() {
        Animator animator = this.f37517f;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: k */
    public boolean m3916k() {
        return m3905v(this.f37520i);
    }

    /* renamed from: m */
    public CharSequence m3914m() {
        return this.f37524m;
    }

    /* renamed from: n */
    public CharSequence m3913n() {
        return this.f37521j;
    }

    /* renamed from: o */
    public int m3912o() {
        TextView textView = this.f37523l;
        return textView != null ? textView.getCurrentTextColor() : -1;
    }

    /* renamed from: p */
    public ColorStateList m3911p() {
        TextView textView = this.f37523l;
        return textView != null ? textView.getTextColors() : null;
    }

    /* renamed from: q */
    public CharSequence m3910q() {
        return this.f37527p;
    }

    /* renamed from: r */
    public int m3909r() {
        TextView textView = this.f37529r;
        return textView != null ? textView.getCurrentTextColor() : -1;
    }

    /* renamed from: t */
    public void m3907t() {
        this.f37521j = null;
        m3920g();
        if (this.f37519h == 1) {
            if (!this.f37528q || TextUtils.isEmpty(this.f37527p)) {
                this.f37520i = 0;
            } else {
                this.f37520i = 2;
            }
        }
        m3927O(this.f37519h, this.f37520i, m3930L(this.f37523l, null));
    }

    /* renamed from: u */
    void m3906u() {
        m3920g();
        int i = this.f37519h;
        if (i == 2) {
            this.f37520i = 0;
        }
        m3927O(i, this.f37520i, m3930L(this.f37529r, null));
    }

    /* renamed from: w */
    boolean m3904w(int i) {
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: x */
    public boolean m3903x() {
        return this.f37522k;
    }

    /* renamed from: y */
    public boolean m3902y() {
        return this.f37528q;
    }

    /* renamed from: z */
    public void m3901z(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.f37514c == null) {
            return;
        }
        if (!m3904w(i) || (frameLayout = this.f37516e) == null) {
            this.f37514c.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i2 = this.f37515d - 1;
        this.f37515d = i2;
        m3931K(this.f37514c, i2);
    }
}
