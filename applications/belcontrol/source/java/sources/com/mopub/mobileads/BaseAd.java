package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.mopub.common.LifecycleListener;
import com.mopub.common.MoPubLifecycleManager;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.AdLifecycleListener;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseAd.class */
public abstract class BaseAd {

    /* renamed from: a */
    public boolean f4634a = true;

    /* renamed from: b */
    public AdLifecycleListener.LoadListener f4635b;

    /* renamed from: c */
    public AdLifecycleListener.InteractionListener f4636c;

    /* renamed from: a */
    public abstract boolean mo3660a(Activity activity, AdData adData);

    /* renamed from: b */
    public View mo3659b() {
        return null;
    }

    @VisibleForTesting
    /* renamed from: c */
    public abstract LifecycleListener mo3658c();

    @VisibleForTesting
    /* renamed from: d */
    public final void m3711d(Context context, AdLifecycleListener.LoadListener loadListener, AdData adData) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(loadListener);
        Preconditions.checkNotNull(adData);
        this.f4635b = loadListener;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (mo3660a(activity, adData)) {
                MoPubLifecycleManager.getInstance(activity).addLifecycleListener(mo3658c());
            }
        }
        load(context, adData);
    }

    /* renamed from: e */
    public final void m3710e(AdLifecycleListener.InteractionListener interactionListener) {
        Preconditions.checkNotNull(interactionListener);
        this.f4636c = interactionListener;
        mo3669g();
    }

    /* renamed from: f */
    public boolean m3709f() {
        return this.f4634a;
    }

    /* renamed from: g */
    public void mo3669g() {
    }

    public abstract String getAdNetworkId();

    /* renamed from: h */
    public void mo3657h() {
    }

    public abstract void load(Context context, AdData adData);

    public abstract void onInvalidate();
}
