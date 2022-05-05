package zendesk.support;

import dagger.Component;
import javax.inject.Singleton;
import zendesk.core.CoreModule;
/* JADX INFO: Access modifiers changed from: package-private */
@Component(modules = {SupportApplicationModule.class, CoreModule.class, ServiceModule.class, ProviderModule.class, StorageModule.class})
@Singleton
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkProvidersComponent.class */
public interface SupportSdkProvidersComponent {
    Support inject(Support support);
}
