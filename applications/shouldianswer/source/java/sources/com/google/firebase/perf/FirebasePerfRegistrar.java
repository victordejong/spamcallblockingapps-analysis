package com.google.firebase.perf;

import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/FirebasePerfRegistrar.class */
public class FirebasePerfRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(FirebasePerformance.class).add(Dependency.required(FirebaseApp.class)).add(Dependency.required(RemoteConfigComponent.class)).factory(zza.zzaa).eagerInDefaultApp().build(), LibraryVersionComponent.create("fire-perf", "19.0.2"));
    }
}
