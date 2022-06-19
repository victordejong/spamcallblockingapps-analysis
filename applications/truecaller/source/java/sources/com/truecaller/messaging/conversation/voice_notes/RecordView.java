package com.truecaller.messaging.conversation.voice_notes;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.MediaRecorder;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import java.io.File;
import java.io.IOException;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p200c.C5059a4;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5726c;
import p193e.p194a.p195a.p200c.p222s8.C5736m;
import p193e.p194a.p195a.p200c.p222s8.RunnableC5737n;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0097\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001 \u0018��2\u00020\u0001:\u0002\u000e\\J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u0015\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u0006J\u0015\u0010\u000e\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u0006J'\u0010\u0013\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\u001aJ\u001b\u0010\u001e\u001a\u00020\u00042\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R%\u0010*\u001a\n %*\u0004\u0018\u00010$0$8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020+8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010,R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R%\u00103\u001a\n %*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010'\u001a\u0004\b1\u00102R\u0016\u00106\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u00105R\u0016\u00109\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u00108R\u0016\u0010:\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010/R\u0016\u0010=\u001a\u00020;8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010<R%\u0010B\u001a\n %*\u0004\u0018\u00010>0>8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010'\u001a\u0004\b@\u0010AR$\u0010I\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u0016\u0010J\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u00108R\u0016\u0010M\u001a\u00020K8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010LR\u0016\u0010N\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u00105R\"\u0010T\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u00105\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\u0018\u0010W\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010VR\u0016\u0010[\u001a\u00020X8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bY\u0010Z¨\u0006]"}, d2 = {"Lcom/truecaller/messaging/conversation/voice_notes/RecordView;", "Landroid/widget/RelativeLayout;", "Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;", "recordButton", "Ls1/s;", "g", "(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V", "Landroid/view/MotionEvent;", "motionEvent", "h", "(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/view/MotionEvent;)V", "i", "recordBtn", "j", "a", "Landroid/widget/TextView;", "slideToCancel", "", "initialX", "d", "(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/widget/TextView;F)V", "Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;", "state", "l", "(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;)V", "k", "()V", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "f", "(Ljava/lang/Exception;)V", "e/a/a/c/s8/n", "q", "Le/a/a/c/s8/n;", "updateVisualizer", "Landroid/view/View;", "kotlin.jvm.PlatformType", "n", "Ls1/g;", "getGuidelineThreshold", "()Landroid/view/View;", "guidelineThreshold", "", "Ljava/lang/String;", "outputFilePath", AbstractC2405c.f7629a, "F", "o", "getTvSlideToCancel", "()Landroid/widget/TextView;", "tvSlideToCancel", "", "J", "elapsedTime", "", "Z", "didSlideToDelete", "previousX", "", "I", "screenWidthCenter", "Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;", "p", "getVisualizerView", "()Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;", "visualizerView", "Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;", "Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;", "getRecordListener", "()Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;", "setRecordListener", "(Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;)V", "recordListener", "isRecording", "Landroid/os/Handler;", "Landroid/os/Handler;", "visualizerHandler", "startTime", C22021b.f61237c, "getMaxDurationMs", "()J", "setMaxDurationMs", "(J)V", "maxDurationMs", "Landroid/media/MediaRecorder;", "Landroid/media/MediaRecorder;", "recorder", "Le/a/a/c/s8/c;", "m", "Le/a/a/c/s8/c;", "audioFocusHandler", "RecordState", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/RecordView.class */
public final class RecordView extends RelativeLayout {

    /* renamed from: r */
    public static final /* synthetic */ int f13137r = 0;

    /* renamed from: a */
    public AbstractC4182a f13138a;

    /* renamed from: b */
    public long f13139b;

    /* renamed from: c */
    public float f13140c;

    /* renamed from: d */
    public float f13141d;

    /* renamed from: e */
    public long f13142e;

    /* renamed from: f */
    public long f13143f;

    /* renamed from: g */
    public MediaRecorder f13144g;

    /* renamed from: h */
    public boolean f13145h;

    /* renamed from: i */
    public boolean f13146i;

    /* renamed from: j */
    public final String f13147j;

    /* renamed from: k */
    public final int f13148k;

    /* renamed from: m */
    public AbstractC5726c f13150m;

    /* renamed from: l */
    public final Handler f13149l = new Handler();

    /* renamed from: n */
    public final g f13151n = C19286f.m13660s(this, C2752R.C2754id.guidelineThreshold);

    /* renamed from: o */
    public final g f13152o = C19286f.m13660s(this, C2752R.C2754id.tvSlideToCancel);

    /* renamed from: p */
    public final g f13153p = C19286f.m13660s(this, C2752R.C2754id.visualizerView);

    /* renamed from: q */
    public final RunnableC5737n f13154q = new RunnableC5737n(this);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006j\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;", "", "", RemoteMessageConst.Notification.COLOR, "I", "getColor", "()I", RemoteMessageConst.Notification.ICON, "getIcon", "<init>", "(Ljava/lang/String;III)V", "RECORD", "DELETE", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/RecordView$RecordState.class */
    public enum RecordState {
        RECORD(2131232582, 2130970017),
        DELETE(2131232409, 2130969966);
        
        private final int color;
        private final int icon;

        RecordState(int i, int i2) {
            this.icon = i;
            this.color = i2;
        }

        public final int getColor() {
            return this.color;
        }

        public final int getIcon() {
            return this.icon;
        }
    }

    /* renamed from: com.truecaller.messaging.conversation.voice_notes.RecordView$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/RecordView$a.class */
    public interface AbstractC4182a {
    }

    /* renamed from: com.truecaller.messaging.conversation.voice_notes.RecordView$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/RecordView$b.class */
    public static final class C4183b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ RecordFloatingActionButton f13155a;

        public C4183b(RecordFloatingActionButton recordFloatingActionButton) {
            this.f13155a = recordFloatingActionButton;
        }

        /* JADX WARN: Type inference failed for: r0v9, types: [android.widget.ImageButton, com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton] */
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            l.d(valueAnimator, "animation");
            Object animatedValue = valueAnimator.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            this.f13155a.setX(((Float) animatedValue).floatValue());
        }
    }

    /* renamed from: com.truecaller.messaging.conversation.voice_notes.RecordView$c */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/RecordView$c.class */
    public static final class RunnableC4184c implements Runnable {
        public RunnableC4184c() {
            RecordView.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RecordView recordView = RecordView.this;
            long currentTimeMillis = System.currentTimeMillis();
            RecordView recordView2 = RecordView.this;
            recordView.f13143f = currentTimeMillis - recordView2.f13142e;
            if (!recordView2.f13146i) {
                if (!(recordView2.f13143f <= ((long) 1000))) {
                    recordView2.m35077k();
                    AbstractC4182a recordListener = RecordView.this.getRecordListener();
                    if (recordListener == null) {
                        return;
                    }
                    ((C5059a4) recordListener).f17322a.f19484b.mo33374M2(RecordView.this.f13147j);
                    return;
                }
            }
            recordView2.m35083e();
            AbstractC4182a recordListener2 = RecordView.this.getRecordListener();
            if (recordListener2 != null) {
                ((C5059a4) recordListener2).f17322a.f19484b.mo33336Zb();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecordView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f13147j = context.getCacheDir() + "/voice-note" + System.currentTimeMillis() + ".aac";
        Resources resources = getResources();
        l.d(resources, "resources");
        this.f13148k = resources.getDisplayMetrics().widthPixels / 2;
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        C17422k.m16050u0(from, true).inflate(C2752R.layout.view_record_voice_note, this);
        getTvSlideToCancel().setCompoundDrawablesRelativeWithIntrinsicBounds(C8605o.m28234f(context, C2752R.C2753drawable.record_voice_arrow, 2130970256), (Drawable) null, (Drawable) null, (Drawable) null);
        RecorderVisualizerView visualizerView = getVisualizerView();
        visualizerView.f13157a.clear();
        visualizerView.invalidate();
        C19286f.m13683U(this, false);
    }

    private final View getGuidelineThreshold() {
        return (View) this.f13151n.getValue();
    }

    public final TextView getTvSlideToCancel() {
        return (TextView) this.f13152o.getValue();
    }

    public final RecorderVisualizerView getVisualizerView() {
        return (RecorderVisualizerView) this.f13153p.getValue();
    }

    /* renamed from: a */
    public final void m35087a(RecordFloatingActionButton recordFloatingActionButton) {
        l.e(recordFloatingActionButton, "recordBtn");
        if (this.f13145h) {
            C19286f.m13683U(this, false);
            TextView tvSlideToCancel = getTvSlideToCancel();
            l.d(tvSlideToCancel, "tvSlideToCancel");
            m35084d(recordFloatingActionButton, tvSlideToCancel, this.f13140c);
            m35083e();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final void m35084d(RecordFloatingActionButton recordFloatingActionButton, TextView textView, float f) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(recordFloatingActionButton.getX(), f);
        l.d(ofFloat, "positionAnimator");
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addUpdateListener(new C4183b(recordFloatingActionButton));
        recordFloatingActionButton.m35094r(1.0f);
        ofFloat.setDuration(0L);
        ofFloat.start();
        C19286f.m13684T(textView);
        m35076l(recordFloatingActionButton, RecordState.RECORD);
    }

    /* renamed from: e */
    public final void m35083e() {
        m35077k();
        C19291g.m13543i1(new File(this.f13147j));
    }

    /* renamed from: f */
    public final void m35082f(Exception exc) {
        AssertionUtil.reportThrowableButNeverCrash(exc);
        this.f13145h = false;
        AbstractC4182a abstractC4182a = this.f13138a;
        if (abstractC4182a != null) {
            ((C5059a4) abstractC4182a).f17322a.f19484b.mo33305le();
        }
        C19291g.m13543i1(new File(this.f13147j));
        this.f13149l.removeCallbacks(this.f13154q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public final void m35081g(RecordFloatingActionButton recordFloatingActionButton) {
        l.e(recordFloatingActionButton, "recordButton");
        RecorderVisualizerView visualizerView = getVisualizerView();
        visualizerView.f13157a.clear();
        visualizerView.invalidate();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        this.f13150m = C10480a.m25898s2(C19291g.m13630F(context));
        MediaRecorder mediaRecorder = new MediaRecorder();
        mediaRecorder.reset();
        mediaRecorder.setAudioSource(1);
        mediaRecorder.setOutputFormat(2);
        mediaRecorder.setAudioEncoder(3);
        mediaRecorder.setMaxDuration((int) this.f13139b);
        mediaRecorder.setOutputFile(this.f13147j);
        mediaRecorder.setOnInfoListener(new C5736m(this, recordFloatingActionButton));
        try {
            mediaRecorder.prepare();
            mediaRecorder.start();
            this.f13145h = true;
        } catch (IOException e) {
            m35082f(e);
            MediaRecorder mediaRecorder2 = this.f13144g;
            if (mediaRecorder2 != null) {
                mediaRecorder2.release();
            }
        } catch (IllegalStateException e2) {
            m35082f(e2);
            MediaRecorder mediaRecorder3 = this.f13144g;
            if (mediaRecorder3 != null) {
                mediaRecorder3.release();
            }
        }
        this.f13144g = mediaRecorder;
        this.f13149l.post(this.f13154q);
        recordFloatingActionButton.m35094r(2.0f);
        this.f13140c = recordFloatingActionButton.getX();
        C19286f.m13684T(this);
        this.f13142e = System.currentTimeMillis();
        AbstractC4182a abstractC4182a = this.f13138a;
        if (abstractC4182a != null) {
            C5059a4 c5059a4 = (C5059a4) abstractC4182a;
            c5059a4.f17322a.f19486c.mo32682r4();
            c5059a4.f17322a.f19484b.mo33362Pg();
            c5059a4.f17322a.f19449J0.m35091c();
        }
    }

    public final long getMaxDurationMs() {
        return this.f13139b;
    }

    public final AbstractC4182a getRecordListener() {
        return this.f13138a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00db, code lost:
        if (r0.getX() != 0.0f) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0109, code lost:
        if (r0 <= r0.getX()) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x010c, code lost:
        r10 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01c5  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35080h(com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton r6, android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.conversation.voice_notes.RecordView.m35080h(com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton, android.view.MotionEvent):void");
    }

    /* renamed from: i */
    public final void m35079i(RecordFloatingActionButton recordFloatingActionButton) {
        l.e(recordFloatingActionButton, "recordButton");
        if (!this.f13145h) {
            return;
        }
        C19286f.m13683U(this, false);
        TextView tvSlideToCancel = getTvSlideToCancel();
        l.d(tvSlideToCancel, "tvSlideToCancel");
        m35084d(recordFloatingActionButton, tvSlideToCancel, this.f13140c);
        new Handler().postDelayed(new RunnableC4184c(), 300L);
    }

    /* renamed from: j */
    public final void m35078j(RecordFloatingActionButton recordFloatingActionButton) {
        l.e(recordFloatingActionButton, "recordBtn");
        if (this.f13145h) {
            AbstractC4182a abstractC4182a = this.f13138a;
            if (abstractC4182a != null) {
                ((C5059a4) abstractC4182a).f17322a.f19484b.mo33336Zb();
            }
            C19286f.m13683U(this, false);
            TextView tvSlideToCancel = getTvSlideToCancel();
            l.d(tvSlideToCancel, "tvSlideToCancel");
            m35084d(recordFloatingActionButton, tvSlideToCancel, this.f13140c);
            m35083e();
        }
    }

    /* renamed from: k */
    public final void m35077k() {
        AbstractC5726c abstractC5726c;
        this.f13149l.removeCallbacks(this.f13154q);
        this.f13146i = false;
        try {
            MediaRecorder mediaRecorder = this.f13144g;
            if (mediaRecorder != null) {
                mediaRecorder.stop();
            }
            this.f13145h = false;
            abstractC5726c = this.f13150m;
        } catch (RuntimeException e) {
            m35082f(e);
        }
        if (abstractC5726c == null) {
            l.l("audioFocusHandler");
            throw null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        abstractC5726c.mo32755a(C19291g.m13630F(context));
        MediaRecorder mediaRecorder2 = this.f13144g;
        if (mediaRecorder2 == null) {
            return;
        }
        mediaRecorder2.release();
    }

    /* renamed from: l */
    public final void m35076l(RecordFloatingActionButton recordFloatingActionButton, RecordState recordState) {
        recordFloatingActionButton.setBackgroundTintList(C19291g.m13609M(getContext(), recordState.getColor()));
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        Resources resources = context.getResources();
        int icon = recordState.getIcon();
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        Resources.Theme theme = context2.getTheme();
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        Drawable drawable = resources.getDrawable(icon, theme);
        Objects.requireNonNull(drawable);
        Drawable mutate = drawable.mutate();
        l.d(mutate, "DrawableCompat.wrap(\n   …heme))\n        ).mutate()");
        mutate.setTint(getResources().getColor(C2752R.color.tcx_sendIconTint_all));
        recordFloatingActionButton.setImageDrawable(mutate);
    }

    public final void setMaxDurationMs(long j) {
        this.f13139b = j;
    }

    public final void setRecordListener(AbstractC4182a abstractC4182a) {
        this.f13138a = abstractC4182a;
    }
}
