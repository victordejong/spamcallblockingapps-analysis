package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcv.class */
final class zzcv extends ContentObserver {

    /* renamed from: a */
    private final /* synthetic */ zzct f8334a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcv(zzct zzctVar, Handler handler) {
        super(null);
        this.f8334a = zzctVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f8334a.m12793c();
    }
}
