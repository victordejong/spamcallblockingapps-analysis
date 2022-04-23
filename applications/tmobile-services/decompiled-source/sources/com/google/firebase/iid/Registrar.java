package com.google.firebase.iid;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.util.Arrays;
import java.util.List;
@Keep
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Registrar.class */
public final class Registrar implements ComponentRegistrar {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Registrar$FIIDInternalAdapter.class */
    public static class FIIDInternalAdapter implements FirebaseInstanceIdInternal {
        final FirebaseInstanceId fiid;

        public FIIDInternalAdapter(FirebaseInstanceId firebaseInstanceId) {
            this.fiid = firebaseInstanceId;
        }

        @Override // com.google.firebase.iid.internal.FirebaseInstanceIdInternal
        public String getId() {
            return this.fiid.getId();
        }

        @Override // com.google.firebase.iid.internal.FirebaseInstanceIdInternal
        public String getToken() {
            return this.fiid.getToken();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ FirebaseInstanceId lambda$getComponents$0$Registrar(ComponentContainer componentContainer) {
        return new FirebaseInstanceId((FirebaseApp) componentContainer.get(FirebaseApp.class), (Subscriber) componentContainer.get(Subscriber.class), (UserAgentPublisher) componentContainer.get(UserAgentPublisher.class), (HeartBeatInfo) componentContainer.get(HeartBeatInfo.class), (FirebaseInstallationsApi) componentContainer.get(FirebaseInstallationsApi.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ FirebaseInstanceIdInternal lambda$getComponents$1$Registrar(ComponentContainer componentContainer) {
        return new FIIDInternalAdapter((FirebaseInstanceId) componentContainer.get(FirebaseInstanceId.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public final List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(FirebaseInstanceId.class).add(Dependency.required(FirebaseApp.class)).add(Dependency.required(Subscriber.class)).add(Dependency.required(UserAgentPublisher.class)).add(Dependency.required(HeartBeatInfo.class)).add(Dependency.required(FirebaseInstallationsApi.class)).factory(Registrar$$Lambda$0.$instance).alwaysEager().build(), Component.builder(FirebaseInstanceIdInternal.class).add(Dependency.required(FirebaseInstanceId.class)).factory(Registrar$$Lambda$1.$instance).build(), LibraryVersionComponent.create("fire-iid", BuildConfig.VERSION_NAME));
    }
}
