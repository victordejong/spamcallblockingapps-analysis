package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.p362a.AbstractBinderC13810q;
import com.google.android.gms.maps.p362a.AbstractC13795b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.maps.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/n.class */
public final class BinderC13840n extends AbstractBinderC13810q {

    /* renamed from: a */
    private final /* synthetic */ AbstractC13826e f51170a;

    public BinderC13840n(MapView.C13780a c13780a, AbstractC13826e abstractC13826e) {
        this.f51170a = abstractC13826e;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13809p
    /* renamed from: a */
    public final void mo12144a(AbstractC13795b abstractC13795b) throws RemoteException {
        this.f51170a.onMapReady(new C13821c(abstractC13795b));
    }
}
