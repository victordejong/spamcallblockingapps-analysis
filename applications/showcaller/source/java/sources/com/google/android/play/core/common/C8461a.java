package com.google.android.play.core.common;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.common.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/common/a.class */
public final class C8461a {

    /* renamed from: a */
    private final Map<String, Object> f38012a = new HashMap();

    /* renamed from: b */
    private final AtomicBoolean f38013b = new AtomicBoolean(false);

    /* renamed from: b */
    private final void m3578b() {
        synchronized (this) {
            this.f38012a.put("assetOnlyUpdates", Boolean.FALSE);
        }
    }

    /* renamed from: a */
    public final boolean m3579a() {
        synchronized (this) {
            if (!this.f38013b.get()) {
                m3578b();
            }
            Object obj = this.f38012a.get("assetOnlyUpdates");
            if (!(obj instanceof Boolean)) {
                return false;
            }
            return ((Boolean) obj).booleanValue();
        }
    }
}
