package com.callapp.contacts.util.ads.loaders;

import android.app.Activity;
import com.callapp.contacts.util.ads.AdUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/InterstitialAdLoader.class */
public class InterstitialAdLoader extends BaseInterstitialAdLoader {

    /* renamed from: d */
    private final String f28075d;

    public InterstitialAdLoader(Activity activity, String str, AdUtils.AdEvents adEvents, boolean z) {
        super(activity, adEvents, z);
        this.f28075d = str;
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseInterstitialAdLoader
    /* renamed from: a */
    public final void mo27206a() {
        AdUtils.m27283a(this.f28052a.get(), this.f28075d, this.f28053b, false);
    }
}
