package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajp.class */
public final class ajp {

    /* renamed from: a */
    final C12729lw f42237a;

    /* renamed from: b */
    final Executor f42238b;

    /* renamed from: c */
    aju f42239c;

    /* renamed from: d */
    final AbstractC12607hi<Object> f42240d = new ajo(this);

    /* renamed from: e */
    final AbstractC12607hi<Object> f42241e = new ajq(this);

    /* renamed from: f */
    private final String f42242f;

    public ajp(String str, C12729lw c12729lw, Executor executor) {
        this.f42242f = str;
        this.f42237a = c12729lw;
        this.f42238b = executor;
    }

    /* renamed from: a */
    public final boolean m18633a(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.f42242f);
    }
}
