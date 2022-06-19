package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.AbstractC24934n0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaf.class */
public final class zaf extends AbstractC24934n0<Void> {

    /* renamed from: c */
    public final zacc f5892c;

    public zaf(zacc zaccVar, TaskCompletionSource<Void> taskCompletionSource) {
        super(3, taskCompletionSource);
        this.f5892c = zaccVar;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void mo38939c(zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: f */
    public final Feature[] mo38941f(zabl<?> zablVar) {
        return this.f5892c.f5868a.f5770b;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: g */
    public final boolean mo38940g(zabl<?> zablVar) {
        return this.f5892c.f5868a.f5771c;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.AbstractC24934n0
    /* renamed from: h */
    public final void mo4283h(zabl<?> zablVar) throws RemoteException {
        this.f5892c.f5868a.m39019a(zablVar.f5850b, this.f69855b);
        ListenerHolder.ListenerKey<?> listenerKey = this.f5892c.f5868a.f5769a.f5765c;
        if (listenerKey != null) {
            zablVar.f5854f.put(listenerKey, this.f5892c);
        }
    }
}
