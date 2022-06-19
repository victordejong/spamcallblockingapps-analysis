package com.google.android.material.textfield;

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
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.p026h.C0595u;
import androidx.core.widget.C0628i;
import com.google.android.material.C4492a;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.p142a.C4506b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.material.textfield.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/f.class */
public final class C4835f {

    /* renamed from: a */
    private final Context f20851a;

    /* renamed from: b */
    private final TextInputLayout f20852b;

    /* renamed from: c */
    private LinearLayout f20853c;

    /* renamed from: d */
    private int f20854d;

    /* renamed from: e */
    private FrameLayout f20855e;

    /* renamed from: f */
    private int f20856f;

    /* renamed from: g */
    private Animator f20857g;

    /* renamed from: h */
    private final float f20858h;

    /* renamed from: i */
    private int f20859i;

    /* renamed from: j */
    private int f20860j;

    /* renamed from: k */
    private CharSequence f20861k;

    /* renamed from: l */
    private boolean f20862l;

    /* renamed from: m */
    private TextView f20863m;

    /* renamed from: n */
    private int f20864n;

    /* renamed from: o */
    private ColorStateList f20865o;

    /* renamed from: p */
    private CharSequence f20866p;

    /* renamed from: q */
    private boolean f20867q;

    /* renamed from: r */
    private TextView f20868r;

    /* renamed from: s */
    private int f20869s;

    /* renamed from: t */
    private ColorStateList f20870t;

    /* renamed from: u */
    private Typeface f20871u;

    public C4835f(TextInputLayout textInputLayout) {
        this.f20851a = textInputLayout.getContext();
        this.f20852b = textInputLayout;
        this.f20858h = this.f20851a.getResources().getDimensionPixelSize(C4492a.C4496d.design_textinput_caption_translate_y);
    }

    /* renamed from: a */
    private ObjectAnimator m2261a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f20858h, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(C4505a.f19572d);
        return ofFloat;
    }

    /* renamed from: a */
    private ObjectAnimator m2257a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(C4505a.f19569a);
        return ofFloat;
    }

    /* renamed from: a */
    private void m2266a(int i, int i2) {
        TextView m2241d;
        TextView m2241d2;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (m2241d2 = m2241d(i2)) != null) {
            m2241d2.setVisibility(0);
            m2241d2.setAlpha(1.0f);
        }
        if (i != 0 && (m2241d = m2241d(i)) != null) {
            m2241d.setVisibility(4);
            if (i == 1) {
                m2241d.setText((CharSequence) null);
            }
        }
        this.f20859i = i2;
    }

    /* renamed from: a */
    private void m2265a(final int i, final int i2, boolean z) {
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f20857g = animatorSet;
            ArrayList arrayList = new ArrayList();
            m2252a(arrayList, this.f20867q, this.f20868r, 2, i, i2);
            m2252a(arrayList, this.f20862l, this.f20863m, 1, i, i2);
            C4506b.m3854a(animatorSet, arrayList);
            final TextView m2241d = m2241d(i);
            final TextView m2241d2 = m2241d(i2);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.f.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    C4835f.this.f20859i = i2;
                    C4835f.this.f20857g = null;
                    if (m2241d != null) {
                        m2241d.setVisibility(4);
                        if (i == 1 && C4835f.this.f20863m != null) {
                            C4835f.this.f20863m.setText((CharSequence) null);
                        }
                        if (m2241d2 == null) {
                            return;
                        }
                        m2241d2.setTranslationY(0.0f);
                        m2241d2.setAlpha(1.0f);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (m2241d2 != null) {
                        m2241d2.setVisibility(0);
                    }
                }
            });
            animatorSet.start();
        } else {
            m2266a(i, i2);
        }
        this.f20852b.m2345c();
        this.f20852b.m2354a(z);
        this.f20852b.m2339f();
    }

    /* renamed from: a */
    private void m2262a(ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: a */
    private void m2259a(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* renamed from: a */
    private void m2252a(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i != i3 && i != i2) {
            return;
        }
        list.add(m2257a(textView, i3 == i));
        if (i3 != i) {
            return;
        }
        list.add(m2261a(textView));
    }

    /* renamed from: a */
    private boolean m2258a(TextView textView, CharSequence charSequence) {
        return C0595u.m20299y(this.f20852b) && this.f20852b.isEnabled() && (this.f20860j != this.f20859i || textView == null || !TextUtils.equals(textView.getText(), charSequence));
    }

    /* renamed from: d */
    private TextView m2241d(int i) {
        TextView textView;
        switch (i) {
            case 1:
                textView = this.f20863m;
                break;
            case 2:
                textView = this.f20868r;
                break;
            default:
                textView = null;
                break;
        }
        return textView;
    }

    /* renamed from: e */
    private boolean m2239e(int i) {
        boolean z = true;
        if (i != 1 || this.f20863m == null || TextUtils.isEmpty(this.f20861k)) {
            z = false;
        }
        return z;
    }

    /* renamed from: m */
    private boolean m2231m() {
        return (this.f20853c == null || this.f20852b.getEditText() == null) ? false : true;
    }

    /* renamed from: a */
    void m2268a() {
        m2244c();
        if (this.f20859i == 2) {
            this.f20860j = 0;
        }
        m2265a(this.f20859i, this.f20860j, m2258a(this.f20868r, (CharSequence) null));
    }

    /* renamed from: a */
    public void m2264a(ColorStateList colorStateList) {
        this.f20865o = colorStateList;
        if (this.f20863m == null || colorStateList == null) {
            return;
        }
        this.f20863m.setTextColor(colorStateList);
    }

    /* renamed from: a */
    public void m2263a(Typeface typeface) {
        if (typeface != this.f20871u) {
            this.f20871u = typeface;
            m2259a(this.f20863m, typeface);
            m2259a(this.f20868r, typeface);
        }
    }

    /* renamed from: a */
    public void m2260a(TextView textView, int i) {
        if (this.f20853c == null && this.f20855e == null) {
            this.f20853c = new LinearLayout(this.f20851a);
            this.f20853c.setOrientation(0);
            this.f20852b.addView(this.f20853c, -1, -2);
            this.f20855e = new FrameLayout(this.f20851a);
            this.f20853c.addView(this.f20855e, -1, new FrameLayout.LayoutParams(-2, -2));
            this.f20853c.addView(new Space(this.f20851a), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.f20852b.getEditText() != null) {
                m2242d();
            }
        }
        if (m2267a(i)) {
            this.f20855e.setVisibility(0);
            this.f20855e.addView(textView);
            this.f20856f++;
        } else {
            this.f20853c.addView(textView, i);
        }
        this.f20853c.setVisibility(0);
        this.f20854d++;
    }

    /* renamed from: a */
    public void m2253a(CharSequence charSequence) {
        m2244c();
        this.f20866p = charSequence;
        this.f20868r.setText(charSequence);
        if (this.f20859i != 2) {
            this.f20860j = 2;
        }
        m2265a(this.f20859i, this.f20860j, m2258a(this.f20868r, charSequence));
    }

    /* renamed from: a */
    public void m2251a(boolean z) {
        if (this.f20862l == z) {
            return;
        }
        m2244c();
        if (z) {
            this.f20863m = new AppCompatTextView(this.f20851a);
            this.f20863m.setId(C4492a.C4498f.textinput_error);
            if (this.f20871u != null) {
                this.f20863m.setTypeface(this.f20871u);
            }
            m2249b(this.f20864n);
            m2264a(this.f20865o);
            this.f20863m.setVisibility(4);
            C0595u.m20325d(this.f20863m, 1);
            m2260a(this.f20863m, 0);
        } else {
            m2250b();
            m2247b(this.f20863m, 0);
            this.f20863m = null;
            this.f20852b.m2345c();
            this.f20852b.m2339f();
        }
        this.f20862l = z;
    }

    /* renamed from: a */
    boolean m2267a(int i) {
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: b */
    public void m2250b() {
        this.f20861k = null;
        m2244c();
        if (this.f20859i == 1) {
            if (!this.f20867q || TextUtils.isEmpty(this.f20866p)) {
                this.f20860j = 0;
            } else {
                this.f20860j = 2;
            }
        }
        m2265a(this.f20859i, this.f20860j, m2258a(this.f20863m, (CharSequence) null));
    }

    /* renamed from: b */
    public void m2249b(int i) {
        this.f20864n = i;
        if (this.f20863m != null) {
            this.f20852b.m2361a(this.f20863m, i);
        }
    }

    /* renamed from: b */
    public void m2248b(ColorStateList colorStateList) {
        this.f20870t = colorStateList;
        if (this.f20868r == null || colorStateList == null) {
            return;
        }
        this.f20868r.setTextColor(colorStateList);
    }

    /* renamed from: b */
    public void m2247b(TextView textView, int i) {
        if (this.f20853c == null) {
            return;
        }
        if (!m2267a(i) || this.f20855e == null) {
            this.f20853c.removeView(textView);
        } else {
            this.f20856f--;
            m2262a(this.f20855e, this.f20856f);
            this.f20855e.removeView(textView);
        }
        this.f20854d--;
        m2262a(this.f20853c, this.f20854d);
    }

    /* renamed from: b */
    public void m2246b(CharSequence charSequence) {
        m2244c();
        this.f20861k = charSequence;
        this.f20863m.setText(charSequence);
        if (this.f20859i != 1) {
            this.f20860j = 1;
        }
        m2265a(this.f20859i, this.f20860j, m2258a(this.f20863m, charSequence));
    }

    /* renamed from: b */
    public void m2245b(boolean z) {
        if (this.f20867q == z) {
            return;
        }
        m2244c();
        if (z) {
            this.f20868r = new AppCompatTextView(this.f20851a);
            this.f20868r.setId(C4492a.C4498f.textinput_helper_text);
            if (this.f20871u != null) {
                this.f20868r.setTypeface(this.f20871u);
            }
            this.f20868r.setVisibility(4);
            C0595u.m20325d(this.f20868r, 1);
            m2243c(this.f20869s);
            m2248b(this.f20870t);
            m2260a(this.f20868r, 1);
        } else {
            m2268a();
            m2247b(this.f20868r, 1);
            this.f20868r = null;
            this.f20852b.m2345c();
            this.f20852b.m2339f();
        }
        this.f20867q = z;
    }

    /* renamed from: c */
    void m2244c() {
        if (this.f20857g != null) {
            this.f20857g.cancel();
        }
    }

    /* renamed from: c */
    public void m2243c(int i) {
        this.f20869s = i;
        if (this.f20868r != null) {
            C0628i.m20144a(this.f20868r, i);
        }
    }

    /* renamed from: d */
    public void m2242d() {
        if (m2231m()) {
            C0595u.m20355a(this.f20853c, C0595u.m20316i(this.f20852b.getEditText()), 0, C0595u.m20314j(this.f20852b.getEditText()), 0);
        }
    }

    /* renamed from: e */
    public boolean m2240e() {
        return this.f20862l;
    }

    /* renamed from: f */
    public boolean m2238f() {
        return this.f20867q;
    }

    /* renamed from: g */
    public boolean m2237g() {
        return m2239e(this.f20860j);
    }

    /* renamed from: h */
    public CharSequence m2236h() {
        return this.f20861k;
    }

    /* renamed from: i */
    public CharSequence m2235i() {
        return this.f20866p;
    }

    /* renamed from: j */
    public int m2234j() {
        return this.f20863m != null ? this.f20863m.getCurrentTextColor() : -1;
    }

    /* renamed from: k */
    public ColorStateList m2233k() {
        return this.f20863m != null ? this.f20863m.getTextColors() : null;
    }

    /* renamed from: l */
    public int m2232l() {
        return this.f20868r != null ? this.f20868r.getCurrentTextColor() : -1;
    }
}
