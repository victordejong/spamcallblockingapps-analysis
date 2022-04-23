package com.explorestack.iab.mraid;

import java.util.Arrays;
import java.util.List;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f19127a;

    public a(List<String> list) {
        this.f19127a = list;
    }

    public a(String[] strArr) {
        this(strArr != null ? Arrays.asList(strArr) : null);
    }

    public static boolean a() {
        MraidLog.d("MRAIDNativeFeatureManager", "isCalendarSupported: false (deprecated)");
        return false;
    }

    public static boolean c() {
        MraidLog.d("MRAIDNativeFeatureManager", "isSmsSupported: false (deprecated)");
        return false;
    }

    public static boolean d() {
        MraidLog.d("MRAIDNativeFeatureManager", "isStorePictureSupported: false (deprecated)");
        return false;
    }

    public static boolean e() {
        MraidLog.d("MRAIDNativeFeatureManager", "isTelSupported: false (deprecated)");
        return false;
    }

    public final boolean b() {
        List<String> list = this.f19127a;
        boolean z = list != null && list.contains(MRAIDNativeFeature.INLINE_VIDEO);
        MraidLog.d("MRAIDNativeFeatureManager", "isInlineVideoSupported ".concat(String.valueOf(z)));
        return z;
    }
}
