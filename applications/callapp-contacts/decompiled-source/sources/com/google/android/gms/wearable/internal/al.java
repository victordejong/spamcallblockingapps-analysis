package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/al.class */
public final class al extends d {

    /* renamed from: c  reason: collision with root package name */
    private final int f30087c;

    public al(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.f30087c = i2;
    }

    public final String toString() {
        String str = a(Reporting.Key.EVENT_TYPE) == 1 ? "changed" : a(Reporting.Key.EVENT_TYPE) == 2 ? "deleted" : "unknown";
        String valueOf = String.valueOf(new ap(this.f22802a, this.f22803b, this.f30087c));
        StringBuilder sb = new StringBuilder(str.length() + 32 + String.valueOf(valueOf).length());
        sb.append("DataEventRef{ type=");
        sb.append(str);
        sb.append(", dataitem=");
        sb.append(valueOf);
        sb.append(" }");
        return sb.toString();
    }
}
