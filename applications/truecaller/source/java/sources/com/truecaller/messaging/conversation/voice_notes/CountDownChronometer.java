package com.truecaller.messaging.conversation.voice_notes;

import android.content.Context;
import android.os.SystemClock;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Chronometer;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p200c.p222s8.RunnableC5729f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��C\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0006*\u0001%\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0016\u0010\u0004R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u001a\u0010 \u001a\u00060\u001cj\u0002`\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0018R\u0016\u0010$\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010)\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010#¨\u0006*"}, d2 = {"Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;", "Landroid/widget/Chronometer;", "Ls1/s;", AnalyticsConstants.START, "()V", "stop", "onDetachedFromWindow", "", RemoteMessageConst.Notification.VISIBILITY, "onWindowVisibilityChanged", "(I)V", "Landroid/view/View;", "changedView", "onVisibilityChanged", "(Landroid/view/View;I)V", "", "base", "setChronometerBase", "(J)V", "a", "now", AbstractC2405c.f7629a, C22021b.f61237c, "", "Z", "visible", "d", "running", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "e", "Ljava/lang/StringBuilder;", "recycle", "started", "f", "J", "timeWhenStopped", "e/a/a/c/s8/f", "g", "Le/a/a/c/s8/f;", "tickRunnable", "chronometerBase", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/CountDownChronometer.class */
public final class CountDownChronometer extends Chronometer {

    /* renamed from: a */
    public long f13108a;

    /* renamed from: b */
    public boolean f13109b;

    /* renamed from: c */
    public boolean f13110c;

    /* renamed from: d */
    public boolean f13111d;

    /* renamed from: f */
    public long f13113f;

    /* renamed from: e */
    public final StringBuilder f13112e = new StringBuilder(8);

    /* renamed from: g */
    public final RunnableC5729f f13114g = new RunnableC5729f(this);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountDownChronometer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f13108a = elapsedRealtime;
        m35095c(elapsedRealtime);
    }

    /* renamed from: a */
    public final void m35097a() {
        stop();
        this.f13108a = SystemClock.elapsedRealtime();
        this.f13113f = 0L;
    }

    /* renamed from: b */
    public final void m35096b() {
        boolean z = this.f13109b && this.f13110c && isShown();
        if (z != this.f13111d) {
            if (z) {
                m35095c(SystemClock.elapsedRealtime());
                postDelayed(this.f13114g, 1000L);
            } else {
                removeCallbacks(this.f13114g);
            }
            this.f13111d = z;
        }
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: c */
    public final void m35095c(long j) {
        synchronized (this) {
            ?? m3997K2 = C25225a.m3997K2((this.f13108a - j) / 1000);
            char c = m3997K2;
            if (m3997K2 < 0) {
                c = 0;
            }
            setText(DateUtils.formatElapsedTime(this.f13112e, c));
        }
    }

    @Override // android.widget.Chronometer, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f13109b = false;
        m35096b();
    }

    @Override // android.widget.Chronometer, android.widget.TextView, android.view.View
    public void onVisibilityChanged(View view, int i) {
        l.e(view, "changedView");
        super.onVisibilityChanged(view, i);
        m35096b();
    }

    @Override // android.widget.Chronometer, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f13109b = i == 0;
        m35096b();
    }

    public final void setChronometerBase(long j) {
        this.f13108a = j;
        m35095c(SystemClock.elapsedRealtime());
    }

    @Override // android.widget.Chronometer
    public void start() {
        if (this.f13113f != 0) {
            this.f13108a = SystemClock.elapsedRealtime() + this.f13113f;
        }
        this.f13110c = true;
        m35096b();
    }

    @Override // android.widget.Chronometer
    public void stop() {
        this.f13110c = false;
        m35096b();
        this.f13113f = this.f13108a - SystemClock.elapsedRealtime();
    }
}
