package p081h.p160h.p161a.p170p;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.p168n.C6260a;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u0014B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0018\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u000bH\u0007R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0015"}, m815d2 = {"Lcom/gogolook/adsdk/utils/AdUtils;", "", "()V", "adStatusHelper", "Lcom/gogolook/adsdk/utils/AdUtils$AdStatusHelper;", "adStatusHelper$annotations", "getAdStatusHelper", "()Lcom/gogolook/adsdk/utils/AdUtils$AdStatusHelper;", "setAdStatusHelper", "(Lcom/gogolook/adsdk/utils/AdUtils$AdStatusHelper;)V", "checkActivityAlive", "", "context", "Landroid/content/Context;", "getAdFetchLog", "", "Lcom/gogolook/adsdk/logs/AdFetchLog;", "adUnitName", "", "isNeedShowAd", "AdStatusHelper", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.p.a */
/* loaded from: classes2-dex2jar.jar:h/h/a/p/a.class */
public final class C6268a {

    /* renamed from: a */
    public static AbstractC6269a f15536a;

    /* renamed from: h.h.a.p.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/a$a.class */
    public interface AbstractC6269a {
        /* renamed from: a */
        boolean mo23441a();
    }

    static {
        new C6268a();
    }

    /* renamed from: a */
    public static final List<C6260a> m23442a(String str) {
        C15149k.m377b(str, "adUnitName");
        return C15029u.m515k(C6192e.f15373p.m23592a(str).m23620a().values());
    }

    /* renamed from: a */
    public static final void m23443a(AbstractC6269a aVar) {
        f15536a = aVar;
    }

    /* renamed from: a */
    public static final boolean m23445a() {
        AbstractC6269a aVar = f15536a;
        return aVar != null ? aVar.mo23441a() : true;
    }

    /* renamed from: a */
    public static final boolean m23444a(Context context) {
        C15149k.m377b(context, "context");
        boolean z = false;
        if (context instanceof Activity) {
            boolean isDestroyed = Build.VERSION.SDK_INT >= 17 ? ((Activity) context).isDestroyed() : false;
            z = false;
            if (!((Activity) context).isFinishing()) {
                z = false;
                if (!isDestroyed) {
                    z = true;
                }
            }
        }
        return z;
    }
}
