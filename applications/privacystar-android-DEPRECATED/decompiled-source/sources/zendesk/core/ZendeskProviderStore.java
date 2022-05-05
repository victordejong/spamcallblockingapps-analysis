package zendesk.core;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProviderStore.class */
class ZendeskProviderStore implements ProviderStore {
    private final PushRegistrationProvider pushRegistrationProvider;
    private final UserProvider userProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskProviderStore(UserProvider userProvider, PushRegistrationProvider pushRegistrationProvider) {
        this.userProvider = userProvider;
        this.pushRegistrationProvider = pushRegistrationProvider;
    }

    @Override // zendesk.core.ProviderStore
    public PushRegistrationProvider pushRegistrationProvider() {
        return this.pushRegistrationProvider;
    }

    @Override // zendesk.core.ProviderStore
    public UserProvider userProvider() {
        return this.userProvider;
    }
}
