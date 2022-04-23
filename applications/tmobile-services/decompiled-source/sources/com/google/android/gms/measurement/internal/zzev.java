package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzev.class */
public final class zzev {
    @NonNull

    /* renamed from: a */
    public String f9126a;
    @NonNull

    /* renamed from: b */
    private String f9127b;

    /* renamed from: c */
    private long f9128c;
    @NonNull

    /* renamed from: d */
    public Bundle f9129d;

    private zzev(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle, long j) {
        this.f9126a = str;
        this.f9127b = str2;
        this.f9129d = bundle == null ? new Bundle() : bundle;
        this.f9128c = j;
    }

    /* renamed from: b */
    public static zzev m11531b(zzar zzarVar) {
        return new zzev(zzarVar.f8882f, zzarVar.f8884h, zzarVar.f8883g.m11701Y(), zzarVar.f8885i);
    }

    /* renamed from: a */
    public final zzar m11532a() {
        return new zzar(this.f9126a, new zzam(new Bundle(this.f9129d)), this.f9127b, this.f9128c);
    }

    public final String toString() {
        String str = this.f9127b;
        String str2 = this.f9126a;
        String valueOf = String.valueOf(this.f9129d);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }
}
