package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.MoPubView;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/MoPubViewFactory.class */
public class MoPubViewFactory {

    /* renamed from: a */
    public static MoPubViewFactory f9002a = new MoPubViewFactory();

    public static MoPubView create(Context context) {
        Objects.requireNonNull(f9002a);
        return new MoPubView(context);
    }

    @Deprecated
    @VisibleForTesting
    public static void setInstance(MoPubViewFactory moPubViewFactory) {
        f9002a = moPubViewFactory;
    }
}
