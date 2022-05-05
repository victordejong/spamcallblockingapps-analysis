package zendesk.core;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskAuthenticationProvider.class */
class ZendeskAuthenticationProvider implements AuthenticationProvider {
    private final IdentityManager identityManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskAuthenticationProvider(IdentityManager identityManager) {
        this.identityManager = identityManager;
    }

    @Override // zendesk.core.AuthenticationProvider
    public Identity getIdentity() {
        return this.identityManager.getIdentity();
    }
}
