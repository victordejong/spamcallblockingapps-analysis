package p193e.p194a.p195a.p200c.p222s8;

import android.os.SystemClock;
import com.truecaller.messaging.conversation.voice_notes.CountDownChronometer;
import java.util.Objects;
/* renamed from: e.a.a.c.s8.f */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s8/f.class */
public final class RunnableC5729f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ CountDownChronometer f19190a;

    public RunnableC5729f(CountDownChronometer countDownChronometer) {
        this.f19190a = countDownChronometer;
    }

    @Override // java.lang.Runnable
    public void run() {
        CountDownChronometer countDownChronometer = this.f19190a;
        if (countDownChronometer.f13111d) {
            countDownChronometer.m35095c(SystemClock.elapsedRealtime());
            Objects.requireNonNull(this.f19190a);
            this.f19190a.postDelayed(this, 1000L);
        }
    }
}
