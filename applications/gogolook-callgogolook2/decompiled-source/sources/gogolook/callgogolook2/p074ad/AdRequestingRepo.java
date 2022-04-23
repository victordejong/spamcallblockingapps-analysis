package gogolook.callgogolook2.p074ad;

import android.content.Context;
import androidx.lifecycle.LiveData;
import java.util.Set;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\n\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0005H&J&\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001a\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\nH&¨\u0006\u001c"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdRequestingRepo;", "", "destroyAdObject", "", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "getAdObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "getAdRequestState", "Landroidx/lifecycle/LiveData;", "Lgogolook/callgogolook2/ad/AdRequestState;", "isAdNotRequesting", "", "requestAd", "context", "Landroid/content/Context;", "needToRequestAdSourceSet", "", "Lcom/gogolook/adsdk/Definition$AdSource;", "startAdTracking", "stopAdTracking", "stopRequest", "trackAdClick", "trackAdContent", "adObject", "trackAdImpression", "trackAdRequestState", "adRequestState", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdRequestingRepo */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdRequestingRepo.class */
public interface AdRequestingRepo {
    /* renamed from: a */
    LiveData<AdRequestState> mo28844a();

    /* renamed from: a */
    void mo28843a(Context context, AdUnit adUnit, Set<? extends EnumC6184a> set);

    /* renamed from: a */
    void mo28842a(AdRequestState adRequestState);

    /* renamed from: a */
    void mo28840a(AdUnit adUnit, AbstractC6207d dVar);

    /* renamed from: b */
    AbstractC6207d mo28838b(AdUnit adUnit);

    /* renamed from: c */
    void mo28837c(AdUnit adUnit);

    /* renamed from: d */
    void mo28836d(AdUnit adUnit);

    /* renamed from: e */
    void mo28835e(AdUnit adUnit);

    /* renamed from: f */
    void mo28834f(AdUnit adUnit);

    /* renamed from: g */
    void mo28833g(AdUnit adUnit);
}
