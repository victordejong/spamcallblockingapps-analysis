package zendesk.core;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskAuthenticationProvider.class */
public class ZendeskAuthenticationProvider implements AuthenticationProvider {
    public final IdentityManager identityManager;

    public ZendeskAuthenticationProvider(IdentityManager identityManager) {
        this.identityManager = identityManager;
    }

    @Override // zendesk.core.AuthenticationProvider
    public Identity getIdentity() {
        return this.identityManager.getIdentity();
    }
}
