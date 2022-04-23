package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.AdLifecycleListener;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseAd.class */
public abstract class BaseAd {

    /* renamed from: a  reason: collision with root package name */
    boolean f34040a = true;

    /* renamed from: b  reason: collision with root package name */
    protected AdLifecycleListener.LoadListener f34041b;

    /* renamed from: c  reason: collision with root package name */
    protected AdLifecycleListener.InteractionListener f34042c;

    protected void a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, AdLifecycleListener.LoadListener loadListener, AdData adData) throws Exception {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(loadListener);
        Preconditions.checkNotNull(adData);
        this.f34041b = loadListener;
        load(context, adData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AdLifecycleListener.InteractionListener interactionListener) {
        Preconditions.checkNotNull(interactionListener);
        this.f34042c = interactionListener;
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String getAdNetworkId();

    /* JADX INFO: Access modifiers changed from: protected */
    public View getAdView() {
        return null;
    }

    public abstract String getProviderTag();

    protected abstract void load(Context context, AdData adData) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onInvalidate();

    public boolean shouldReportImpressionAndClick() {
        return false;
    }
}
