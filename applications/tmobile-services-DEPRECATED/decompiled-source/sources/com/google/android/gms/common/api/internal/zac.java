package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zac.class */
public abstract class zac {
    public zac(int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static Status m14777a(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (PlatformVersion.m14321b() && (remoteException instanceof TransactionTooLargeException)) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    /* renamed from: b */
    public abstract void mo14740b(@NonNull Status status);

    /* renamed from: c */
    public abstract void mo14737c(@NonNull zaz zazVar, boolean z);

    /* renamed from: d */
    public abstract void mo14739d(@NonNull RuntimeException runtimeException);

    /* renamed from: f */
    public abstract void mo14738f(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException;
}
