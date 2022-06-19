package p193e.p1485h.p1486a.p1488b.p1491j;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Html;
import android.widget.RemoteViews;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1485h.p1486a.p1488b.C22675d;
import s1.z.c.l;
@Metadata(d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H$J\"\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH$J\"\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH$J\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H$JD\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0011H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lcom/clevertap/android/pushtemplates/styles/Style;", "", "renderer", "Lcom/clevertap/android/pushtemplates/TemplateRenderer;", "(Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V", "builderFromStyle", "Landroidx/core/app/NotificationCompat$Builder;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "extras", "Landroid/os/Bundle;", "notificationId", "", "nb", "makeBigContentView", "Landroid/widget/RemoteViews;", "makeDismissIntent", "Landroid/app/PendingIntent;", "makePendingIntent", "makeSmallContentView", "setNotificationBuilderBasics", "notificationBuilder", "contentViewSmall", "contentViewBig", "pt_title", "", "pIntent", "dIntent", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.j.h */
/* loaded from: classes-dex2jar.jar:e/h/a/b/j/h.class */
public abstract class AbstractC22701h {

    /* renamed from: a */
    public C22675d f62825a;

    public AbstractC22701h(C22675d c22675d) {
        l.e(c22675d, "renderer");
        this.f62825a = c22675d;
    }

    /* renamed from: a */
    public C26450q mo7941a(Context context, Bundle bundle, int i, C26450q c26450q) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "extras");
        l.e(c26450q, "nb");
        return mo7940f(c26450q, mo7935e(context, this.f62825a), mo7938b(context, this.f62825a), this.f62825a.f62764c, mo7936d(context, bundle, i), mo7937c(context, bundle, i));
    }

    /* renamed from: b */
    public abstract RemoteViews mo7938b(Context context, C22675d c22675d);

    /* renamed from: c */
    public abstract PendingIntent mo7937c(Context context, Bundle bundle, int i);

    /* renamed from: d */
    public abstract PendingIntent mo7936d(Context context, Bundle bundle, int i);

    /* renamed from: e */
    public abstract RemoteViews mo7935e(Context context, C22675d c22675d);

    /* renamed from: f */
    public C26450q mo7940f(C26450q c26450q, RemoteViews remoteViews, RemoteViews remoteViews2, String str, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        l.e(c26450q, "notificationBuilder");
        if (pendingIntent2 != null) {
            c26450q.f74137R.deleteIntent = pendingIntent2;
        }
        if (remoteViews != null) {
            c26450q.f74126G = remoteViews;
        }
        if (remoteViews2 != null) {
            c26450q.f74127H = remoteViews2;
        }
        c26450q.f74137R.icon = this.f62825a.f62782u;
        c26450q.m1855n(Html.fromHtml(str));
        c26450q.f74147g = pendingIntent;
        c26450q.f74137R.vibrate = new long[]{0};
        c26450q.f74137R.when = System.currentTimeMillis();
        String str2 = this.f62825a.f62750I;
        String str3 = str2;
        if (str2 == null) {
            str3 = "#FFFFFF";
        }
        c26450q.f74123D = Color.parseColor(str3);
        c26450q.m1853p(16, true);
        c26450q.m1853p(8, true);
        l.d(c26450q, "notificationBuilder.setS…  .setOnlyAlertOnce(true)");
        return c26450q;
    }
}
