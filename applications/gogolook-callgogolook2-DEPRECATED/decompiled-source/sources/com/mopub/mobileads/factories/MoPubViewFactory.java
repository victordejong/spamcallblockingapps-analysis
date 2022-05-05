package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/MoPubViewFactory.class */
public class MoPubViewFactory {

    /* renamed from: a */
    public static MoPubViewFactory f8847a = new MoPubViewFactory();

    public static MoPubView create(Context context) {
        return f8847a.m30345a(context);
    }

    @Deprecated
    @VisibleForTesting
    public static void setInstance(MoPubViewFactory moPubViewFactory) {
        f8847a = moPubViewFactory;
    }

    /* renamed from: a */
    public MoPubView m30345a(Context context) {
        return new MoPubView(context);
    }
}
