package com.criteo.publisher.advancednative;

import com.criteo.publisher.Bid;
import com.criteo.publisher.c;
import com.criteo.publisher.logging.e;
import com.criteo.publisher.model.NativeAdUnit;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/m.class */
public final class m {
    static {
        new m();
    }

    private m() {
    }

    public static final e a(CriteoNativeLoader nativeLoader) {
        p.c(nativeLoader, "nativeLoader");
        return new e(0, "Native(" + nativeLoader.adUnit + ") is loading", null, null, 13, null);
    }

    public static final e a(CriteoNativeLoader nativeLoader, Bid bid) {
        p.c(nativeLoader, "nativeLoader");
        StringBuilder sb = new StringBuilder("Native(");
        sb.append(nativeLoader.adUnit);
        sb.append(") is loading with bid ");
        sb.append(bid != null ? c.a(bid) : null);
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e a(NativeAdUnit nativeAdUnit) {
        return new e(0, "NativeLoader initialized for ".concat(String.valueOf(nativeAdUnit)), null, null, 13, null);
    }

    public static final e b(CriteoNativeLoader criteoNativeLoader) {
        StringBuilder sb = new StringBuilder("Native(");
        sb.append(criteoNativeLoader != null ? criteoNativeLoader.adUnit : null);
        sb.append(") is loaded");
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e c(CriteoNativeLoader criteoNativeLoader) {
        StringBuilder sb = new StringBuilder("Native(");
        sb.append(criteoNativeLoader != null ? criteoNativeLoader.adUnit : null);
        sb.append(") failed to load");
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e d(CriteoNativeLoader criteoNativeLoader) {
        NativeAdUnit nativeAdUnit = criteoNativeLoader != null ? criteoNativeLoader.adUnit : null;
        return new e(0, "Native(" + nativeAdUnit + ") impression registered", null, null, 13, null);
    }

    public static final e e(CriteoNativeLoader criteoNativeLoader) {
        NativeAdUnit nativeAdUnit = criteoNativeLoader != null ? criteoNativeLoader.adUnit : null;
        return new e(0, "Native(" + nativeAdUnit + ") clicked", null, null, 13, null);
    }
}
