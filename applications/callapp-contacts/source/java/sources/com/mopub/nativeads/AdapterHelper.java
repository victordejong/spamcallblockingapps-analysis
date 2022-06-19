package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/AdapterHelper.class */
public final class AdapterHelper {

    /* renamed from: a */
    private final WeakReference<Context> f59797a;

    /* renamed from: b */
    private final Context f59798b;

    /* renamed from: c */
    private final int f59799c;

    /* renamed from: d */
    private final int f59800d;

    public AdapterHelper(Context context, int i, int i2) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkArgument(i >= 0, "start position must be non-negative");
        Preconditions.checkArgument(i2 >= 2, "interval must be at least 2");
        this.f59797a = new WeakReference<>(context);
        this.f59798b = context.getApplicationContext();
        this.f59799c = i;
        this.f59800d = i2;
    }

    public final View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd) {
        return getAdView(view, viewGroup, nativeAd, null);
    }

    public final View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd, ViewBinder viewBinder) {
        Context context = this.f59797a.get();
        if (context == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Weak reference to Context in AdapterHelper became null. Returning empty view.");
            return new View(this.f59798b);
        }
        return C16978d.m6113a(view, viewGroup, context, nativeAd);
    }

    public final boolean isAdPosition(int i) {
        int i2 = this.f59799c;
        return i >= i2 && (i - i2) % this.f59800d == 0;
    }

    public final int shiftedCount(int i) {
        int i2;
        int i3 = this.f59799c;
        if (i <= i3) {
            i2 = 0;
        } else {
            int i4 = this.f59800d - 1;
            i2 = (i - i3) % i4 == 0 ? (i - i3) / i4 : ((int) Math.floor((i - i3) / i4)) + 1;
        }
        return i + i2;
    }

    public final int shiftedPosition(int i) {
        int i2 = this.f59799c;
        return i - (i <= i2 ? 0 : ((int) Math.floor((i - i2) / this.f59800d)) + 1);
    }
}
