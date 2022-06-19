package com.google.firebase.perf;

import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/zza.class */
final /* synthetic */ class zza implements ComponentFactory {
    static final ComponentFactory zzaa = new zza();

    private zza() {
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return new FirebasePerformance((FirebaseApp) componentContainer.get(FirebaseApp.class), ((RemoteConfigComponent) componentContainer.get(RemoteConfigComponent.class)).get("fireperf"));
    }
}
