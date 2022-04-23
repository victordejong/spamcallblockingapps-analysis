package com.applovin.impl.adview;

import android.content.Context;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.adview.InterstitialAdDialogCreator;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
import p131c.p135b.p136a.p138b.C2097m;
import p131c.p135b.p136a.p148e.C2374t;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/InterstitialAdDialogCreatorImpl.class */
public class InterstitialAdDialogCreatorImpl implements InterstitialAdDialogCreator {

    /* renamed from: a */
    public static final Object f21253a = new Object();

    /* renamed from: b */
    public static WeakReference<C2097m> f21254b = new WeakReference<>(null);

    /* renamed from: c */
    public static WeakReference<Context> f21255c = new WeakReference<>(null);

    @Override // com.applovin.adview.InterstitialAdDialogCreator
    public AppLovinInterstitialAdDialog createInterstitialAdDialog(AppLovinSdk appLovinSdk, Context context) {
        C2097m mVar;
        AppLovinSdk appLovinSdk2 = appLovinSdk;
        if (appLovinSdk == null) {
            appLovinSdk2 = AppLovinSdk.getInstance(context);
        }
        synchronized (f21253a) {
            mVar = f21254b.get();
            if (mVar != null && f21255c.get() == context) {
                C2374t.m30034j("InterstitialAdDialogCreator", "An interstitial dialog is already showing, returning it");
            }
            mVar = new C2097m(appLovinSdk2, context);
            f21254b = new WeakReference<>(mVar);
            f21255c = new WeakReference<>(context);
        }
        return mVar;
    }
}
