package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/AdapterHelper.class */
public final class AdapterHelper {

    /* renamed from: a */
    public final WeakReference<Context> f5091a;

    /* renamed from: b */
    public final Context f5092b;

    /* renamed from: c */
    public final int f5093c;

    /* renamed from: d */
    public final int f5094d;

    public AdapterHelper(Context context, int i, int i2) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkArgument(i >= 0, "start position must be non-negative");
        Preconditions.checkArgument(i2 >= 2, "interval must be at least 2");
        this.f5091a = new WeakReference<>(context);
        this.f5092b = context.getApplicationContext();
        this.f5093c = i;
        this.f5094d = i2;
    }

    /* renamed from: a */
    public final int m3382a(int i) {
        int i2 = this.f5093c;
        if (i <= i2) {
            return 0;
        }
        return ((int) Math.floor((i - i2) / this.f5094d)) + 1;
    }

    /* renamed from: b */
    public final int m3381b(int i) {
        int i2 = this.f5093c;
        if (i <= i2) {
            return 0;
        }
        int i3 = this.f5094d - 1;
        int i4 = i - i2;
        return (i - i2) % i3 == 0 ? i4 / i3 : ((int) Math.floor(i4 / i3)) + 1;
    }

    public View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd) {
        return getAdView(view, viewGroup, nativeAd, null);
    }

    public View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd, ViewBinder viewBinder) {
        Context context = this.f5091a.get();
        if (context == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Weak reference to Context in AdapterHelper became null. Returning empty view.");
            return new View(this.f5092b);
        }
        return xh1.m101b(view, viewGroup, context, nativeAd);
    }

    public boolean isAdPosition(int i) {
        int i2 = this.f5093c;
        boolean z = false;
        if (i < i2) {
            return false;
        }
        if ((i - i2) % this.f5094d == 0) {
            z = true;
        }
        return z;
    }

    public int shiftedCount(int i) {
        return i + m3381b(i);
    }

    public int shiftedPosition(int i) {
        return i - m3382a(i);
    }
}
