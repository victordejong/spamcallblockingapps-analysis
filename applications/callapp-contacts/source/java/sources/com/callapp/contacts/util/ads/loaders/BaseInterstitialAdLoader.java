package com.callapp.contacts.util.ads.loaders;

import android.app.Activity;
import com.callapp.contacts.util.ads.AdUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader.class */
public abstract class BaseInterstitialAdLoader {

    /* renamed from: a */
    protected final WeakReference<Activity> f28052a;

    /* renamed from: b */
    protected final AdUtils.AdEvents f28053b;

    /* renamed from: c */
    protected final boolean f28054c;

    public BaseInterstitialAdLoader(Activity activity, AdUtils.AdEvents adEvents, boolean z) {
        this.f28052a = new WeakReference<>(activity);
        this.f28053b = adEvents;
        this.f28054c = z;
    }

    /* renamed from: a */
    public abstract void mo27206a();

    /* renamed from: b */
    public void mo27205b() {
    }
}
