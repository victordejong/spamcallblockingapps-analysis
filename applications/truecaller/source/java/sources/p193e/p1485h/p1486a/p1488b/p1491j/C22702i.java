package p193e.p1485h.p1486a.p1488b.p1491j;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.clevertap.android.pushtemplates.C0861R;
import com.razorpay.AnalyticsConstants;
import e.h.a.b.i.m;
import kotlin.Metadata;
import p193e.p1485h.p1486a.p1488b.C22675d;
import p193e.p1485h.p1486a.p1488b.p1490i.C22688g;
import p193e.p1485h.p1486a.p1488b.p1490i.C22691n;
import s1.z.c.l;
@Metadata(d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010\tJ\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014J\"\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\bH\u0014J\"\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\bH\u0014J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lcom/clevertap/android/pushtemplates/styles/TimerStyle;", "Lcom/clevertap/android/pushtemplates/styles/Style;", "renderer", "Lcom/clevertap/android/pushtemplates/TemplateRenderer;", "extras", "Landroid/os/Bundle;", "(Lcom/clevertap/android/pushtemplates/TemplateRenderer;Landroid/os/Bundle;)V", "getTimerEnd", "", "()Ljava/lang/Integer;", "makeBigContentView", "Landroid/widget/RemoteViews;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "makeDismissIntent", "Landroid/app/PendingIntent;", "notificationId", "makePendingIntent", "makeSmallContentView", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.j.i */
/* loaded from: classes-dex2jar.jar:e/h/a/b/j/i.class */
public final class C22702i extends AbstractC22701h {

    /* renamed from: b */
    public C22675d f62826b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C22702i(C22675d c22675d, Bundle bundle) {
        super(c22675d);
        l.e(c22675d, "renderer");
        l.e(bundle, "extras");
        this.f62826b = c22675d;
    }

    @Override // p193e.p1485h.p1486a.p1488b.p1491j.AbstractC22701h
    /* renamed from: b */
    public RemoteViews mo7938b(Context context, C22675d c22675d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c22675d, "renderer");
        if (m7939g() == null) {
            return null;
        }
        return new m(context, m7939g(), c22675d).f62808c;
    }

    @Override // p193e.p1485h.p1486a.p1488b.p1491j.AbstractC22701h
    /* renamed from: c */
    public PendingIntent mo7937c(Context context, Bundle bundle, int i) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "extras");
        return null;
    }

    @Override // p193e.p1485h.p1486a.p1488b.p1491j.AbstractC22701h
    /* renamed from: d */
    public PendingIntent mo7936d(Context context, Bundle bundle, int i) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "extras");
        return C22688g.m7945b(context, i, bundle, true, 30, this.f62826b);
    }

    @Override // p193e.p1485h.p1486a.p1488b.p1491j.AbstractC22701h
    /* renamed from: e */
    public RemoteViews mo7935e(Context context, C22675d c22675d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c22675d, "renderer");
        if (m7939g() == null) {
            return null;
        }
        return new C22691n(context, m7939g(), c22675d, C0861R.layout.timer_collapsed).f62808c;
    }

    /* renamed from: g */
    public final Integer m7939g() {
        Integer num;
        C22675d c22675d = this.f62826b;
        int i = c22675d.f62784w;
        if (i == -1 || i < 10) {
            int i2 = c22675d.f62743B;
            num = i2 >= 10 ? Integer.valueOf((i2 * 1000) + 1000) : null;
        } else {
            num = Integer.valueOf((i * 1000) + 1000);
        }
        return num;
    }
}
