package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/x.class */
public final class C4149x extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ Long f18537c;

    /* renamed from: d */
    private final /* synthetic */ String f18538d;

    /* renamed from: e */
    private final /* synthetic */ String f18539e;

    /* renamed from: f */
    private final /* synthetic */ Bundle f18540f;

    /* renamed from: g */
    private final /* synthetic */ boolean f18541g;

    /* renamed from: h */
    private final /* synthetic */ boolean f18542h;

    /* renamed from: i */
    private final /* synthetic */ C3866d f18543i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4149x(C3866d c3866d, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(c3866d);
        this.f18543i = c3866d;
        this.f18537c = l;
        this.f18538d = str;
        this.f18539e = str2;
        this.f18540f = bundle;
        this.f18541g = z;
        this.f18542h = z2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        char longValue = this.f18537c == null ? this.f17968a : this.f18537c.longValue();
        abstractC4131mi = this.f18543i.f17967r;
        abstractC4131mi.logEvent(this.f18538d, this.f18539e, this.f18540f, this.f18541g, this.f18542h, longValue);
    }
}
