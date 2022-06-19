package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.AbstractC11951d;
import com.google.android.gms.common.data.DataHolder;
import net.pubnative.lite.sdk.analytics.Reporting;
/* renamed from: com.google.android.gms.wearable.internal.al */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/al.class */
public final class C14243al extends AbstractC11951d {

    /* renamed from: c */
    private final int f52223c;

    public C14243al(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.f52223c = i2;
    }

    public final String toString() {
        String str = m19255a(Reporting.Key.EVENT_TYPE) == 1 ? "changed" : m19255a(Reporting.Key.EVENT_TYPE) == 2 ? "deleted" : "unknown";
        String valueOf = String.valueOf(new C14247ap(this.f39441a, this.f39442b, this.f52223c));
        StringBuilder sb = new StringBuilder(str.length() + 32 + String.valueOf(valueOf).length());
        sb.append("DataEventRef{ type=");
        sb.append(str);
        sb.append(", dataitem=");
        sb.append(valueOf);
        sb.append(" }");
        return sb.toString();
    }
}
