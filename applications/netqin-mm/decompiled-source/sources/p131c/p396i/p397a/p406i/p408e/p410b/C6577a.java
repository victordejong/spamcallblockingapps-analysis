package p131c.p396i.p397a.p406i.p408e.p410b;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.factories.CustomEventInterstitialAdapterFactory;
import java.util.Map;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p417j.C6617d;
/* renamed from: c.i.a.i.e.b.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/e/b/a.class */
public class C6577a extends CustomEventInterstitialAdapterFactory {

    /* renamed from: b */
    public static boolean f20381b = false;

    /* renamed from: a */
    public static void m20457a() {
        if (!f20381b) {
            f20381b = true;
            CustomEventInterstitialAdapterFactory.f34502a = new C6577a();
        }
    }

    @Override // com.mopub.mobileads.factories.CustomEventInterstitialAdapterFactory
    /* renamed from: a */
    public CustomEventInterstitialAdapter mo4141a(MoPubInterstitial moPubInterstitial, String str, Map<String, String> map, long j, AdReport adReport) {
        CustomEventInterstitialAdapter customEventInterstitialAdapter = new CustomEventInterstitialAdapter(moPubInterstitial, str, map, j, adReport);
        C6617d.m20352a(customEventInterstitialAdapter, Context.class, C6489a.m20718b());
        return customEventInterstitialAdapter;
    }
}
