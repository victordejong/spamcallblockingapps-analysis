package gogolook.callgogolook2.p074ad;

import android.content.Context;
import androidx.lifecycle.LiveData;
import java.util.Set;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nH&J&\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H&J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH&R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdDataSource;", "", "adRequestState", "Landroidx/lifecycle/LiveData;", "Lgogolook/callgogolook2/ad/AdRequestState;", "getAdRequestState", "()Landroidx/lifecycle/LiveData;", "getFromCache", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "isAdRequesting", "", "startRequest", "", "context", "Landroid/content/Context;", "needToRequestAdSourceSet", "", "Lcom/gogolook/adsdk/Definition$AdSource;", "stopRequest", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdDataSource */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdDataSource.class */
public interface AdDataSource {
    /* renamed from: a */
    LiveData<AdRequestState> mo28870a();

    /* renamed from: a */
    void mo28869a(Context context, AdUnit adUnit, Set<? extends EnumC6184a> set);

    /* renamed from: a */
    boolean mo28867a(AdUnit adUnit);

    /* renamed from: b */
    AbstractC6207d mo28865b(AdUnit adUnit);

    /* renamed from: c */
    void mo28864c(AdUnit adUnit);
}
