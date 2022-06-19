package com.callapp.contacts.util.ads;

import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/NativeAdParamGetter.class */
public interface NativeAdParamGetter {
    /* renamed from: a */
    AdSettings mo26137a(String str);

    /* renamed from: a */
    ViewBinder mo26138a(AdSettings adSettings);

    /* renamed from: b */
    EnumSet<RequestParameters.NativeAdAsset> mo26136b(AdSettings adSettings);
}
