package p193e.p1485h.p1486a.p1488b.p1491j;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1485h.p1486a.p1488b.C22675d;
import p193e.p1485h.p1486a.p1488b.p1490i.C22686d;
import p193e.p1485h.p1486a.p1488b.p1490i.C22687e;
import p193e.p1485h.p1486a.p1488b.p1490i.C22688g;
import s1.z.c.l;
@Metadata(d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014J\"\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0014J\"\u0010\u000f\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0018\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/clevertap/android/pushtemplates/styles/FiveIconStyle;", "Lcom/clevertap/android/pushtemplates/styles/Style;", "renderer", "Lcom/clevertap/android/pushtemplates/TemplateRenderer;", "extras", "Landroid/os/Bundle;", "(Lcom/clevertap/android/pushtemplates/TemplateRenderer;Landroid/os/Bundle;)V", "makeBigContentView", "Landroid/widget/RemoteViews;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "makeDismissIntent", "Landroid/app/PendingIntent;", "notificationId", "", "makePendingIntent", "makeSmallContentView", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.j.c */
/* loaded from: classes-dex2jar.jar:e/h/a/b/j/c.class */
public final class C22696c extends AbstractC22701h {

    /* renamed from: b */
    public C22675d f62816b;

    /* renamed from: c */
    public Bundle f62817c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C22696c(C22675d c22675d, Bundle bundle) {
        super(c22675d);
        l.e(c22675d, "renderer");
        l.e(bundle, "extras");
        this.f62816b = c22675d;
        this.f62817c = bundle;
    }

    @Override // p193e.p1485h.p1486a.p1488b.p1491j.AbstractC22701h
    /* renamed from: b */
    public RemoteViews mo7938b(Context context, C22675d c22675d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c22675d, "renderer");
        return new C22686d(context, c22675d, this.f62817c).f62808c;
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
        return C22688g.m7945b(context, i, bundle, true, 13, this.f62816b);
    }

    @Override // p193e.p1485h.p1486a.p1488b.p1491j.AbstractC22701h
    /* renamed from: e */
    public RemoteViews mo7935e(Context context, C22675d c22675d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c22675d, "renderer");
        return new C22687e(context, c22675d, this.f62817c).f62808c;
    }
}
