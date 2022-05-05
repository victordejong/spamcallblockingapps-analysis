package com.mopub.nativeads;

import com.mopub.nativeads.AdbertCustomEventNative;
import com.mopub.nativeads.AotterTrekCustomEvent;
import com.mopub.nativeads.AotterTrekNative;
import com.mopub.nativeads.AppierNative;
import com.mopub.nativeads.FacebookNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import com.mopub.nativeads.TAMediaCustomEvent;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import com.mopub.nativeads.criteo.CriteoCustomEventNative;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0013"}, m815d2 = {"Lcom/mopub/nativeads/Utils;", "", "()V", "AD_NETWORK_SOURCE_NAME_ADBERT", "", "AD_NETWORK_SOURCE_NAME_ADMOB", "AD_NETWORK_SOURCE_NAME_AOTTERTREK", "AD_NETWORK_SOURCE_NAME_AOTTERTREK_HOUSE", "AD_NETWORK_SOURCE_NAME_APPIER", "AD_NETWORK_SOURCE_NAME_CRITEO", "AD_NETWORK_SOURCE_NAME_FACEBOOK", "AD_NETWORK_SOURCE_NAME_FLURRY", "AD_NETWORK_SOURCE_NAME_MOPUB", "AD_NETWORK_SOURCE_NAME_TAMEDIA", "getAdNSourceName", "customEventNative", "Lcom/mopub/nativeads/CustomEventNative;", "staticNativeAd", "Lcom/mopub/nativeads/StaticNativeAd;", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/Utils.class */
public final class Utils {
    public static final String AD_NETWORK_SOURCE_NAME_ADBERT = "Adbert";
    public static final String AD_NETWORK_SOURCE_NAME_ADMOB = "AdMob";
    public static final String AD_NETWORK_SOURCE_NAME_AOTTERTREK = "AotterTrek";
    public static final String AD_NETWORK_SOURCE_NAME_AOTTERTREK_HOUSE = "AotterTrek_House";
    public static final String AD_NETWORK_SOURCE_NAME_APPIER = "Appier";
    public static final String AD_NETWORK_SOURCE_NAME_CRITEO = "Criteo";
    public static final String AD_NETWORK_SOURCE_NAME_FACEBOOK = "Facebook";
    public static final String AD_NETWORK_SOURCE_NAME_FLURRY = "Flurry";
    public static final String AD_NETWORK_SOURCE_NAME_MOPUB = "MoPub";
    public static final String AD_NETWORK_SOURCE_NAME_TAMEDIA = "TAMedia";
    public static final Utils INSTANCE = new Utils();

    public static final String getAdNSourceName(CustomEventNative customEventNative) {
        C15149k.m377b(customEventNative, "customEventNative");
        return customEventNative instanceof AdbertCustomEventNative ? AD_NETWORK_SOURCE_NAME_ADBERT : customEventNative instanceof AdMobCustomEvent ? AD_NETWORK_SOURCE_NAME_ADMOB : customEventNative instanceof AotterTrekNative ? "AotterTrek" : customEventNative instanceof AotterTrekCustomEvent ? AD_NETWORK_SOURCE_NAME_AOTTERTREK_HOUSE : customEventNative instanceof AppierNative ? AD_NETWORK_SOURCE_NAME_APPIER : customEventNative instanceof CriteoCustomEventNative ? "Criteo" : customEventNative instanceof FacebookNative ? AD_NETWORK_SOURCE_NAME_FACEBOOK : customEventNative instanceof FlurryCustomEventNative ? AD_NETWORK_SOURCE_NAME_FLURRY : customEventNative instanceof MoPubCustomEventNative ? "MoPub" : customEventNative instanceof TAMediaCustomEvent ? AD_NETWORK_SOURCE_NAME_TAMEDIA : null;
    }

    public static final String getAdNSourceName(StaticNativeAd staticNativeAd) {
        C15149k.m377b(staticNativeAd, "staticNativeAd");
        return staticNativeAd instanceof AdbertCustomEventNative.C3927b ? AD_NETWORK_SOURCE_NAME_ADBERT : staticNativeAd instanceof AdMobCustomEvent.AdMobStaticNativeAd ? AD_NETWORK_SOURCE_NAME_ADMOB : staticNativeAd instanceof AotterTrekNative.C3929a ? "AotterTrek" : staticNativeAd instanceof AotterTrekCustomEvent.AotterTrekStaticAd ? AD_NETWORK_SOURCE_NAME_AOTTERTREK_HOUSE : staticNativeAd instanceof AppierNative.C3931a ? AD_NETWORK_SOURCE_NAME_APPIER : staticNativeAd instanceof CriteoCustomEventNative.CriteoStaticNativeAd ? "Criteo" : staticNativeAd instanceof FacebookNative.C3953c ? AD_NETWORK_SOURCE_NAME_FACEBOOK : staticNativeAd instanceof FlurryStaticNativeAd ? AD_NETWORK_SOURCE_NAME_FLURRY : staticNativeAd instanceof MoPubCustomEventNative.C3966b ? "MoPub" : staticNativeAd instanceof TAMediaCustomEvent.C4019a ? AD_NETWORK_SOURCE_NAME_TAMEDIA : null;
    }
}
