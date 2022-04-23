package p131c.p161d.p282e.p315q.p318p0.p321j;

import android.os.CountDownTimer;
/* renamed from: c.d.e.q.p0.j.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/m.class */
public class C5566m {

    /* renamed from: a */
    public CountDownTimer f18548a;

    /* renamed from: c.d.e.q.p0.j.m$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/m$a.class */
    public class CountDownTimerC5567a extends CountDownTimer {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5568b f18549a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CountDownTimerC5567a(C5566m mVar, long j, long j2, AbstractC5568b bVar) {
            super(j, j2);
            this.f18549a = bVar;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            this.f18549a.onFinish();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    /* renamed from: c.d.e.q.p0.j.m$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/m$b.class */
    public interface AbstractC5568b {
        void onFinish();
    }

    /* renamed from: a */
    public void m23506a() {
        CountDownTimer countDownTimer = this.f18548a;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f18548a = null;
        }
    }

    /* renamed from: a */
    public void m23505a(AbstractC5568b bVar, long j, long j2) {
        this.f18548a = new CountDownTimerC5567a(this, j, j2, bVar).start();
    }
}
