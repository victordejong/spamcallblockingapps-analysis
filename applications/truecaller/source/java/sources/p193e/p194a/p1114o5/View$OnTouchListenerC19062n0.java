package p193e.p194a.p1114o5;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import p193e.p194a.p372b0.p430q.C8605o;
/* renamed from: e.a.o5.n0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/n0.class */
public class View$OnTouchListenerC19062n0 extends AnimatorListenerAdapter implements View.OnTouchListener, ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final ValueAnimator f53234a;

    /* renamed from: b */
    public final EditText f53235b;

    /* renamed from: c */
    public final float f53236c;

    /* renamed from: d */
    public float f53237d;

    /* renamed from: e */
    public float f53238e;

    /* renamed from: f */
    public boolean f53239f;

    public View$OnTouchListenerC19062n0(EditText editText) {
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f53234a = valueAnimator;
        this.f53235b = editText;
        this.f53236c = C8605o.m28238b(editText.getContext(), 5.0f);
        m14156c();
        valueAnimator.addUpdateListener(this);
        valueAnimator.addListener(this);
    }

    /* renamed from: a */
    public final float m14158a() {
        return this.f53235b.getTranslationX() / (-(this.f53235b.getWidth() / 2));
    }

    /* renamed from: b */
    public final void m14157b(float f) {
        float max = Math.max(0.0f, Math.min(1.0f, 1.0f - f));
        this.f53235b.setAlpha(max);
        EditText editText = this.f53235b;
        editText.setTranslationX(((1.0f - max) * (-editText.getWidth())) / 2.0f);
    }

    /* renamed from: c */
    public final void m14156c() {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.f53235b.getAlpha() <= 0.0f) {
            this.f53235b.setText("");
            this.f53235b.setTranslationX(0.0f);
            this.f53235b.setAlpha(1.0f);
            this.f53235b.requestFocus();
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        m14157b(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        float m14158a;
        int action = motionEvent.getAction();
        float f = 0.0f;
        if (action == 0) {
            this.f53237d = motionEvent.getX();
            this.f53238e = 0.0f;
            this.f53239f = false;
            m14156c();
            return false;
        }
        if (action != 1) {
            if (action == 2) {
                Editable text = this.f53235b.getText();
                if (text == null || text.length() == 0) {
                    return false;
                }
                float x = (motionEvent.getX() - this.f53237d) + this.f53238e;
                float translationX = this.f53235b.getTranslationX() + x;
                if (this.f53239f || Math.abs(translationX) >= this.f53236c) {
                    if (!this.f53239f) {
                        this.f53235b.setTextIsSelectable(false);
                        this.f53239f = true;
                    }
                    this.f53238e = x;
                    m14157b(translationX / (-(this.f53235b.getWidth() / 2)));
                }
                this.f53237d = motionEvent.getX();
                return false;
            } else if (action != 3) {
                return false;
            }
        }
        if (!this.f53239f) {
            return false;
        }
        this.f53235b.setTextIsSelectable(true);
        float m14158a2 = m14158a();
        float f2 = this.f53238e;
        if (f2 < 0.0f && m14158a2 >= 0.1f) {
            f = 1.0f;
        } else if (f2 <= 0.0f) {
            f = Math.round(m14158a2);
        }
        this.f53234a.setFloatValues(m14158a(), f);
        this.f53234a.setDuration(Math.abs(m14158a - f) * 250);
        this.f53234a.start();
        return false;
    }
}
