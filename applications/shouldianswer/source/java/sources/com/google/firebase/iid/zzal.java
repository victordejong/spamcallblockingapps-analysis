package com.google.firebase.iid;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.iid.Registrar;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzal.class */
final /* synthetic */ class zzal implements ComponentFactory {
    static final ComponentFactory zza = new zzal();

    private zzal() {
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return new Registrar.zza((FirebaseInstanceId) componentContainer.get(FirebaseInstanceId.class));
    }
}
