package com.callapp.contacts.util.ads.loaders;

import android.app.Activity;
import com.callapp.contacts.util.ads.AdUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader.class */
public abstract class BaseInterstitialAdLoader {

    /* renamed from: a  reason: collision with root package name */
    protected final WeakReference<Activity> f16099a;

    /* renamed from: b  reason: collision with root package name */
    protected final AdUtils.AdEvents f16100b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f16101c;

    public BaseInterstitialAdLoader(Activity activity, AdUtils.AdEvents adEvents, boolean z) {
        this.f16099a = new WeakReference<>(activity);
        this.f16100b = adEvents;
        this.f16101c = z;
    }

    public abstract void a();

    public void b() {
    }
}
