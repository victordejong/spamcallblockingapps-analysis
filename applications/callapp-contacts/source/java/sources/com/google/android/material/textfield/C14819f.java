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
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.C0926v;
import androidx.core.widget.C0959h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p364a.C14390b;
import com.google.android.material.p371h.C14598c;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.material.textfield.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/f.class */
public final class C14819f {

    /* renamed from: a */
    final Context f54123a;

    /* renamed from: b */
    final TextInputLayout f54124b;

    /* renamed from: c */
    Animator f54125c;

    /* renamed from: d */
    int f54126d;

    /* renamed from: e */
    int f54127e;

    /* renamed from: f */
    CharSequence f54128f;

    /* renamed from: g */
    boolean f54129g;

    /* renamed from: h */
    TextView f54130h;

    /* renamed from: i */
    CharSequence f54131i;

    /* renamed from: j */
    int f54132j;

    /* renamed from: k */
    ColorStateList f54133k;

    /* renamed from: l */
    CharSequence f54134l;

    /* renamed from: m */
    boolean f54135m;

    /* renamed from: n */
    TextView f54136n;

    /* renamed from: o */
    int f54137o;

    /* renamed from: p */
    ColorStateList f54138p;

    /* renamed from: q */
    Typeface f54139q;

    /* renamed from: r */
    private LinearLayout f54140r;

    /* renamed from: s */
    private int f54141s;

    /* renamed from: t */
    private FrameLayout f54142t;

    /* renamed from: u */
    private final float f54143u;

    public C14819f(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f54123a = context;
        this.f54124b = textInputLayout;
        this.f54143u = context.getResources().getDimensionPixelSize(C14376a.C14380d.design_textinput_caption_translate_y);
    }

    /* renamed from: a */
    private int m9946a(boolean z, int i, int i2) {
        return z ? this.f54123a.getResources().getDimensionPixelSize(i) : i2;
    }

    /* renamed from: a */
    private ObjectAnimator m9953a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f54143u, BitmapDescriptorFactory.HUE_RED);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(C14389a.f52371d);
        return ofFloat;
    }

    /* renamed from: a */
    private static ObjectAnimator m9949a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(C14389a.f52368a);
        return ofFloat;
    }

    /* renamed from: a */
    private void m9956a(int i, int i2) {
        TextView m9938d;
        TextView m9938d2;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (m9938d2 = m9938d(i2)) != null) {
            m9938d2.setVisibility(0);
            m9938d2.setAlpha(1.0f);
        }
        if (i != 0 && (m9938d = m9938d(i)) != null) {
            m9938d.setVisibility(4);
            if (i == 1) {
                m9938d.setText((CharSequence) null);
            }
        }
        this.f54126d = i2;
    }

    /* renamed from: a */
    public static void m9951a(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* renamed from: a */
    private void m9947a(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i != i3 && i != i2) {
            return;
        }
        list.add(m9949a(textView, i3 == i));
        if (i3 != i) {
            return;
        }
        list.add(m9953a(textView));
    }

    /* renamed from: c */
    private static boolean m9940c(int i) {
        return i == 0 || i == 1;
    }

    /* renamed from: d */
    private TextView m9938d(int i) {
        if (i != 1) {
            if (i == 2) {
                return this.f54136n;
            }
            return null;
        }
        return this.f54130h;
    }

    /* renamed from: a */
    public final void m9958a() {
        this.f54128f = null;
        m9945b();
        if (this.f54126d == 1) {
            if (!this.f54135m || TextUtils.isEmpty(this.f54134l)) {
                this.f54127e = 0;
            } else {
                this.f54127e = 2;
            }
        }
        m9955a(this.f54126d, this.f54127e, m9950a(this.f54130h, (CharSequence) null));
    }

    /* renamed from: a */
    public final void m9957a(int i) {
        this.f54132j = i;
        TextView textView = this.f54130h;
        if (textView != null) {
            this.f54124b.m10038a(textView, i);
        }
    }

    /* renamed from: a */
    public final void m9955a(final int i, final int i2, boolean z) {
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f54125c = animatorSet;
            ArrayList arrayList = new ArrayList();
            m9947a(arrayList, this.f54135m, this.f54136n, 2, i, i2);
            m9947a(arrayList, this.f54129g, this.f54130h, 1, i, i2);
            C14390b.m11337a(animatorSet, arrayList);
            final TextView m9938d = m9938d(i);
            final TextView m9938d2 = m9938d(i2);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.f.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    C14819f.this.f54126d = i2;
                    C14819f.this.f54125c = null;
                    TextView textView = m9938d;
                    if (textView != null) {
                        textView.setVisibility(4);
                        if (i == 1 && C14819f.this.f54130h != null) {
                            C14819f.this.f54130h.setText((CharSequence) null);
                        }
                    }
                    TextView textView2 = m9938d2;
                    if (textView2 != null) {
                        textView2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        m9938d2.setAlpha(1.0f);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    TextView textView = m9938d2;
                    if (textView != null) {
                        textView.setVisibility(0);
                    }
                }
            });
            animatorSet.start();
        } else {
            m9956a(i, i2);
        }
        this.f54124b.m10018c();
        this.f54124b.m10026a(z, false);
        this.f54124b.m10010g();
    }

    /* renamed from: a */
    public final void m9954a(ColorStateList colorStateList) {
        this.f54133k = colorStateList;
        TextView textView = this.f54130h;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* renamed from: a */
    public final void m9952a(TextView textView, int i) {
        if (this.f54140r == null && this.f54142t == null) {
            LinearLayout linearLayout = new LinearLayout(this.f54123a);
            this.f54140r = linearLayout;
            linearLayout.setOrientation(0);
            this.f54124b.addView(this.f54140r, -1, -2);
            this.f54142t = new FrameLayout(this.f54123a);
            this.f54140r.addView(this.f54142t, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f54124b.f54005a != null) {
                m9941c();
            }
        }
        if (m9940c(i)) {
            this.f54142t.setVisibility(0);
            this.f54142t.addView(textView);
        } else {
            this.f54140r.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f54140r.setVisibility(0);
        this.f54141s++;
    }

    /* renamed from: a */
    public final void m9948a(CharSequence charSequence) {
        this.f54131i = charSequence;
        TextView textView = this.f54130h;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    /* renamed from: a */
    public final boolean m9950a(TextView textView, CharSequence charSequence) {
        if (!C0926v.m44157B(this.f54124b) || !this.f54124b.isEnabled()) {
            return false;
        }
        return this.f54127e != this.f54126d || textView == null || !TextUtils.equals(textView.getText(), charSequence);
    }

    /* renamed from: b */
    public final void m9945b() {
        Animator animator = this.f54125c;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: b */
    public final void m9944b(int i) {
        this.f54137o = i;
        TextView textView = this.f54136n;
        if (textView != null) {
            C0959h.m43965a(textView, i);
        }
    }

    /* renamed from: b */
    public final void m9943b(ColorStateList colorStateList) {
        this.f54138p = colorStateList;
        TextView textView = this.f54136n;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* renamed from: b */
    public final void m9942b(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.f54140r == null) {
            return;
        }
        if (!m9940c(i) || (frameLayout = this.f54142t) == null) {
            this.f54140r.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i2 = this.f54141s - 1;
        this.f54141s = i2;
        LinearLayout linearLayout = this.f54140r;
        if (i2 != 0) {
            return;
        }
        linearLayout.setVisibility(8);
    }

    /* renamed from: c */
    public final void m9941c() {
        if ((this.f54140r == null || this.f54124b.f54005a == null) ? false : true) {
            EditText editText = this.f54124b.f54005a;
            boolean m10654a = C14598c.m10654a(this.f54123a);
            C0926v.m44109b(this.f54140r, m9946a(m10654a, C14376a.C14380d.material_helper_text_font_1_3_padding_horizontal, C0926v.m44091i(editText)), m9946a(m10654a, C14376a.C14380d.material_helper_text_font_1_3_padding_top, this.f54123a.getResources().getDimensionPixelSize(C14376a.C14380d.material_helper_text_default_padding_top)), m9946a(m10654a, C14376a.C14380d.material_helper_text_font_1_3_padding_horizontal, C0926v.m44089j(editText)), 0);
        }
    }

    /* renamed from: d */
    public final boolean m9939d() {
        return this.f54127e == 1 && this.f54130h != null && !TextUtils.isEmpty(this.f54128f);
    }

    /* renamed from: e */
    public final int m9937e() {
        TextView textView = this.f54130h;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* renamed from: f */
    public final ColorStateList m9936f() {
        TextView textView = this.f54130h;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }
}
