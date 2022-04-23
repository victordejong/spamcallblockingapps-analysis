package com.google.android.gms.internal.ads;

import android.os.DeadObjectException;
import com.google.android.gms.common.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/il.class */
public final class il implements d.a {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zp f28063a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ih f28064b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public il(ih ihVar, zp zpVar) {
        this.f28064b = ihVar;
        this.f28063a = zpVar;
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a() {
        try {
            this.f28063a.set(this.f28064b.f28059a.a());
        } catch (DeadObjectException e) {
            this.f28063a.setException(e);
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        zp zpVar = this.f28063a;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i);
        zpVar.setException(new RuntimeException(sb.toString()));
    }
}
