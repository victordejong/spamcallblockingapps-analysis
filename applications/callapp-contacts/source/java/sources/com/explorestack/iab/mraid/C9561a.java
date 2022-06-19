package com.explorestack.iab.mraid;

import java.util.Arrays;
import java.util.List;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* renamed from: com.explorestack.iab.mraid.a */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/a.class */
public final class C9561a {

    /* renamed from: a */
    private final List<String> f32497a;

    public C9561a(List<String> list) {
        this.f32497a = list;
    }

    public C9561a(String[] strArr) {
        this(strArr != null ? Arrays.asList(strArr) : null);
    }

    /* renamed from: a */
    public static boolean m24179a() {
        MraidLog.m24185d("MRAIDNativeFeatureManager", "isCalendarSupported: false (deprecated)");
        return false;
    }

    /* renamed from: c */
    public static boolean m24177c() {
        MraidLog.m24185d("MRAIDNativeFeatureManager", "isSmsSupported: false (deprecated)");
        return false;
    }

    /* renamed from: d */
    public static boolean m24176d() {
        MraidLog.m24185d("MRAIDNativeFeatureManager", "isStorePictureSupported: false (deprecated)");
        return false;
    }

    /* renamed from: e */
    public static boolean m24175e() {
        MraidLog.m24185d("MRAIDNativeFeatureManager", "isTelSupported: false (deprecated)");
        return false;
    }

    /* renamed from: b */
    public final boolean m24178b() {
        List<String> list = this.f32497a;
        boolean z = list != null && list.contains(MRAIDNativeFeature.INLINE_VIDEO);
        MraidLog.m24185d("MRAIDNativeFeatureManager", "isInlineVideoSupported ".concat(String.valueOf(z)));
        return z;
    }
}
