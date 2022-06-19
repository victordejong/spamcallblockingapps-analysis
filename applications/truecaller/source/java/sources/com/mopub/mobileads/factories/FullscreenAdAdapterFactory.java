package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdAdapter$BaseAdNotFoundException;
import com.mopub.mobileads.AdData;
import com.mopub.mobileads.FullscreenAdAdapter;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/FullscreenAdAdapterFactory.class */
public class FullscreenAdAdapterFactory {

    /* renamed from: a */
    public static FullscreenAdAdapterFactory f8999a = new FullscreenAdAdapterFactory();

    public static FullscreenAdAdapter create(Context context, String str, AdData adData) throws AdAdapter$BaseAdNotFoundException {
        Objects.requireNonNull(f8999a);
        return new FullscreenAdAdapter(context, str, adData);
    }

    @Deprecated
    public static void setInstance(FullscreenAdAdapterFactory fullscreenAdAdapterFactory) {
        f8999a = fullscreenAdAdapterFactory;
    }
}
