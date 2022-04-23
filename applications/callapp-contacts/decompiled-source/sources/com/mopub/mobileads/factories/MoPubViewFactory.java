package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/MoPubViewFactory.class */
public class MoPubViewFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static MoPubViewFactory f34400a = new MoPubViewFactory();

    public static MoPubView create(Context context) {
        return new MoPubView(context);
    }

    @Deprecated
    public static void setInstance(MoPubViewFactory moPubViewFactory) {
        f34400a = moPubViewFactory;
    }
}
