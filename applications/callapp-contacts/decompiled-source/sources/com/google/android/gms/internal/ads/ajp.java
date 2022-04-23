package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajp.class */
public final class ajp {

    /* renamed from: a  reason: collision with root package name */
    final lw f23435a;

    /* renamed from: b  reason: collision with root package name */
    final Executor f23436b;

    /* renamed from: c  reason: collision with root package name */
    aju f23437c;

    /* renamed from: d  reason: collision with root package name */
    final hi<Object> f23438d = new ajo(this);
    final hi<Object> e = new ajq(this);
    private final String f;

    public ajp(String str, lw lwVar, Executor executor) {
        this.f = str;
        this.f23435a = lwVar;
        this.f23436b = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.f);
    }
}
