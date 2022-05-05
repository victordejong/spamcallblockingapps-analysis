package zendesk.support;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskProviderStore.class */
public class ZendeskProviderStore implements ProviderStore {
    public final RequestProvider requestProvider;
    public final UploadProvider uploadProvider;

    public ZendeskProviderStore(HelpCenterProvider helpCenterProvider, RequestProvider requestProvider, UploadProvider uploadProvider) {
        this.requestProvider = requestProvider;
        this.uploadProvider = uploadProvider;
    }

    @Override // zendesk.support.ProviderStore
    public RequestProvider requestProvider() {
        return this.requestProvider;
    }

    @Override // zendesk.support.ProviderStore
    public UploadProvider uploadProvider() {
        return this.uploadProvider;
    }
}
