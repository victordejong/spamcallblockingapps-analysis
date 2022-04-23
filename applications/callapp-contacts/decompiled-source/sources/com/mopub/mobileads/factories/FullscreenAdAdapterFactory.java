package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdAdapter;
import com.mopub.mobileads.AdData;
import com.mopub.mobileads.FullscreenAdAdapter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/FullscreenAdAdapterFactory.class */
public class FullscreenAdAdapterFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static FullscreenAdAdapterFactory f34397a = new FullscreenAdAdapterFactory();

    public static FullscreenAdAdapter create(Context context, String str, AdData adData) throws AdAdapter.BaseAdNotFoundException {
        return new FullscreenAdAdapter(context, str, adData);
    }

    @Deprecated
    public static void setInstance(FullscreenAdAdapterFactory fullscreenAdAdapterFactory) {
        f34397a = fullscreenAdAdapterFactory;
    }
}
