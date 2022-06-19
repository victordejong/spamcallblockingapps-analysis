package com.mopub.nativeads;

import android.view.View;
import com.mopub.common.Preconditions;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/BaseNativeAd.class */
public abstract class BaseNativeAd {

    /* renamed from: c */
    public NativeEventListener f9037c;

    /* renamed from: a */
    public final Set<String> f9035a = new HashSet();

    /* renamed from: b */
    public final Set<String> f9036b = new HashSet();

    /* renamed from: d */
    public boolean f9038d = false;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/BaseNativeAd$NativeEventListener.class */
    public interface NativeEventListener {
        void onAdClicked();

        void onAdImpressed();
    }

    public final void addClickTracker(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "clickTracker url is not allowed to be null")) {
            return;
        }
        this.f9036b.add(str);
    }

    public final void addImpressionTracker(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "impressionTracker url is not allowed to be null")) {
            return;
        }
        this.f9035a.add(str);
    }

    public abstract void clear(View view);

    public abstract void destroy();

    public void invalidate() {
        this.f9038d = true;
    }

    public boolean isInvalidated() {
        return this.f9038d;
    }

    public abstract void prepare(View view);

    public void setNativeEventListener(NativeEventListener nativeEventListener) {
        this.f9037c = nativeEventListener;
    }
}
