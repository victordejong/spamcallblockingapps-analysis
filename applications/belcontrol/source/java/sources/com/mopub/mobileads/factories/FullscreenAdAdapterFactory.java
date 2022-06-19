package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdData;
import com.mopub.mobileads.FullscreenAdAdapter;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/FullscreenAdAdapterFactory.class */
public class FullscreenAdAdapterFactory {

    /* renamed from: a */
    public static FullscreenAdAdapterFactory f4997a = new FullscreenAdAdapterFactory();

    public static FullscreenAdAdapter create(Context context, String str, AdData adData) {
        return f4997a.m3500a(context, str, adData);
    }

    @Deprecated
    public static void setInstance(FullscreenAdAdapterFactory fullscreenAdAdapterFactory) {
        f4997a = fullscreenAdAdapterFactory;
    }

    /* renamed from: a */
    public FullscreenAdAdapter m3500a(Context context, String str, AdData adData) {
        return new FullscreenAdAdapter(context, str, adData);
    }
}
