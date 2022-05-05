package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetSessionStorageFactory.class */
public final class CoreModule_GetSessionStorageFactory implements AbstractC10866b<SessionStorage> {
    public final CoreModule module;

    public CoreModule_GetSessionStorageFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static CoreModule_GetSessionStorageFactory create(CoreModule coreModule) {
        return new CoreModule_GetSessionStorageFactory(coreModule);
    }

    public static SessionStorage getSessionStorage(CoreModule coreModule) {
        SessionStorage sessionStorage = coreModule.getSessionStorage();
        C10867c.m10383a(sessionStorage, "Cannot return null from a non-@Nullable @Provides method");
        return sessionStorage;
    }

    @Override // javax.inject.Provider
    public SessionStorage get() {
        return getSessionStorage(this.module);
    }
}
