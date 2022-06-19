package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.mopub.common.LifecycleListener;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.AdLifecycleListener;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseAd.class */
public abstract class BaseAd {

    /* renamed from: a */
    public boolean f8775a = true;

    /* renamed from: b */
    public AdLifecycleListener.LoadListener f8776b;

    /* renamed from: c */
    public AdLifecycleListener.InteractionListener f8777c;

    /* renamed from: a */
    public abstract boolean m36256a(Activity activity, AdData adData) throws Exception;

    /* renamed from: b */
    public View m36255b() {
        return null;
    }

    @VisibleForTesting
    /* renamed from: c */
    public abstract LifecycleListener m36254c();

    /* renamed from: d */
    public void m36253d() {
    }

    /* renamed from: e */
    public void m36252e() {
    }

    public abstract String getAdNetworkId();

    public abstract void load(Context context, AdData adData) throws Exception;

    public abstract void onInvalidate();
}
