package zendesk.core;

import dagger.Component;
import javax.inject.Singleton;
/* JADX INFO: Access modifiers changed from: package-private */
@Component(modules = {ZendeskApplicationModule.class, ZendeskStorageModule.class, ZendeskProvidersModule.class, ZendeskNetworkModule.class})
@Singleton
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationComponent.class */
public interface ZendeskApplicationComponent {
    ZendeskShadow zendeskShadow();
}
