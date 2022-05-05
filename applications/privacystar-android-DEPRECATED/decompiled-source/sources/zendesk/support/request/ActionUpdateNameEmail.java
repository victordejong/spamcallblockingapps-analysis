package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.StringUtils;
import zendesk.core.AnonymousIdentity;
import zendesk.core.AuthenticationProvider;
import zendesk.core.Identity;
import zendesk.core.Zendesk;
import zendesk.suas.Dispatcher;
import zendesk.suas.GetState;
import zendesk.support.request.AsyncMiddleware;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionUpdateNameEmail.class */
class ActionUpdateNameEmail implements AsyncMiddleware.AsyncAction {
    private final AuthenticationProvider authenticationProvider;
    private final String email;
    private final String name;

    /* renamed from: zendesk  reason: collision with root package name */
    private final Zendesk f1908zendesk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionUpdateNameEmail(@Nullable String str, @Nullable String str2, @NonNull AuthenticationProvider authenticationProvider, @NonNull Zendesk zendesk2) {
        this.name = str;
        this.email = str2;
        this.authenticationProvider = authenticationProvider;
        this.f1908zendesk = zendesk2;
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void actionQueued(Dispatcher dispatcher, GetState getState) {
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void execute(Dispatcher dispatcher, GetState getState, AsyncMiddleware.Callback callback) {
        Identity identity = this.authenticationProvider.getIdentity();
        if (identity instanceof AnonymousIdentity) {
            AnonymousIdentity anonymousIdentity = (AnonymousIdentity) identity;
            AnonymousIdentity anonymousIdentity2 = anonymousIdentity;
            if (StringUtils.hasLength(this.email)) {
                anonymousIdentity2 = anonymousIdentity;
                if (!this.email.equals(anonymousIdentity.getEmail())) {
                    anonymousIdentity2 = (AnonymousIdentity) new AnonymousIdentity.Builder().withEmailIdentifier(this.email).withNameIdentifier(anonymousIdentity.getName()).build();
                }
            }
            AnonymousIdentity anonymousIdentity3 = anonymousIdentity2;
            if (StringUtils.hasLength(this.name)) {
                anonymousIdentity3 = anonymousIdentity2;
                if (!this.name.equals(anonymousIdentity2.getName())) {
                    anonymousIdentity3 = (AnonymousIdentity) new AnonymousIdentity.Builder().withEmailIdentifier(anonymousIdentity2.getEmail()).withNameIdentifier(this.name).build();
                }
            }
            if (anonymousIdentity3 != identity) {
                this.f1908zendesk.setIdentity(anonymousIdentity3);
            }
        }
        callback.done();
    }
}
