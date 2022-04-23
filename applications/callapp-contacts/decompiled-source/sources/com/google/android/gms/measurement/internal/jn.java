package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.bw;
import com.google.android.gms.internal.measurement.ce;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jn.class */
public final class jn {

    /* renamed from: a  reason: collision with root package name */
    ce f29900a;

    /* renamed from: b  reason: collision with root package name */
    List<Long> f29901b;

    /* renamed from: c  reason: collision with root package name */
    List<bw> f29902c;

    /* renamed from: d  reason: collision with root package name */
    long f29903d;
    final /* synthetic */ jo e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ jn(jo joVar, jh jhVar) {
        this.e = joVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final long a(bw bwVar) {
        return ((bwVar.zzg / 1000) / 60) / 60;
    }
}
