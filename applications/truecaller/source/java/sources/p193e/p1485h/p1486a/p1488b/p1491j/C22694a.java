package p193e.p1485h.p1486a.p1488b.p1491j;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.clevertap.android.pushtemplates.C0861R;
import com.razorpay.AnalyticsConstants;
import e.h.a.b.i.a;
import kotlin.Metadata;
import p193e.p1485h.p1486a.p1488b.C22675d;
import p193e.p1485h.p1486a.p1488b.p1490i.C22688g;
import p193e.p1485h.p1486a.p1488b.p1490i.C22690l;
import s1.z.c.l;
@Metadata(d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014J\"\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\"\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/clevertap/android/pushtemplates/styles/AutoCarouselStyle;", "Lcom/clevertap/android/pushtemplates/styles/Style;", "renderer", "Lcom/clevertap/android/pushtemplates/TemplateRenderer;", "(Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V", "makeBigContentView", "Landroid/widget/RemoteViews;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "makeDismissIntent", "Landroid/app/PendingIntent;", "extras", "Landroid/os/Bundle;", "notificationId", "", "makePendingIntent", "makeSmallContentView", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.j.a */
/* loaded from: classes-dex2jar.jar:e/h/a/b/j/a.class */
public final class C22694a extends AbstractC22701h {

    /* renamed from: b */
    public C22675d f62814b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C22694a(C22675d c22675d) {
        super(c22675d);
        l.e(c22675d, "renderer");
        this.f62814b = c22675d;
    }

    @Override // p193e.p1485h.p1486a.p1488b.p1491j.AbstractC22701h
    /* renamed from: b */
    public RemoteViews mo7938b(Context context, C22675d c22675d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c22675d, "renderer");
        return new a(context, c22675d).f62808c;
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
        return C22688g.m7945b(context, i, bundle, true, 2, this.f62814b);
    }

    @Override // p193e.p1485h.p1486a.p1488b.p1491j.AbstractC22701h
    /* renamed from: e */
    public RemoteViews mo7935e(Context context, C22675d c22675d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c22675d, "renderer");
        return new C22690l(context, c22675d, C0861R.layout.content_view_small_single_line_msg).f62808c;
    }
}
