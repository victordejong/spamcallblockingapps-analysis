package p193e.p194a.p1011l.p1033v2.p1034f;

import android.os.CountDownTimer;
import com.truecaller.premium.p173ui.countdown.CountDownTextView;
import p193e.p194a.p1011l.p1033v2.p1034f.AbstractC17259b;
import s1.s;
import s1.z.b.l;
import w3.b.a.u;
/* renamed from: e.a.l.v2.f.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/f/a.class */
public final class CountDownTimerC17258a extends CountDownTimer {

    /* renamed from: a */
    public final /* synthetic */ CountDownTextView f48413a;

    /* renamed from: b */
    public final /* synthetic */ long f48414b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountDownTimerC17258a(CountDownTextView countDownTextView, long j, long j2, long j3) {
        super(j2, j3);
        this.f48413a = countDownTextView;
        this.f48414b = j;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        l<? super AbstractC17259b, s> lVar = this.f48413a.f14284y;
        if (lVar != null) {
            s sVar = (s) lVar.d(AbstractC17259b.C17261b.f48416a);
        }
        this.f48413a.m34809g1();
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
        l<? super AbstractC17259b, s> lVar = this.f48413a.f14284y;
        if (lVar != null) {
            s sVar = (s) lVar.d(new AbstractC17259b.C17262c(this.f48414b));
        }
        CountDownTextView.m34810f1(this.f48413a, new u(j));
    }
}
