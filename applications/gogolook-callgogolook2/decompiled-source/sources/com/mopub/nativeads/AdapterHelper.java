package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
import p081h.p430l.p435d.C10733d;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AdapterHelper.class */
public final class AdapterHelper {
    @NonNull

    /* renamed from: a */
    public final WeakReference<Context> f8961a;
    @NonNull

    /* renamed from: b */
    public final Context f8962b;

    /* renamed from: c */
    public final int f8963c;

    /* renamed from: d */
    public final int f8964d;

    public AdapterHelper(@NonNull Context context, int i, int i2) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        boolean z = true;
        Preconditions.checkArgument(i >= 0, "start position must be non-negative");
        if (i2 < 2) {
            z = false;
        }
        Preconditions.checkArgument(z, "interval must be at least 2");
        this.f8961a = new WeakReference<>(context);
        this.f8962b = context.getApplicationContext();
        this.f8963c = i;
        this.f8964d = i2;
    }

    /* renamed from: a */
    public final int m30229a(int i) {
        int i2 = this.f8963c;
        if (i <= i2) {
            return 0;
        }
        return ((int) Math.floor((i - i2) / this.f8964d)) + 1;
    }

    /* renamed from: b */
    public final int m30228b(int i) {
        int i2 = this.f8963c;
        if (i <= i2) {
            return 0;
        }
        int i3 = this.f8964d - 1;
        return (i - i2) % i3 == 0 ? (i - i2) / i3 : ((int) Math.floor((i - i2) / i3)) + 1;
    }

    @NonNull
    public View getAdView(@Nullable View view, @Nullable ViewGroup viewGroup, @Nullable NativeAd nativeAd) {
        return getAdView(view, viewGroup, nativeAd, null);
    }

    @NonNull
    public View getAdView(@Nullable View view, @Nullable ViewGroup viewGroup, @Nullable NativeAd nativeAd, @Nullable ViewBinder viewBinder) {
        Context context = this.f8961a.get();
        if (context != null) {
            return C10733d.m10784a(view, viewGroup, context, nativeAd);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Weak reference to Context in AdapterHelper became null. Returning empty view.");
        return new View(this.f8962b);
    }

    public boolean isAdPosition(int i) {
        int i2 = this.f8963c;
        boolean z = false;
        if (i < i2) {
            return false;
        }
        if ((i - i2) % this.f8964d == 0) {
            z = true;
        }
        return z;
    }

    public int shiftedCount(int i) {
        return i + m30228b(i);
    }

    public int shiftedPosition(int i) {
        return i - m30229a(i);
    }
}
