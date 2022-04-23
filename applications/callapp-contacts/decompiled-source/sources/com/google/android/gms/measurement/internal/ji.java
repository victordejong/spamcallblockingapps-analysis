package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ji.class */
public final class ji implements dr {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29890a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ jo f29891b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ji(jo joVar, String str) {
        this.f29891b = joVar;
        this.f29890a = str;
    }

    @Override // com.google.android.gms.measurement.internal.dr
    public final void a(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f29891b.a(i, th, bArr);
    }
}
