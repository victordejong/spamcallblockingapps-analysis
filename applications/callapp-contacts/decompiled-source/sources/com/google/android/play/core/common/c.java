package com.google.android.play.core.common;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/common/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f31330a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f31331b = new AtomicBoolean(false);

    private final void b() {
        synchronized (this) {
            this.f31330a.put("assetOnlyUpdates", Boolean.FALSE);
        }
    }

    public final boolean a() {
        synchronized (this) {
            if (!this.f31331b.get()) {
                b();
            }
            Object obj = this.f31330a.get("assetOnlyUpdates");
            if (!(obj instanceof Boolean)) {
                return false;
            }
            return ((Boolean) obj).booleanValue();
        }
    }
}
