package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.maps.C13821c;
import com.google.android.gms.maps.p362a.AbstractBinderC13815v;
/* renamed from: com.google.android.gms.maps.u */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/u.class */
public final class BinderC13847u extends AbstractBinderC13815v {

    /* renamed from: a */
    private final /* synthetic */ C13821c.AbstractC13824c f51176a;

    public BinderC13847u(C13821c c13821c, C13821c.AbstractC13824c abstractC13824c) {
        this.f51176a = abstractC13824c;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13814u
    /* renamed from: a */
    public final void mo12141a(Bitmap bitmap) throws RemoteException {
        this.f51176a.onSnapshotReady(bitmap);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13814u
    /* renamed from: a */
    public final void mo12140a(AbstractC12126b abstractC12126b) throws RemoteException {
        this.f51176a.onSnapshotReady((Bitmap) BinderC12129d.m18980a(abstractC12126b));
    }
}
