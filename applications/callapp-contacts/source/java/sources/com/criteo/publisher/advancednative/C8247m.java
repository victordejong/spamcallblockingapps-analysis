package com.criteo.publisher.advancednative;

import com.criteo.publisher.Bid;
import com.criteo.publisher.C8258c;
import com.criteo.publisher.logging.C8400e;
import com.criteo.publisher.model.NativeAdUnit;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.advancednative.m */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/m.class */
public final class C8247m {
    static {
        new C8247m();
    }

    private C8247m() {
    }

    /* renamed from: a */
    public static final C8400e m25974a(CriteoNativeLoader nativeLoader) {
        C18524p.m3841c(nativeLoader, "nativeLoader");
        return new C8400e(0, "Native(" + nativeLoader.adUnit + ") is loading", null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25973a(CriteoNativeLoader nativeLoader, Bid bid) {
        C18524p.m3841c(nativeLoader, "nativeLoader");
        StringBuilder sb = new StringBuilder("Native(");
        sb.append(nativeLoader.adUnit);
        sb.append(") is loading with bid ");
        sb.append(bid != null ? C8258c.m25959a(bid) : null);
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25972a(NativeAdUnit nativeAdUnit) {
        return new C8400e(0, "NativeLoader initialized for ".concat(String.valueOf(nativeAdUnit)), null, null, 13, null);
    }

    /* renamed from: b */
    public static final C8400e m25971b(CriteoNativeLoader criteoNativeLoader) {
        StringBuilder sb = new StringBuilder("Native(");
        sb.append(criteoNativeLoader != null ? criteoNativeLoader.adUnit : null);
        sb.append(") is loaded");
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: c */
    public static final C8400e m25970c(CriteoNativeLoader criteoNativeLoader) {
        StringBuilder sb = new StringBuilder("Native(");
        sb.append(criteoNativeLoader != null ? criteoNativeLoader.adUnit : null);
        sb.append(") failed to load");
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: d */
    public static final C8400e m25969d(CriteoNativeLoader criteoNativeLoader) {
        NativeAdUnit nativeAdUnit = criteoNativeLoader != null ? criteoNativeLoader.adUnit : null;
        return new C8400e(0, "Native(" + nativeAdUnit + ") impression registered", null, null, 13, null);
    }

    /* renamed from: e */
    public static final C8400e m25968e(CriteoNativeLoader criteoNativeLoader) {
        NativeAdUnit nativeAdUnit = criteoNativeLoader != null ? criteoNativeLoader.adUnit : null;
        return new C8400e(0, "Native(" + nativeAdUnit + ") clicked", null, null, 13, null);
    }
}
