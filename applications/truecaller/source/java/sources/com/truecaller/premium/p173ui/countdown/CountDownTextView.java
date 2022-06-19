package com.truecaller.premium.p173ui.countdown;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p193e.p194a.p1011l.p1033v2.p1034f.AbstractC17259b;
import p193e.p194a.p1011l.p1033v2.p1034f.CountDownTimerC17258a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.g;
import s1.s;
import s1.z.b.l;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.b.a.i0.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u0015\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000f\u001a\u00020\u00042\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00040\f¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0014\u0010\u0012J\u0015\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00042\b\b\u0001\u0010\u001d\u001a\u00020\u0015¢\u0006\u0004\b\u001e\u0010\u0018J\u0015\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\u0015\u0010#\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b#\u0010\u0018J\u0015\u0010$\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0015¢\u0006\u0004\b$\u0010\u0018J\u0017\u0010'\u001a\u00020\u00042\b\u0010&\u001a\u0004\u0018\u00010%¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u00042\b\b\u0001\u0010\u001d\u001a\u00020\u0015¢\u0006\u0004\b)\u0010\u0018J\u0017\u0010+\u001a\u00020\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b+\u0010\u001cJ\u0015\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b.\u0010/R$\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u001d\u0010;\u001a\u0002068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u0018\u0010-\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u001d\u0010@\u001a\u0002068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u00108\u001a\u0004\b?\u0010:R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010G\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010F¨\u0006H"}, d2 = {"Lcom/truecaller/premium/ui/countdown/CountDownTextView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/res/TypedArray;", "typedArray", "Ls1/s;", "setTimerTextAttributes", "(Landroid/content/res/TypedArray;)V", "setPrefixTextAttributes", "", "timeInFuture", "h1", "(J)V", "Lkotlin/Function1;", "Le/a/l/v2/f/b;", "onCountDownTimerStateListener", "setOnCountDownTimerStateListener", "(Ls1/z/b/l;)V", "g1", "()V", "onDetachedFromWindow", "onAttachedToWindow", "", "size", "setTimerTextSize", "(I)V", "Landroid/graphics/Typeface;", "typeFace", "setTimerFontFamily", "(Landroid/graphics/Typeface;)V", RemoteMessageConst.Notification.COLOR, "setTimerTextColor", "", "spacing", "setTimerLetterSpacing", "(F)V", "setPrefixTextSize", "setPrefixSpacing", "", "prefixText", "setPrefixText", "(Ljava/lang/String;)V", "setPrefixTextColor", "typeface", "setPrefixFontFamily", "Lw3/b/a/i0/m;", "periodFormatter", "setPeriodFormatter", "(Lw3/b/a/i0/m;)V", "y", "Ls1/z/b/l;", "Le/a/p5/i0;", "t", "Le/a/p5/i0;", "themedResourceProvider", "Landroid/widget/TextView;", "v", "Ls1/g;", "getTimerTextView", "()Landroid/widget/TextView;", "timerTextView", "x", "Lw3/b/a/i0/m;", "u", "getPreTextView", "preTextView", "Landroid/os/CountDownTimer;", "w", "Landroid/os/CountDownTimer;", "countDownTimer", "z", "J", "countDownTimeInFuture", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.countdown.CountDownTextView */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/countdown/CountDownTextView.class */
public final class CountDownTextView extends ConstraintLayout {

    /* renamed from: t */
    public final C19235i0 f14279t;

    /* renamed from: u */
    public final g f14280u = C19286f.m13660s(this, C2752R.C2754id.preTextView);

    /* renamed from: v */
    public final g f14281v = C19286f.m13660s(this, C2752R.C2754id.timerTextView);

    /* renamed from: w */
    public CountDownTimer f14282w;

    /* renamed from: x */
    public m f14283x;

    /* renamed from: y */
    public l<? super AbstractC17259b, s> f14284y;

    /* renamed from: z */
    public long f14285z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountDownTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f14279t = new C19235i0(context);
        ViewGroup.inflate(context, C2752R.layout.count_down_text_view, this);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2752R.styleable.CountDownTextView, 0, 0);
            s1.z.c.l.d(obtainStyledAttributes, "context.obtainStyledAttr….CountDownTextView, 0, 0)");
            setPrefixTextAttributes(obtainStyledAttributes);
            setTimerTextAttributes(obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }
        setSaveEnabled(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0165, code lost:
        if (r0 != 0) goto L20;
     */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* renamed from: f1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m34810f1(com.truecaller.premium.p173ui.countdown.CountDownTextView r15, w3.b.a.u r16) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.premium.p173ui.countdown.CountDownTextView.m34810f1(com.truecaller.premium.ui.countdown.CountDownTextView, w3.b.a.u):void");
    }

    private final TextView getPreTextView() {
        return (TextView) this.f14280u.getValue();
    }

    private final TextView getTimerTextView() {
        return (TextView) this.f14281v.getValue();
    }

    private final void setPrefixTextAttributes(TypedArray typedArray) {
        int mo13758l = this.f14279t.mo13758l(2130970253);
        setPrefixText(typedArray.getString(2));
        setPrefixTextColor(typedArray.getColor(3, mo13758l));
        setPrefixSpacing(typedArray.getDimensionPixelSize(1, 0));
        int resourceId = typedArray.getResourceId(0, -1);
        setPrefixFontFamily(resourceId != -1 ? C26488h.m1765a(this.f14279t.f53605a, resourceId) : null);
        setPrefixTextSize(typedArray.getDimensionPixelSize(4, C8605o.m28232h(getContext(), 14.0f)));
    }

    private final void setTimerTextAttributes(TypedArray typedArray) {
        setTimerTextColor(typedArray.getColor(7, this.f14279t.mo13758l(2130970253)));
        int resourceId = typedArray.getResourceId(5, -1);
        setTimerFontFamily(resourceId != -1 ? C26488h.m1765a(this.f14279t.f53605a, resourceId) : null);
        setTimerLetterSpacing(typedArray.getFloat(6, 0.0f));
        setTimerTextSize(typedArray.getDimensionPixelSize(4, C8605o.m28232h(getContext(), 14.0f)));
    }

    /* renamed from: g1 */
    public final void m34809g1() {
        CountDownTimer countDownTimer = this.f14282w;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f14282w = null;
    }

    /* renamed from: h1 */
    public final void m34808h1(long j) {
        this.f14285z = j;
        m34809g1();
        long j2 = this.f14285z;
        b bVar = new b();
        s1.z.c.l.d(bVar, "DateTime.now()");
        long j3 = j2 - ((e) bVar).a;
        CountDownTimerC17258a countDownTimerC17258a = new CountDownTimerC17258a(this, j3, j3, 1000L);
        this.f14282w = countDownTimerC17258a;
        if (countDownTimerC17258a != null) {
            countDownTimerC17258a.start();
        }
        l<? super AbstractC17259b, s> lVar = this.f14284y;
        if (lVar != null) {
            s sVar = (s) lVar.d(AbstractC17259b.C17263d.f48418a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        long j = this.f14285z;
        if (j != 0) {
            m34808h1(j);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m34809g1();
    }

    public final void setOnCountDownTimerStateListener(l<? super AbstractC17259b, s> lVar) {
        s1.z.c.l.e(lVar, "onCountDownTimerStateListener");
        this.f14284y = lVar;
    }

    public final void setPeriodFormatter(m mVar) {
        s1.z.c.l.e(mVar, "periodFormatter");
        this.f14283x = mVar;
    }

    public final void setPrefixFontFamily(Typeface typeface) {
        if (typeface == null) {
            typeface = Typeface.SANS_SERIF;
        }
        getPreTextView().setTypeface(typeface);
    }

    public final void setPrefixSpacing(int i) {
        getPreTextView().setPadding(0, 0, i, 0);
    }

    public final void setPrefixText(String str) {
        C19286f.m13683U(getPreTextView(), true ^ (str == null || str.length() == 0));
        getPreTextView().setText(str);
    }

    public final void setPrefixTextColor(int i) {
        getPreTextView().setTextColor(i);
    }

    public final void setPrefixTextSize(int i) {
        getPreTextView().setTextSize(0, i);
    }

    public final void setTimerFontFamily(Typeface typeface) {
        if (typeface == null) {
            typeface = Typeface.SANS_SERIF;
        }
        getTimerTextView().setTypeface(typeface);
    }

    public final void setTimerLetterSpacing(float f) {
        getTimerTextView().setLetterSpacing(f);
    }

    public final void setTimerTextColor(int i) {
        getTimerTextView().setTextColor(i);
    }

    public final void setTimerTextSize(int i) {
        getTimerTextView().setTextSize(0, i);
    }
}
