package p193e.p194a.p195a.p244k.p255y;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.telephony.SmsManager;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.a.k.y.c */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/c.class */
public final class C6726c implements AbstractC6730f {

    /* renamed from: a */
    public final Context f22142a;

    /* renamed from: b */
    public final SmsManager f22143b;

    public C6726c(Context context, SmsManager smsManager) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(smsManager, "smsManager");
        this.f22142a = context;
        this.f22143b = smsManager;
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6730f
    /* renamed from: a */
    public boolean mo30518a(Uri uri, String str, PendingIntent pendingIntent) {
        l.e(uri, "contentUri");
        l.e(pendingIntent, "sentIntent");
        this.f22143b.sendMultimediaMessage(this.f22142a, uri, str, null, pendingIntent);
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6730f
    /* renamed from: b */
    public boolean mo30517b(String str, Uri uri, PendingIntent pendingIntent) {
        l.e(str, "locationUrl");
        l.e(uri, "contentUri");
        l.e(pendingIntent, "downloadedIntent");
        this.f22143b.downloadMultimediaMessage(this.f22142a, str, uri, null, pendingIntent);
        return true;
    }
}
