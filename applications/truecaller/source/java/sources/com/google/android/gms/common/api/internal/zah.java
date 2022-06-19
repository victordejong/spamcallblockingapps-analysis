package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.AbstractC24934n0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zah.class */
public final class zah extends AbstractC24934n0<Boolean> {

    /* renamed from: c */
    public final ListenerHolder.ListenerKey<?> f5896c;

    public zah(ListenerHolder.ListenerKey<?> listenerKey, TaskCompletionSource<Boolean> taskCompletionSource) {
        super(4, taskCompletionSource);
        this.f5896c = listenerKey;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void mo38939c(zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: f */
    public final Feature[] mo38941f(zabl<?> zablVar) {
        zacc zaccVar = zablVar.f5854f.get(this.f5896c);
        if (zaccVar == null) {
            return null;
        }
        return zaccVar.f5868a.f5770b;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: g */
    public final boolean mo38940g(zabl<?> zablVar) {
        zacc zaccVar = zablVar.f5854f.get(this.f5896c);
        return zaccVar != null && zaccVar.f5868a.f5771c;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.AbstractC24934n0
    /* renamed from: h */
    public final void mo4283h(zabl<?> zablVar) throws RemoteException {
        zacc remove = zablVar.f5854f.remove(this.f5896c);
        if (remove == null) {
            this.f69855b.m38515b(Boolean.FALSE);
            return;
        }
        remove.f5869b.m39014a(zablVar.f5850b, this.f69855b);
        remove.f5868a.f5769a.m39023a();
    }
}
