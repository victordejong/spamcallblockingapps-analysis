package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/MoPubViewFactory.class */
public class MoPubViewFactory {

    /* renamed from: a */
    public static MoPubViewFactory f5000a = new MoPubViewFactory();

    public static MoPubView create(Context context) {
        return f5000a.m3498a(context);
    }

    @Deprecated
    @VisibleForTesting
    public static void setInstance(MoPubViewFactory moPubViewFactory) {
        f5000a = moPubViewFactory;
    }

    /* renamed from: a */
    public MoPubView m3498a(Context context) {
        return new MoPubView(context);
    }
}
