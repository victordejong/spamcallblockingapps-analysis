package com.truecaller.wizard.internal.components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.truecaller.wizard.C4861R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.p1164r.p1178u.p1179a.ActionMode$CallbackC19769a;
import p193e.p194a.p1164r.p1178u.p1179a.C19770b;
import w3.c.a.a.a.h;
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/internal/components/VerificationEditText.class */
public class VerificationEditText extends FrameLayout implements TextWatcher {

    /* renamed from: a */
    public final ViewGroup f16552a;

    /* renamed from: b */
    public final View f16553b;

    /* renamed from: c */
    public final EditText f16554c;

    /* renamed from: e */
    public Animator f16556e;

    /* renamed from: f */
    public AbstractC4872b f16557f;

    /* renamed from: g */
    public final Animator.AnimatorListener f16558g = new C4871a();

    /* renamed from: d */
    public final int f16555d = getResources().getInteger(C4861R.integer.wizard_animation_duration_short);

    /* renamed from: com.truecaller.wizard.internal.components.VerificationEditText$a */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/internal/components/VerificationEditText$a.class */
    public class C4871a extends AnimatorListenerAdapter {
        public C4871a() {
            VerificationEditText.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Editable text;
            VerificationEditText verificationEditText = VerificationEditText.this;
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (verificationEditText.isAttachedToWindow()) {
                VerificationEditText verificationEditText2 = VerificationEditText.this;
                if (verificationEditText2.f16557f == null || (text = verificationEditText2.f16554c.getText()) == null || text.length() != 6) {
                    return;
                }
                VerificationEditText.this.f16557f.m34275a(text);
            }
        }
    }

    /* renamed from: com.truecaller.wizard.internal.components.VerificationEditText$b */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/internal/components/VerificationEditText$b.class */
    public interface AbstractC4872b {
        /* renamed from: a */
        void m34275a(CharSequence charSequence);
    }

    public VerificationEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater from = LayoutInflater.from(context);
        View inflate = from.inflate(C4861R.layout.wizard_view_verification_edittext, this);
        this.f16552a = (ViewGroup) inflate.findViewById(C4861R.C4863id.digitsContainer);
        this.f16553b = inflate.findViewById(C4861R.C4863id.cursor);
        EditText editText = (EditText) inflate.findViewById(C4861R.C4863id.editText);
        this.f16554c = editText;
        editText.setSaveEnabled(false);
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
        editText.addTextChangedListener(this);
        editText.setCustomSelectionActionModeCallback(new ActionMode$CallbackC19769a(this));
        for (int i = 0; i < 6; i++) {
            View inflate2 = from.inflate(C4861R.layout.wizard_view_verification_digit, this.f16552a, false);
            if (i == 2) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate2.getLayoutParams();
                layoutParams.setMargins(layoutParams.leftMargin, layoutParams.topMargin, (int) TypedValue.applyDimension(1, 32.0f, getResources().getDisplayMetrics()), layoutParams.bottomMargin);
            }
            this.f16552a.addView(inflate2);
        }
    }

    /* renamed from: a */
    public final float m34276a(View view) {
        return ((view.getWidth() - this.f16553b.getWidth()) / 2) + view.getLeft();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        int i = 0;
        while (i < 6) {
            ViewGroup viewGroup = (ViewGroup) this.f16552a.getChildAt(i);
            TextView textView = (TextView) viewGroup.getChildAt(0);
            char charAt = h.j(textView.getText()) ? (char) 0 : textView.getText().charAt(0);
            char charAt2 = i >= editable.length() ? (char) 0 : editable.charAt(i);
            if (charAt != charAt2) {
                if (charAt2 == 0) {
                    long j = this.f16555d;
                    viewGroup.setActivated(false);
                    TextView textView2 = (TextView) viewGroup.getChildAt(0);
                    textView2.animate().cancel();
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView2, "alpha", textView2.getAlpha(), 0.0f);
                    ofFloat.setDuration(j);
                    ofFloat.addListener(new C19770b(this, textView2));
                    ofFloat.start();
                } else if (charAt == 0) {
                    long j2 = this.f16555d;
                    viewGroup.setActivated(true);
                    TextView textView3 = (TextView) viewGroup.getChildAt(0);
                    textView3.animate().cancel();
                    textView3.setAlpha(0.0f);
                    textView3.setText(String.valueOf(charAt2));
                    textView3.animate().alpha(1.0f).setDuration(j2).setListener(null).start();
                } else {
                    textView.setText(String.valueOf(charAt2));
                }
            }
            i++;
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f16553b.animate().cancel();
        int childCount = this.f16552a.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewGroup viewGroup = (ViewGroup) this.f16552a.getChildAt(i);
            viewGroup.animate().cancel();
            viewGroup.getChildAt(0).animate().cancel();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f16553b.getTranslationX() == 0.0f) {
            this.f16553b.setTranslationX(m34276a(this.f16552a.getChildAt(0)));
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = i2 + i;
        int i5 = i + i3;
        if (i4 != i5) {
            long j = this.f16555d;
            Animator animator = this.f16556e;
            if (animator != null && animator.isRunning()) {
                this.f16556e.removeAllListeners();
                this.f16556e.cancel();
            }
            AnimatorSet animatorSet = new AnimatorSet();
            View childAt = this.f16552a.getChildAt(5);
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.f16553b, View.TRANSLATION_X, i4 >= 6 ? new float[]{childAt.getRight() + this.f16553b.getWidth(), m34276a(childAt)} : i5 >= 6 ? new float[]{m34276a(childAt), childAt.getRight() + this.f16553b.getWidth()} : new float[]{m34276a(this.f16552a.getChildAt(i4)), m34276a(this.f16552a.getChildAt(i5))}).setDuration(j), ObjectAnimator.ofFloat(this.f16553b, "alpha", i5 >= 6 ? 0.0f : 1.0f).setDuration(j));
            animatorSet.addListener(this.f16558g);
            animatorSet.start();
            this.f16556e = animatorSet;
        }
    }

    public void setOnCodeEnteredListener(AbstractC4872b abstractC4872b) {
        this.f16557f = abstractC4872b;
    }

    public void setText(CharSequence charSequence) {
        this.f16554c.setText(charSequence);
    }
}
