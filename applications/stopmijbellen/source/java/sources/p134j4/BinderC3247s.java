package p134j4;

import android.app.NotificationManager;
import android.content.Context;
import p189o4.AbstractBinderC3869g0;
import p201p6.C4018c;
/* renamed from: j4.s */
/* loaded from: classes-dex2jar.jar:j4/s.class */
public final class BinderC3247s extends AbstractBinderC3869g0 {

    /* renamed from: a */
    public final C4018c f10953a = new C4018c("AssetPackExtractionService");

    /* renamed from: b */
    public final Context f10954b;

    /* renamed from: c */
    public final C3259w f10955c;

    /* renamed from: d */
    public final C3204f2 f10956d;

    /* renamed from: e */
    public final ServiceConnectionC3230m0 f10957e;

    /* renamed from: f */
    public final NotificationManager f10958f;

    public BinderC3247s(Context context, C3259w c3259w, C3204f2 c3204f2, ServiceConnectionC3230m0 serviceConnectionC3230m0) {
        this.f10954b = context;
        this.f10955c = c3259w;
        this.f10956d = c3204f2;
        this.f10957e = serviceConnectionC3230m0;
        this.f10958f = (NotificationManager) context.getSystemService("notification");
    }
}
