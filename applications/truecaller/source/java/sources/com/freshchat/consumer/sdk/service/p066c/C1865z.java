package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.JwtTokenStatus;
import com.freshchat.consumer.sdk.beans.reqres.ValidateJwtIdTokenResponse;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1704d;
import com.freshchat.consumer.sdk.p057j.C1720o;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1879ab;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
/* renamed from: com.freshchat.consumer.sdk.service.c.z */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/z.class */
public class C1865z extends AbstractC1829a<C1879ab, AbstractC1907k> {
    /* renamed from: a */
    public boolean m39402a(C1879ab c1879ab) {
        return C1731w.m39793ay(getContext()) && C1622ap.m40245bD(getContext()).getUserAuthConfig().isJwtAuthEnabled();
    }

    /* renamed from: b */
    public AbstractC1907k mo39348b(C1879ab c1879ab) {
        JwtTokenStatus m39843bz = C1720o.m39843bz(getContext());
        if (m39402a(c1879ab) && C1626as.m40233a(c1879ab.getJwtIdToken()) && m39843bz == JwtTokenStatus.TOKEN_NOT_PROCESSED) {
            ValidateJwtIdTokenResponse m40627aZ = new C1528a(getContext()).m40627aZ(c1879ab.getJwtIdToken());
            if (m40627aZ.isUserAliasExists()) {
                C1704d.m39970bG(getContext());
            } else if (m40627aZ.isValidToken()) {
                C1720o.m39858a(getContext(), JwtTokenStatus.TOKEN_VALID, c1879ab.getJwtIdToken());
            }
            C1720o.m39859a(getContext(), JwtTokenStatus.TOKEN_INVALID);
        }
        return new C1904h(true);
    }
}
