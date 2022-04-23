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
import androidx.core.view.v;
import androidx.core.widget.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.a.b;
import com.google.android.material.h.c;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    final Context f30924a;

    /* renamed from: b  reason: collision with root package name */
    final TextInputLayout f30925b;

    /* renamed from: c  reason: collision with root package name */
    Animator f30926c;

    /* renamed from: d  reason: collision with root package name */
    int f30927d;
    int e;
    CharSequence f;
    boolean g;
    TextView h;
    CharSequence i;
    int j;
    ColorStateList k;
    CharSequence l;
    boolean m;
    TextView n;
    int o;
    ColorStateList p;
    Typeface q;
    private LinearLayout r;
    private int s;
    private FrameLayout t;
    private final float u;

    public f(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f30924a = context;
        this.f30925b = textInputLayout;
        this.u = context.getResources().getDimensionPixelSize(a.d.design_textinput_caption_translate_y);
    }

    private int a(boolean z, int i, int i2) {
        return z ? this.f30924a.getResources().getDimensionPixelSize(i) : i2;
    }

    private ObjectAnimator a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.u, BitmapDescriptorFactory.HUE_RED);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(com.google.android.material.a.a.f30176d);
        return ofFloat;
    }

    private static ObjectAnimator a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(com.google.android.material.a.a.f30173a);
        return ofFloat;
    }

    private void a(int i, int i2) {
        TextView d2;
        TextView d3;
        if (i != i2) {
            if (!(i2 == 0 || (d3 = d(i2)) == null)) {
                d3.setVisibility(0);
                d3.setAlpha(1.0f);
            }
            if (!(i == 0 || (d2 = d(i)) == null)) {
                d2.setVisibility(4);
                if (i == 1) {
                    d2.setText((CharSequence) null);
                }
            }
            this.f30927d = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void a(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView != null && z) {
            if (i == i3 || i == i2) {
                list.add(a(textView, i3 == i));
                if (i3 == i) {
                    list.add(a(textView));
                }
            }
        }
    }

    private static boolean c(int i) {
        return i == 0 || i == 1;
    }

    private TextView d(int i) {
        if (i == 1) {
            return this.h;
        }
        if (i != 2) {
            return null;
        }
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f = null;
        b();
        if (this.f30927d == 1) {
            if (!this.m || TextUtils.isEmpty(this.l)) {
                this.e = 0;
            } else {
                this.e = 2;
            }
        }
        a(this.f30927d, this.e, a(this.h, (CharSequence) null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        this.j = i;
        TextView textView = this.h;
        if (textView != null) {
            this.f30925b.a(textView, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final int i, final int i2, boolean z) {
        if (i != i2) {
            if (z) {
                AnimatorSet animatorSet = new AnimatorSet();
                this.f30926c = animatorSet;
                ArrayList arrayList = new ArrayList();
                a(arrayList, this.m, this.n, 2, i, i2);
                a(arrayList, this.g, this.h, 1, i, i2);
                b.a(animatorSet, arrayList);
                final TextView d2 = d(i);
                final TextView d3 = d(i2);
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.f.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        f.this.f30927d = i2;
                        f.this.f30926c = null;
                        TextView textView = d2;
                        if (textView != null) {
                            textView.setVisibility(4);
                            if (i == 1 && f.this.h != null) {
                                f.this.h.setText((CharSequence) null);
                            }
                        }
                        TextView textView2 = d3;
                        if (textView2 != null) {
                            textView2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                            d3.setAlpha(1.0f);
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        TextView textView = d3;
                        if (textView != null) {
                            textView.setVisibility(0);
                        }
                    }
                });
                animatorSet.start();
            } else {
                a(i, i2);
            }
            this.f30925b.c();
            this.f30925b.a(z, false);
            this.f30925b.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        this.k = colorStateList;
        TextView textView = this.h;
        if (textView != null && colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(TextView textView, int i) {
        if (this.r == null && this.t == null) {
            LinearLayout linearLayout = new LinearLayout(this.f30924a);
            this.r = linearLayout;
            linearLayout.setOrientation(0);
            this.f30925b.addView(this.r, -1, -2);
            this.t = new FrameLayout(this.f30924a);
            this.r.addView(this.t, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f30925b.f30880a != null) {
                c();
            }
        }
        if (c(i)) {
            this.t.setVisibility(0);
            this.t.addView(textView);
        } else {
            this.r.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.r.setVisibility(0);
        this.s++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(CharSequence charSequence) {
        this.i = charSequence;
        TextView textView = this.h;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(TextView textView, CharSequence charSequence) {
        if (!v.B(this.f30925b) || !this.f30925b.isEnabled()) {
            return false;
        }
        return this.e != this.f30927d || textView == null || !TextUtils.equals(textView.getText(), charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        Animator animator = this.f30926c;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        this.o = i;
        TextView textView = this.n;
        if (textView != null) {
            h.a(textView, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(ColorStateList colorStateList) {
        this.p = colorStateList;
        TextView textView = this.n;
        if (textView != null && colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.r != null) {
            if (!c(i) || (frameLayout = this.t) == null) {
                this.r.removeView(textView);
            } else {
                frameLayout.removeView(textView);
            }
            int i2 = this.s - 1;
            this.s = i2;
            LinearLayout linearLayout = this.r;
            if (i2 == 0) {
                linearLayout.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if ((this.r == null || this.f30925b.f30880a == null) ? false : true) {
            EditText editText = this.f30925b.f30880a;
            boolean a2 = c.a(this.f30924a);
            v.b(this.r, a(a2, a.d.material_helper_text_font_1_3_padding_horizontal, v.i(editText)), a(a2, a.d.material_helper_text_font_1_3_padding_top, this.f30924a.getResources().getDimensionPixelSize(a.d.material_helper_text_default_padding_top)), a(a2, a.d.material_helper_text_font_1_3_padding_horizontal, v.j(editText)), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d() {
        return this.e == 1 && this.h != null && !TextUtils.isEmpty(this.f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int e() {
        TextView textView = this.h;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ColorStateList f() {
        TextView textView = this.h;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }
}
