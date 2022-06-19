package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.i9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/i9.class */
public final class C7750i9 implements AbstractC7846r3 {

    /* renamed from: a */
    final /* synthetic */ String f35344a;

    /* renamed from: b */
    final /* synthetic */ C7819o9 f35345b;

    public C7750i9(C7819o9 c7819o9, String str) {
        this.f35345b = c7819o9;
        this.f35344a = str;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7846r3
    /* renamed from: a */
    public final void mo6051a(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f35345b.m6145g(i, th, bArr, this.f35344a);
    }
}
