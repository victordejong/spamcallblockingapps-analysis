package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.jq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jq.class */
public final class C4418jq implements AbstractC4274ei {

    /* renamed from: a */
    private final /* synthetic */ String f19267a;

    /* renamed from: b */
    private final /* synthetic */ C4415jo f19268b;

    public C4418jq(C4415jo c4415jo, String str) {
        this.f19268b = c4415jo;
        this.f19267a = str;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4274ei
    /* renamed from: a */
    public final void mo4182a(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f19268b.m4241a(i, th, bArr, this.f19267a);
    }
}
