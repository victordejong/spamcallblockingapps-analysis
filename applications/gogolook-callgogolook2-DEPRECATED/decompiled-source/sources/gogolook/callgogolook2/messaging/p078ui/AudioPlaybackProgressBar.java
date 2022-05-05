package gogolook.callgogolook2.messaging.p078ui;

import android.animation.TimeAnimator;
import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.view.GravityCompat;
import p459j.p460a.p474c0.p491g.AbstractC12102r;
import p459j.p460a.p474c0.p491g.C12081f;
/* renamed from: gogolook.callgogolook2.messaging.ui.AudioPlaybackProgressBar */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AudioPlaybackProgressBar.class */
public class AudioPlaybackProgressBar extends ProgressBar implements AbstractC12102r {

    /* renamed from: a */
    public long f11442a;

    /* renamed from: c */
    public long f11444c = 0;

    /* renamed from: d */
    public long f11445d = 0;

    /* renamed from: e */
    public boolean f11446e = false;

    /* renamed from: b */
    public final TimeAnimator f11443b = new TimeAnimator();

    /* renamed from: gogolook.callgogolook2.messaging.ui.AudioPlaybackProgressBar$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AudioPlaybackProgressBar$a.class */
    public class C4685a implements TimeAnimator.TimeListener {
        public C4685a() {
        }

        @Override // android.animation.TimeAnimator.TimeListener
        public void onTimeUpdate(TimeAnimator timeAnimator, long j, long j2) {
            int i = 0;
            if (AudioPlaybackProgressBar.this.f11442a > 0) {
                i = Math.max(Math.min((int) (((((float) ((AudioPlaybackProgressBar.this.f11444c + SystemClock.elapsedRealtime()) - AudioPlaybackProgressBar.this.f11445d)) * 1.0f) / ((float) AudioPlaybackProgressBar.this.f11442a)) * 100.0f), 100), 0);
            }
            AudioPlaybackProgressBar.this.setProgress(i);
        }
    }

    public AudioPlaybackProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11443b.setRepeatCount(-1);
        this.f11443b.setTimeListener(new C4685a());
        m27397g();
    }

    /* renamed from: a */
    public void m27408a() {
        this.f11444c += SystemClock.elapsedRealtime() - this.f11445d;
        m27398f();
    }

    /* renamed from: a */
    public void m27407a(long j) {
        this.f11442a = j;
    }

    /* renamed from: a */
    public void m27405a(boolean z) {
        if (this.f11446e != z) {
            this.f11446e = z;
            m27397g();
        }
    }

    /* renamed from: b */
    public void m27404b() {
        m27398f();
        setProgress(0);
        this.f11444c = 0L;
        this.f11445d = 0L;
    }

    /* renamed from: c */
    public void m27402c() {
        m27404b();
        m27400d();
    }

    /* renamed from: d */
    public void m27400d() {
        this.f11445d = SystemClock.elapsedRealtime();
        m27399e();
    }

    /* renamed from: e */
    public final void m27399e() {
        if (!this.f11443b.isStarted()) {
            this.f11443b.start();
        }
    }

    /* renamed from: f */
    public final void m27398f() {
        if (this.f11443b.isStarted()) {
            this.f11443b.end();
        }
    }

    /* renamed from: g */
    public final void m27397g() {
        setProgressDrawable(new ClipDrawable(C12081f.m7212d().m7215b(this.f11446e), GravityCompat.START, 1));
        setBackground(C12081f.m7212d().m7218a(this.f11446e));
    }
}
