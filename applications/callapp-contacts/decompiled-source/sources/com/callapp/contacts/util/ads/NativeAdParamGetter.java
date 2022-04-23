package com.callapp.contacts.util.ads;

import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/NativeAdParamGetter.class */
public interface NativeAdParamGetter {
    AdSettings a(String str);

    ViewBinder a(AdSettings adSettings);

    EnumSet<RequestParameters.NativeAdAsset> b(AdSettings adSettings);
}
