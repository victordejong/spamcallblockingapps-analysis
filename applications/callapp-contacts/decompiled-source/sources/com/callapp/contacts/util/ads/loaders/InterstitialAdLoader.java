package com.callapp.contacts.util.ads.loaders;

import android.app.Activity;
import com.callapp.contacts.util.ads.AdUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/InterstitialAdLoader.class */
public class InterstitialAdLoader extends BaseInterstitialAdLoader {

    /* renamed from: d  reason: collision with root package name */
    private final String f16107d;

    public InterstitialAdLoader(Activity activity, String str, AdUtils.AdEvents adEvents, boolean z) {
        super(activity, adEvents, z);
        this.f16107d = str;
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseInterstitialAdLoader
    public final void a() {
        AdUtils.a(this.f16099a.get(), this.f16107d, this.f16100b, false);
    }
}
