package p193e.p194a.p1164r.p1185z;

import android.os.CountDownTimer;
import android.text.format.DateUtils;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import s1.z.c.l;
/* renamed from: e.a.r.z.g */
/* loaded from: classes16-dex2jar.jar:e/a/r/z/g.class */
public final class CountDownTimerC19800g extends CountDownTimer {

    /* renamed from: a */
    public final WeakReference<TextView> f54845a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountDownTimerC19800g(TextView textView, long j, long j2) {
        super(j, j2);
        l.e(textView, "timerView");
        this.f54845a = new WeakReference<>(textView);
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
        TextView textView = this.f54845a.get();
        if (textView != null) {
            textView.setText(DateUtils.formatElapsedTime(j / 1000));
        }
    }
}
