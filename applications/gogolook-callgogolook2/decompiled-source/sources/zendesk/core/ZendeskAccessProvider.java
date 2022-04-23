package zendesk.core;

import androidx.annotation.NonNull;
import java.io.IOException;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
import p655o.C15299r;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskAccessProvider.class */
public class ZendeskAccessProvider implements AccessProvider {
    public final AccessService accessService;
    public final IdentityManager identityManager;

    public ZendeskAccessProvider(@NonNull IdentityManager identityManager, @NonNull AccessService accessService) {
        this.identityManager = identityManager;
        this.accessService = accessService;
    }

    @Override // zendesk.core.AccessProvider
    public AccessToken getAndStoreAuthTokenViaAnonymous(@NonNull AnonymousIdentity anonymousIdentity) {
        C15299r<AuthenticationResponse> rVar;
        C10845a.m10422a("ZendeskAccessProvider", "Requesting an access token for anonymous identity.", new Object[0]);
        try {
            rVar = this.accessService.getAuthTokenForAnonymous(new AuthenticationRequestWrapper(new ApiAnonymousIdentity(anonymousIdentity, this.identityManager.getSdkGuid()))).execute();
        } catch (IOException e) {
            C10845a.m10423a("ZendeskAccessProvider", e.getMessage(), e, new Object[0]);
            rVar = null;
        }
        AccessToken accessToken = null;
        if (rVar != null) {
            accessToken = null;
            if (rVar.m95a() != null) {
                AccessToken authentication = rVar.m95a().getAuthentication();
                accessToken = authentication;
                if (authentication != null) {
                    storeAccessTokenAndUserId(authentication);
                    accessToken = authentication;
                }
            }
        }
        return accessToken;
    }

    @Override // zendesk.core.AccessProvider
    public AccessToken getAndStoreAuthTokenViaJwt(@NonNull JwtIdentity jwtIdentity) {
        C15299r<AuthenticationResponse> rVar;
        C10845a.m10422a("ZendeskAccessProvider", "Requesting an access token for jwt identity.", new Object[0]);
        if (C10862d.m10389c(jwtIdentity.getJwtUserIdentifier())) {
            C10845a.m10419b("ZendeskAccessProvider", "The jwt user identifier is null or empty. We cannot proceed to get an access token", new Object[0]);
            return null;
        }
        try {
            rVar = this.accessService.getAuthTokenForJwt(new AuthenticationRequestWrapper(jwtIdentity)).execute();
        } catch (IOException e) {
            C10845a.m10423a("ZendeskAccessProvider", e.getMessage(), e, new Object[0]);
            rVar = null;
        }
        AccessToken accessToken = null;
        if (rVar != null) {
            accessToken = null;
            if (rVar.m95a() != null) {
                AccessToken authentication = rVar.m95a().getAuthentication();
                accessToken = authentication;
                if (authentication != null) {
                    storeAccessTokenAndUserId(authentication);
                    accessToken = authentication;
                }
            }
        }
        return accessToken;
    }

    public final void storeAccessTokenAndUserId(@NonNull AccessToken accessToken) {
        this.identityManager.storeAccessToken(accessToken);
    }
}
