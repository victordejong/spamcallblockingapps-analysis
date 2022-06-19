package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.AdLifecycleListener;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseAd.class */
public abstract class BaseAd {

    /* renamed from: a */
    boolean f59118a = true;

    /* renamed from: b */
    protected AdLifecycleListener.LoadListener f59119b;

    /* renamed from: c */
    protected AdLifecycleListener.InteractionListener f59120c;

    /* renamed from: a */
    protected void mo6371a() {
    }

    /* renamed from: a */
    public final void m6555a(Context context, AdLifecycleListener.LoadListener loadListener, AdData adData) throws Exception {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(loadListener);
        Preconditions.checkNotNull(adData);
        this.f59119b = loadListener;
        load(context, adData);
    }

    /* renamed from: a */
    public final void m6554a(AdLifecycleListener.InteractionListener interactionListener) {
        Preconditions.checkNotNull(interactionListener);
        this.f59120c = interactionListener;
        mo6371a();
    }

    /* renamed from: b */
    public void mo6476b() {
    }

    public abstract String getAdNetworkId();

    public View getAdView() {
        return null;
    }

    public abstract String getProviderTag();

    protected abstract void load(Context context, AdData adData) throws Exception;

    public abstract void onInvalidate();

    public boolean shouldReportImpressionAndClick() {
        return false;
    }
}
