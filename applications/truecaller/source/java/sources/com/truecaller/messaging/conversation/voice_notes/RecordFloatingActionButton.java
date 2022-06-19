package com.truecaller.messaging.conversation.voice_notes;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p195a.p200c.p222s8.C5735l;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\u000b\u001a\u00020\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010(\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010\u000fR\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010*R\u0016\u0010.\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u0006/"}, d2 = {"Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "Landroid/view/View$OnTouchListener;", "Landroid/view/View;", "v", "Ls1/s;", "setClip", "(Landroid/view/View;)V", "Landroid/view/MotionEvent;", "event", "", "onTouch", "(Landroid/view/View;Landroid/view/MotionEvent;)Z", "hasWindowFocus", "onWindowFocusChanged", "(Z)V", "onAttachedToWindow", "()V", "", "scale", "Landroid/animation/AnimatorSet;", "r", "(F)Landroid/animation/AnimatorSet;", "Landroid/view/GestureDetector;", "w", "Landroid/view/GestureDetector;", "gestureDetector", "Lcom/truecaller/messaging/conversation/voice_notes/RecordView;", "t", "Lcom/truecaller/messaging/conversation/voice_notes/RecordView;", "getRecordView", "()Lcom/truecaller/messaging/conversation/voice_notes/RecordView;", "setRecordView", "(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)V", "recordView", "s", "Z", "getRecordingEnabled", "()Z", "setRecordingEnabled", "recordingEnabled", "", "I", "touchSlop", "u", "F", "downX", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton.class */
public final class RecordFloatingActionButton extends FloatingActionButton implements View.OnTouchListener {

    /* renamed from: s */
    public boolean f13124s;

    /* renamed from: t */
    public RecordView f13125t;

    /* renamed from: u */
    public float f13126u;

    /* renamed from: v */
    public final int f13127v;

    /* renamed from: w */
    public final GestureDetector f13128w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RecordFloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        l.d(viewConfiguration, "ViewConfiguration.get(context)");
        this.f13127v = viewConfiguration.getScaledTouchSlop();
        this.f13128w = new GestureDetector(context, new C5735l(this));
        setOnTouchListener(this);
    }

    private final void setClip(View view) {
        if (view.getParent() != null) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                viewGroup.setClipChildren(false);
                viewGroup.setClipToPadding(false);
            }
            if (!(view.getParent() instanceof View)) {
                return;
            }
            ViewParent parent = view.getParent();
            Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
            setClip((View) parent);
        }
    }

    public final RecordView getRecordView() {
        RecordView recordView = this.f13125t;
        if (recordView != null) {
            return recordView;
        }
        l.l("recordView");
        throw null;
    }

    public final boolean getRecordingEnabled() {
        return this.f13124s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onAttachedToWindow() {
        RecordFloatingActionButton.super.onAttachedToWindow();
        setClip(this);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f13124s && !this.f13128w.onTouchEvent(motionEvent)) {
            Integer valueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
            if (valueOf != null && valueOf.intValue() == 2) {
                if (motionEvent.getRawX() - this.f13126u > this.f13127v) {
                    RecordView recordView = this.f13125t;
                    if (recordView == null) {
                        l.l("recordView");
                        throw null;
                    }
                    Objects.requireNonNull(view, "null cannot be cast to non-null type com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton");
                    recordView.m35080h((RecordFloatingActionButton) view, motionEvent);
                }
            } else if (valueOf != null && valueOf.intValue() == 1) {
                RecordView recordView2 = this.f13125t;
                if (recordView2 == null) {
                    l.l("recordView");
                    throw null;
                }
                Objects.requireNonNull(view, "null cannot be cast to non-null type com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton");
                recordView2.m35079i((RecordFloatingActionButton) view);
            }
        }
        return this.f13124s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onWindowFocusChanged(boolean z) {
        RecordFloatingActionButton.super.onWindowFocusChanged(z);
        RecordView recordView = this.f13125t;
        if (recordView == null || z) {
            return;
        }
        if (recordView != null) {
            recordView.m35078j(this);
        } else {
            l.l("recordView");
            throw null;
        }
    }

    /* renamed from: r */
    public final AnimatorSet m35094r(float f) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(150L);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, "scaleY", f), ObjectAnimator.ofFloat(this, "scaleX", f));
        animatorSet.start();
        return animatorSet;
    }

    public final void setRecordView(RecordView recordView) {
        l.e(recordView, "<set-?>");
        this.f13125t = recordView;
    }

    public final void setRecordingEnabled(boolean z) {
        this.f13124s = z;
    }
}
