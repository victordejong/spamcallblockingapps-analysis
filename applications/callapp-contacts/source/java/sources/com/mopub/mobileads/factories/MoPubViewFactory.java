package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/MoPubViewFactory.class */
public class MoPubViewFactory {

    /* renamed from: a */
    protected static MoPubViewFactory f59698a = new MoPubViewFactory();

    public static MoPubView create(Context context) {
        return new MoPubView(context);
    }

    @Deprecated
    public static void setInstance(MoPubViewFactory moPubViewFactory) {
        f59698a = moPubViewFactory;
    }
}
