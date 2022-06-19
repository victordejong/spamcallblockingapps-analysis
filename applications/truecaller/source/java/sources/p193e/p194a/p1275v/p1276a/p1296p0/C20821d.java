package p193e.p194a.p1275v.p1276a.p1296p0;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.details_view.C3857R;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1411b.p1412a.AbstractC21941o;
import p193e.p1411b.p1412a.C21912d;
import p193e.p1411b.p1412a.p1415c0.AbstractC21911e;
import p193e.p1411b.p1412a.p1415c0.C21908b;
import p193e.p1411b.p1412a.p1420y.C21975e;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1304k.C20912s;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\nJ\u001f\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\bJ\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\nJ\u001f\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J!\u0010$\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!2\b\b\u0001\u0010#\u001a\u00020\u0004H\u0002¢\u0006\u0004\b$\u0010%R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u00101\u001a\b\u0012\u0004\u0012\u00020\u00060.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108¨\u0006:"}, d2 = {"Le/a/v/a/p0/d;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/v/a/p0/b;", "Le/a/v/a/s0/a;", "", "animationRawRes", "Ls1/s;", "setCallActivityAnimation", "(I)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "m", "v0", "animation", "", "callCountPer60Days", "z", "(ILjava/lang/String;)V", "spamCount", "E", "(Ljava/lang/String;)V", "percentageIncrease", "W", "e0", "usualCallingTimePeriod", "imageRes", "x", "(Ljava/lang/String;I)V", "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "Le/b/a/y/e;", "keyPath", RemoteMessageConst.Notification.COLOR, "f1", "(Le/b/a/y/e;I)V", "Le/a/v/a/p0/a;", "u", "Le/a/v/a/p0/a;", "getPresenter", "()Le/a/v/a/p0/a;", "setPresenter", "(Le/a/v/a/p0/a;)V", "presenter", "Lkotlin/Function0;", "w", "Ls1/z/b/a;", "callActivityAnimation", "Le/a/v/k/s;", "t", "Le/a/v/k/s;", "binding", "Landroid/animation/ValueAnimator;", "v", "Landroid/animation/ValueAnimator;", "animator", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.p0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/p0/d.class */
public final class C20821d extends ConstraintLayout implements AbstractC20819b, AbstractC20848a {

    /* renamed from: t */
    public final C20912s f58491t;
    @Inject

    /* renamed from: u */
    public AbstractC20818a f58492u;

    /* renamed from: v */
    public ValueAnimator f58493v;

    /* renamed from: w */
    public final a<s> f58494w;

    /* renamed from: e.a.v.a.p0.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/p0/d$a.class */
    public static final class C20822a<T> implements AbstractC21911e<ColorFilter> {

        /* renamed from: a */
        public final /* synthetic */ int f58495a;

        public C20822a(int i) {
            this.f58495a = i;
        }

        @Override // p193e.p1411b.p1412a.p1415c0.AbstractC21911e
        /* renamed from: a */
        public ColorFilter mo8909a(C21908b<ColorFilter> c21908b) {
            return new PorterDuffColorFilter(this.f58495a, PorterDuff.Mode.SRC_ATOP);
        }
    }

    /* renamed from: e.a.v.a.p0.d$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/p0/d$b.class */
    public static final class C20823b implements ValueAnimator.AnimatorUpdateListener {
        public C20823b() {
            C20821d.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            l.e(valueAnimator, "animation");
            StringBuilder sb = new StringBuilder();
            sb.append(valueAnimator.getAnimatedValue());
            sb.append('%');
            String sb2 = sb.toString();
            TextView textView = C20821d.this.f58491t.f58847g;
            l.d(textView, "binding.spamReportsPercentageIncrease");
            textView.setText(sb2);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20821d(android.content.Context r18, android.util.AttributeSet r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1296p0.C20821d.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    private final void setCallActivityAnimation(int i) {
        this.f58491t.f58842b.setAnimation(i);
        int m13612L = C19291g.m13612L(getContext(), C3857R.attr.tcx_alertBackgroundRed);
        m10658f1(new C21975e("Shape Layer 2", "Ellipse 1", "Stroke 1"), m13612L);
        m10658f1(new C21975e("Shape Layer 3", "Ellipse 1", "Fill 1"), m13612L);
        m10658f1(new C21975e("Shape Layer 4", "Polystar 1", "Fill 1"), m13612L);
        m10658f1(new C21975e("Shape Layer 5", "Ellipse 1", "Fill 1"), -1);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1296p0.AbstractC20819b
    /* renamed from: E */
    public void mo10661E(String str) {
        l.e(str, "spamCount");
        TextView textView = this.f58491t.f58846f;
        l.d(textView, "binding.spamReportsCount");
        textView.setText(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0087, code lost:
        if (r0.m35560J() == null) goto L18;
     */
    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10605K0(p193e.p194a.p1275v.p1276a.C20847s r7) {
        /*
            Method dump skipped, instructions count: 976
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1296p0.C20821d.mo10605K0(e.a.v.a.s):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1296p0.AbstractC20819b
    /* renamed from: W */
    public void mo10660W(int i) {
        ImageView imageView = this.f58491t.f58845e;
        l.d(imageView, "binding.spamReportsArrowImage");
        C19286f.m13684T(imageView);
        TextView textView = this.f58491t.f58847g;
        l.d(textView, "binding.spamReportsPercentageIncrease");
        C19286f.m13684T(textView);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, i);
        ofInt.setStartDelay(1000L);
        ofInt.setDuration(1000L);
        ofInt.addUpdateListener(new C20823b());
        this.f58493v = ofInt;
        if (ofInt != null) {
            ofInt.start();
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1296p0.AbstractC20819b
    /* renamed from: e0 */
    public void mo10659e0() {
        ImageView imageView = this.f58491t.f58845e;
        l.d(imageView, "binding.spamReportsArrowImage");
        C19286f.m13683U(imageView, false);
        TextView textView = this.f58491t.f58847g;
        l.d(textView, "binding.spamReportsPercentageIncrease");
        C19286f.m13683U(textView, false);
    }

    /* renamed from: f1 */
    public final void m10658f1(C21975e c21975e, int i) {
        LottieAnimationView lottieAnimationView = this.f58491t.f58842b;
        lottieAnimationView.f1619e.m8897a(c21975e, AbstractC21941o.f60899B, new C21912d(lottieAnimationView, new C20822a(i)));
    }

    public final AbstractC20818a getPresenter() {
        AbstractC20818a abstractC20818a = this.f58492u;
        if (abstractC20818a != null) {
            return abstractC20818a;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1296p0.AbstractC20819b
    /* renamed from: m */
    public void mo10657m() {
        C19286f.m13684T(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20818a abstractC20818a = this.f58492u;
        if (abstractC20818a != null) {
            ((AbstractC20576b) abstractC20818a).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AbstractC20818a abstractC20818a = this.f58492u;
        if (abstractC20818a == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC20818a).f57683a = null;
        ValueAnimator valueAnimator = this.f58493v;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        Handler handler = getHandler();
        RunnableC20825f runnableC20825f = this.f58494w;
        RunnableC20825f runnableC20825f2 = runnableC20825f;
        if (runnableC20825f != null) {
            runnableC20825f2 = new RunnableC20825f(runnableC20825f);
        }
        handler.removeCallbacks(runnableC20825f2);
        super.onDetachedFromWindow();
    }

    public final void setPresenter(AbstractC20818a abstractC20818a) {
        l.e(abstractC20818a, "<set-?>");
        this.f58492u = abstractC20818a;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1296p0.AbstractC20819b
    /* renamed from: v0 */
    public void mo10656v0() {
        C19286f.m13683U(this, false);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1296p0.AbstractC20819b
    /* renamed from: x */
    public void mo10655x(String str, int i) {
        l.e(str, "usualCallingTimePeriod");
        TextView textView = this.f58491t.f58849i;
        l.d(textView, "binding.usuallyCallsTimePeriod");
        textView.setText(str);
        ImageView imageView = this.f58491t.f58848h;
        Context context = getContext();
        Object obj = C26467a.f74235a;
        imageView.setImageDrawable(C26467a.C26470c.m1789b(context, i));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1296p0.AbstractC20819b
    /* renamed from: z */
    public void mo10654z(int i, String str) {
        l.e(str, "callCountPer60Days");
        setCallActivityAnimation(i);
        Handler handler = getHandler();
        RunnableC20825f runnableC20825f = this.f58494w;
        RunnableC20825f runnableC20825f2 = runnableC20825f;
        if (runnableC20825f != null) {
            runnableC20825f2 = new RunnableC20825f(runnableC20825f);
        }
        handler.postDelayed(runnableC20825f2, 500L);
        TextView textView = this.f58491t.f58843c;
        l.d(textView, "binding.callActivityCallCount");
        textView.setText(getContext().getString(C3857R.string.details_view_spam_stats_call_activity_content, str));
    }
}
