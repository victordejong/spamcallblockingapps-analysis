package com.google.firebase.remoteconfig;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.abt.component.AbtComponent;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/RemoteConfigRegistrar.class */
public class RemoteConfigRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(RemoteConfigComponent.class).add(Dependency.required(Context.class)).add(Dependency.required(FirebaseApp.class)).add(Dependency.required(FirebaseInstanceId.class)).add(Dependency.required(AbtComponent.class)).add(Dependency.optional(AnalyticsConnector.class)).factory(zzr.zzkd).alwaysEager().build(), LibraryVersionComponent.create("fire-rc", "17.0.0"));
    }
}
