package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/AdapterHelper.class */
public final class AdapterHelper {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Context> f34451a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f34452b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34453c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34454d;

    public AdapterHelper(Context context, int i, int i2) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        boolean z = true;
        Preconditions.checkArgument(i >= 0, "start position must be non-negative");
        if (i2 < 2) {
            z = false;
        }
        Preconditions.checkArgument(z, "interval must be at least 2");
        this.f34451a = new WeakReference<>(context);
        this.f34452b = context.getApplicationContext();
        this.f34453c = i;
        this.f34454d = i2;
    }

    public final View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd) {
        return getAdView(view, viewGroup, nativeAd, null);
    }

    public final View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd, ViewBinder viewBinder) {
        Context context = this.f34451a.get();
        if (context != null) {
            return d.a(view, viewGroup, context, nativeAd);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Weak reference to Context in AdapterHelper became null. Returning empty view.");
        return new View(this.f34452b);
    }

    public final boolean isAdPosition(int i) {
        int i2 = this.f34453c;
        return i >= i2 && (i - i2) % this.f34454d == 0;
    }

    public final int shiftedCount(int i) {
        int i2;
        int i3 = this.f34453c;
        if (i <= i3) {
            i2 = 0;
        } else {
            int i4 = this.f34454d - 1;
            i2 = (i - i3) % i4 == 0 ? (i - i3) / i4 : ((int) Math.floor((i - i3) / i4)) + 1;
        }
        return i + i2;
    }

    public final int shiftedPosition(int i) {
        int i2 = this.f34453c;
        return i - (i <= i2 ? 0 : ((int) Math.floor((i - i2) / this.f34454d)) + 1);
    }
}
