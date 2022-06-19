package com.truecaller.messaging.conversation.voice_notes;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.widget.Chronometer;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\r\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0015\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\r\u0010\u0004R\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000fR%\u0010\u0016\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0005\u0010\u001cR%\u0010!\u001a\n \u0012*\u0004\u0018\u00010\u001e0\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u0013\u001a\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0019R%\u0010&\u001a\n \u0012*\u0004\u0018\u00010#0#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\u0013\u001a\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;", "Landroid/widget/RelativeLayout;", "Ls1/s;", "f", "()V", "e", AbstractC2405c.f7629a, "d", "", "visible", "setVisible", "(Z)V", "a", C22021b.f61237c, "Landroid/animation/TimeInterpolator;", "Landroid/animation/TimeInterpolator;", "animatorInterpolator", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "Ls1/g;", "getTvRecordTip", "()Landroid/widget/TextView;", "tvRecordTip", "", "g", "I", "paddingHoriz", "Landroid/view/animation/AlphaAnimation;", "Landroid/view/animation/AlphaAnimation;", "recordAlphaAnimation", "Landroid/view/View;", "getRecordDot", "()Landroid/view/View;", "recordDot", "paddingVertical", "Landroid/widget/Chronometer;", "getChronometerCounter", "()Landroid/widget/Chronometer;", "chronometerCounter", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/RecordToastView.class */
public final class RecordToastView extends RelativeLayout {

    /* renamed from: a */
    public final g f13129a = C19286f.m13660s(this, C2752R.C2754id.chronometerCounter);

    /* renamed from: b */
    public final g f13130b = C19286f.m13660s(this, C2752R.C2754id.recordDot);

    /* renamed from: c */
    public final g f13131c = C19286f.m13660s(this, C2752R.C2754id.tvRecordTip);

    /* renamed from: d */
    public final TimeInterpolator f13132d = new LinearInterpolator();

    /* renamed from: e */
    public AlphaAnimation f13133e;

    /* renamed from: f */
    public final int f13134f;

    /* renamed from: g */
    public final int f13135g;

    /* renamed from: com.truecaller.messaging.conversation.voice_notes.RecordToastView$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/RecordToastView$a.class */
    public static final class RunnableC4181a implements Runnable {
        public RunnableC4181a() {
            RecordToastView.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RecordToastView.this.setVisibility(8);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecordToastView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131166403);
        this.f13134f = dimensionPixelSize;
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(2131165670);
        this.f13135g = dimensionPixelSize2;
        RelativeLayout.inflate(context, C2752R.layout.view_recording_toast, this);
        setBackgroundResource(C2752R.C2753drawable.record_voice_note_toast_bg);
        getBackground().setColorFilter(C19291g.m13612L(getContext(), C2752R.attr.tcx_conversationRecordToastBackground), PorterDuff.Mode.SRC_IN);
        setPaddingRelative(dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize);
        setAlpha(0.7f);
    }

    private final Chronometer getChronometerCounter() {
        return (Chronometer) this.f13129a.getValue();
    }

    private final View getRecordDot() {
        return (View) this.f13130b.getValue();
    }

    private final TextView getTvRecordTip() {
        return (TextView) this.f13131c.getValue();
    }

    /* renamed from: a */
    public final void m35093a() {
        AlphaAnimation alphaAnimation = this.f13133e;
        if (alphaAnimation != null) {
            if (alphaAnimation == null) {
                l.l("recordAlphaAnimation");
                throw null;
            }
            alphaAnimation.cancel();
            AlphaAnimation alphaAnimation2 = this.f13133e;
            if (alphaAnimation2 == null) {
                l.l("recordAlphaAnimation");
                throw null;
            }
            alphaAnimation2.reset();
        }
        getRecordDot().clearAnimation();
    }

    /* renamed from: b */
    public final void m35092b() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        this.f13133e = alphaAnimation;
        if (alphaAnimation == null) {
            l.l("recordAlphaAnimation");
            throw null;
        }
        alphaAnimation.setDuration(500L);
        AlphaAnimation alphaAnimation2 = this.f13133e;
        if (alphaAnimation2 == null) {
            l.l("recordAlphaAnimation");
            throw null;
        }
        alphaAnimation2.setRepeatMode(2);
        AlphaAnimation alphaAnimation3 = this.f13133e;
        if (alphaAnimation3 == null) {
            l.l("recordAlphaAnimation");
            throw null;
        }
        alphaAnimation3.setRepeatCount(-1);
        View recordDot = getRecordDot();
        AlphaAnimation alphaAnimation4 = this.f13133e;
        if (alphaAnimation4 != null) {
            recordDot.startAnimation(alphaAnimation4);
        } else {
            l.l("recordAlphaAnimation");
            throw null;
        }
    }

    /* renamed from: c */
    public final void m35091c() {
        Chronometer chronometerCounter = getChronometerCounter();
        l.d(chronometerCounter, "chronometerCounter");
        chronometerCounter.setBase(SystemClock.elapsedRealtime());
        getChronometerCounter().start();
        m35092b();
    }

    /* renamed from: d */
    public final void m35090d() {
        getChronometerCounter().stop();
        m35093a();
    }

    /* renamed from: e */
    public final void m35089e() {
        getTvRecordTip().setText(C2752R.string.ConversationReleaseToDelete);
        Chronometer chronometerCounter = getChronometerCounter();
        l.d(chronometerCounter, "chronometerCounter");
        chronometerCounter.setVisibility(8);
        View recordDot = getRecordDot();
        l.d(recordDot, "recordDot");
        recordDot.setVisibility(8);
        m35093a();
    }

    /* renamed from: f */
    public final void m35088f() {
        getTvRecordTip().setText(C2752R.string.ConversationRecording);
        Chronometer chronometerCounter = getChronometerCounter();
        l.d(chronometerCounter, "chronometerCounter");
        chronometerCounter.setVisibility(0);
        View recordDot = getRecordDot();
        l.d(recordDot, "recordDot");
        recordDot.setVisibility(0);
        m35092b();
    }

    public final void setVisible(boolean z) {
        if (!z) {
            animate().translationY(getHeight()).setDuration(150L).setInterpolator(this.f13132d).withEndAction(new RunnableC4181a()).start();
            return;
        }
        setVisibility(0);
        animate().translationY(0.0f).setDuration(150L).setInterpolator(this.f13132d).start();
    }
}
