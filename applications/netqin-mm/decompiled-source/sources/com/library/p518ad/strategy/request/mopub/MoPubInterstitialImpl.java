package com.library.p518ad.strategy.request.mopub;

import android.app.Activity;
import android.content.Context;
import com.mopub.mobileads.MoPubInterstitial;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p406i.p408e.p410b.C6577a;
import p131c.p396i.p397a.p417j.C6617d;
/* renamed from: com.library.ad.strategy.request.mopub.MoPubInterstitialImpl */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/mopub/MoPubInterstitialImpl.class */
public class MoPubInterstitialImpl extends MoPubInterstitial {

    /* renamed from: com.library.ad.strategy.request.mopub.MoPubInterstitialImpl$MockActivity */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/mopub/MoPubInterstitialImpl$MockActivity.class */
    public static class MockActivity extends Activity {
        @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
        public void attachBaseContext(Context context) {
            super.attachBaseContext(context);
        }
    }

    public MoPubInterstitialImpl(String str) {
        super(m5261f(), str);
        MoPubInterstitial.MoPubInterstitialView moPubInterstitialView = new MoPubInterstitial.MoPubInterstitialView(C6489a.m20718b());
        moPubInterstitialView.setAdUnitId(str);
        C6617d.m20352a(this, MoPubInterstitial.MoPubInterstitialView.class, moPubInterstitialView);
    }

    /* renamed from: f */
    public static Activity m5261f() {
        C6577a.m20457a();
        MockActivity mockActivity = new MockActivity();
        mockActivity.attachBaseContext(C6489a.m20718b());
        return mockActivity;
    }
}
