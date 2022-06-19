package com.google.android.play.core.common;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.common.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/common/c.class */
public final class C15002c {

    /* renamed from: a */
    private final Map<String, Object> f54731a = new HashMap();

    /* renamed from: b */
    private final AtomicBoolean f54732b = new AtomicBoolean(false);

    /* renamed from: b */
    private final void m9631b() {
        synchronized (this) {
            this.f54731a.put("assetOnlyUpdates", Boolean.FALSE);
        }
    }

    /* renamed from: a */
    public final boolean m9632a() {
        synchronized (this) {
            if (!this.f54732b.get()) {
                m9631b();
            }
            Object obj = this.f54731a.get("assetOnlyUpdates");
            if (!(obj instanceof Boolean)) {
                return false;
            }
            return ((Boolean) obj).booleanValue();
        }
    }
}
