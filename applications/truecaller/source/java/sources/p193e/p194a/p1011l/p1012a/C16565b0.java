package p193e.p194a.p1011l.p1012a;

import android.content.Context;
import android.content.pm.ShortcutManager;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16613a2;
import s1.z.c.l;
/* renamed from: e.a.l.a.b0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/b0.class */
public final class C16565b0 {

    /* renamed from: a */
    public final Context f46564a;

    /* renamed from: b */
    public final AbstractC16613a2 f46565b;

    @Inject
    public C16565b0(Context context, AbstractC16613a2 abstractC16613a2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC16613a2, "premiumScreenNavigator");
        this.f46564a = context;
        this.f46565b = abstractC16613a2;
    }

    /* renamed from: a */
    public final ShortcutManager m17241a() {
        Object systemService = this.f46564a.getSystemService("shortcut");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.pm.ShortcutManager");
        return (ShortcutManager) systemService;
    }
}
