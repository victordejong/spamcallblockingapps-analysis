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
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/IndicatorViewController.class */
public final class IndicatorViewController {

    /* renamed from: a */
    private final Context f11469a;
    @NonNull

    /* renamed from: b */
    private final TextInputLayout f11470b;

    /* renamed from: c */
    private LinearLayout f11471c;

    /* renamed from: d */
    private int f11472d;

    /* renamed from: e */
    private FrameLayout f11473e;

    /* renamed from: f */
    private int f11474f;
    @Nullable

    /* renamed from: g */
    private Animator f11475g;

    /* renamed from: h */
    private final float f11476h;

    /* renamed from: i */
    private int f11477i;

    /* renamed from: j */
    private int f11478j;
    @Nullable

    /* renamed from: k */
    private CharSequence f11479k;

    /* renamed from: l */
    private boolean f11480l;
    @Nullable

    /* renamed from: m */
    private TextView f11481m;
    @Nullable

    /* renamed from: n */
    private CharSequence f11482n;

    /* renamed from: o */
    private int f11483o;
    @Nullable

    /* renamed from: p */
    private ColorStateList f11484p;

    /* renamed from: q */
    private CharSequence f11485q;

    /* renamed from: r */
    private boolean f11486r;
    @Nullable

    /* renamed from: s */
    private TextView f11487s;

    /* renamed from: t */
    private int f11488t;
    @Nullable

    /* renamed from: u */
    private ColorStateList f11489u;

    /* renamed from: v */
    private Typeface f11490v;

    public IndicatorViewController(@NonNull TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f11469a = context;
        this.f11470b = textInputLayout;
        this.f11476h = context.getResources().getDimensionPixelSize(C1027R.dimen.design_textinput_caption_translate_y);
    }

    /* renamed from: H */
    private void m8836H(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* renamed from: J */
    private void m8834J(@NonNull ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: K */
    private boolean m8833K(@Nullable TextView textView, @Nullable CharSequence charSequence) {
        return ViewCompat.m19218S(this.f11470b) && this.f11470b.isEnabled() && (this.f11478j != this.f11477i || textView == null || !TextUtils.equals(textView.getText(), charSequence));
    }

    /* renamed from: N */
    private void m8830N(final int i, final int i2, boolean z) {
        if (i != i2) {
            if (z) {
                AnimatorSet animatorSet = new AnimatorSet();
                this.f11475g = animatorSet;
                ArrayList arrayList = new ArrayList();
                m8822h(arrayList, this.f11486r, this.f11487s, 2, i, i2);
                m8822h(arrayList, this.f11480l, this.f11481m, 1, i, i2);
                AnimatorSetCompat.m10767a(animatorSet, arrayList);
                final TextView l = m8818l(i);
                final TextView l2 = m8818l(i2);
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.IndicatorViewController.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        IndicatorViewController.this.f11477i = i2;
                        IndicatorViewController.this.f11475g = null;
                        TextView textView = l;
                        if (textView != null) {
                            textView.setVisibility(4);
                            if (i == 1 && IndicatorViewController.this.f11481m != null) {
                                IndicatorViewController.this.f11481m.setText((CharSequence) null);
                            }
                        }
                        TextView textView2 = l2;
                        if (textView2 != null) {
                            textView2.setTranslationY(0.0f);
                            l2.setAlpha(1.0f);
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        TextView textView = l2;
                        if (textView != null) {
                            textView.setVisibility(0);
                        }
                    }
                });
                animatorSet.start();
            } else {
                m8804z(i, i2);
            }
            this.f11470b.m8745k0();
            this.f11470b.m8737o0(z);
            this.f11470b.m8717y0();
        }
    }

    /* renamed from: f */
    private boolean m8824f() {
        return (this.f11471c == null || this.f11470b.getEditText() == null) ? false : true;
    }

    /* renamed from: h */
    private void m8822h(@NonNull List<Animator> list, boolean z, @Nullable TextView textView, int i, int i2, int i3) {
        if (textView != null && z) {
            if (i == i3 || i == i2) {
                list.add(m8821i(textView, i3 == i));
                if (i3 == i) {
                    list.add(m8820j(textView));
                }
            }
        }
    }

    /* renamed from: i */
    private ObjectAnimator m8821i(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(AnimationUtils.f9923a);
        return ofFloat;
    }

    /* renamed from: j */
    private ObjectAnimator m8820j(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f11476h, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(AnimationUtils.f9926d);
        return ofFloat;
    }

    @Nullable
    /* renamed from: l */
    private TextView m8818l(int i) {
        if (i == 1) {
            return this.f11481m;
        }
        if (i != 2) {
            return null;
        }
        return this.f11487s;
    }

    /* renamed from: u */
    private boolean m8809u(int i) {
        boolean z = true;
        if (i != 1 || this.f11481m == null || TextUtils.isEmpty(this.f11479k)) {
            z = false;
        }
        return z;
    }

    /* renamed from: z */
    private void m8804z(int i, int i2) {
        TextView l;
        TextView l2;
        if (i != i2) {
            if (!(i2 == 0 || (l2 = m8818l(i2)) == null)) {
                l2.setVisibility(0);
                l2.setAlpha(1.0f);
            }
            if (!(i == 0 || (l = m8818l(i)) == null)) {
                l.setVisibility(4);
                if (i == 1) {
                    l.setText((CharSequence) null);
                }
            }
            this.f11477i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public void m8843A(@Nullable CharSequence charSequence) {
        this.f11482n = charSequence;
        TextView textView = this.f11481m;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public void m8842B(boolean z) {
        if (this.f11480l != z) {
            m8823g();
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(this.f11469a);
                this.f11481m = appCompatTextView;
                appCompatTextView.setId(C1027R.C1030id.textinput_error);
                if (Build.VERSION.SDK_INT >= 17) {
                    this.f11481m.setTextAlignment(5);
                }
                Typeface typeface = this.f11490v;
                if (typeface != null) {
                    this.f11481m.setTypeface(typeface);
                }
                m8841C(this.f11483o);
                m8840D(this.f11484p);
                m8843A(this.f11482n);
                this.f11481m.setVisibility(4);
                ViewCompat.m19179p0(this.f11481m, 1);
                m8826d(this.f11481m, 0);
            } else {
                m8811s();
                m8805y(this.f11481m, 0);
                this.f11481m = null;
                this.f11470b.m8745k0();
                this.f11470b.m8717y0();
            }
            this.f11480l = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public void m8841C(@StyleRes int i) {
        this.f11483o = i;
        TextView textView = this.f11481m;
        if (textView != null) {
            this.f11470b.m8768Y(textView, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public void m8840D(@Nullable ColorStateList colorStateList) {
        this.f11484p = colorStateList;
        TextView textView = this.f11481m;
        if (textView != null && colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public void m8839E(@StyleRes int i) {
        this.f11488t = i;
        TextView textView = this.f11487s;
        if (textView != null) {
            TextViewCompat.m18817r(textView, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public void m8838F(boolean z) {
        if (this.f11486r != z) {
            m8823g();
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(this.f11469a);
                this.f11487s = appCompatTextView;
                appCompatTextView.setId(C1027R.C1030id.textinput_helper_text);
                if (Build.VERSION.SDK_INT >= 17) {
                    this.f11487s.setTextAlignment(5);
                }
                Typeface typeface = this.f11490v;
                if (typeface != null) {
                    this.f11487s.setTypeface(typeface);
                }
                this.f11487s.setVisibility(4);
                ViewCompat.m19179p0(this.f11487s, 1);
                m8839E(this.f11488t);
                m8837G(this.f11489u);
                m8826d(this.f11487s, 1);
            } else {
                m8810t();
                m8805y(this.f11487s, 1);
                this.f11487s = null;
                this.f11470b.m8745k0();
                this.f11470b.m8717y0();
            }
            this.f11486r = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public void m8837G(@Nullable ColorStateList colorStateList) {
        this.f11489u = colorStateList;
        TextView textView = this.f11487s;
        if (textView != null && colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public void m8835I(Typeface typeface) {
        if (typeface != this.f11490v) {
            this.f11490v = typeface;
            m8836H(this.f11481m, typeface);
            m8836H(this.f11487s, typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public void m8832L(CharSequence charSequence) {
        m8823g();
        this.f11479k = charSequence;
        this.f11481m.setText(charSequence);
        if (this.f11477i != 1) {
            this.f11478j = 1;
        }
        m8830N(this.f11477i, this.f11478j, m8833K(this.f11481m, charSequence));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: M */
    public void m8831M(CharSequence charSequence) {
        m8823g();
        this.f11485q = charSequence;
        this.f11487s.setText(charSequence);
        if (this.f11477i != 2) {
            this.f11478j = 2;
        }
        m8830N(this.f11477i, this.f11478j, m8833K(this.f11487s, charSequence));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m8826d(TextView textView, int i) {
        if (this.f11471c == null && this.f11473e == null) {
            LinearLayout linearLayout = new LinearLayout(this.f11469a);
            this.f11471c = linearLayout;
            linearLayout.setOrientation(0);
            this.f11470b.addView(this.f11471c, -1, -2);
            this.f11473e = new FrameLayout(this.f11469a);
            this.f11471c.addView(this.f11473e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f11470b.getEditText() != null) {
                m8825e();
            }
        }
        if (m8808v(i)) {
            this.f11473e.setVisibility(0);
            this.f11473e.addView(textView);
            this.f11474f++;
        } else {
            this.f11471c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f11471c.setVisibility(0);
        this.f11472d++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m8825e() {
        if (m8824f()) {
            ViewCompat.m19241B0(this.f11471c, ViewCompat.m19232G(this.f11470b.getEditText()), 0, ViewCompat.m19234F(this.f11470b.getEditText()), 0);
        }
    }

    /* renamed from: g */
    void m8823g() {
        Animator animator = this.f11475g;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public boolean m8819k() {
        return m8809u(this.f11478j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: m */
    public CharSequence m8817m() {
        return this.f11482n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: n */
    public CharSequence m8816n() {
        return this.f11479k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    /* renamed from: o */
    public int m8815o() {
        TextView textView = this.f11481m;
        return textView != null ? textView.getCurrentTextColor() : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: p */
    public ColorStateList m8814p() {
        TextView textView = this.f11481m;
        return textView != null ? textView.getTextColors() : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public CharSequence m8813q() {
        return this.f11485q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    /* renamed from: r */
    public int m8812r() {
        TextView textView = this.f11487s;
        return textView != null ? textView.getCurrentTextColor() : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m8811s() {
        this.f11479k = null;
        m8823g();
        if (this.f11477i == 1) {
            if (!this.f11486r || TextUtils.isEmpty(this.f11485q)) {
                this.f11478j = 0;
            } else {
                this.f11478j = 2;
            }
        }
        m8830N(this.f11477i, this.f11478j, m8833K(this.f11481m, null));
    }

    /* renamed from: t */
    void m8810t() {
        m8823g();
        if (this.f11477i == 2) {
            this.f11478j = 0;
        }
        m8830N(this.f11477i, this.f11478j, m8833K(this.f11487s, null));
    }

    /* renamed from: v */
    boolean m8808v(int i) {
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public boolean m8807w() {
        return this.f11480l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public boolean m8806x() {
        return this.f11486r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public void m8805y(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.f11471c != null) {
            if (!m8808v(i) || (frameLayout = this.f11473e) == null) {
                this.f11471c.removeView(textView);
            } else {
                int i2 = this.f11474f - 1;
                this.f11474f = i2;
                m8834J(frameLayout, i2);
                this.f11473e.removeView(textView);
            }
            int i3 = this.f11472d - 1;
            this.f11472d = i3;
            m8834J(this.f11471c, i3);
        }
    }
}
