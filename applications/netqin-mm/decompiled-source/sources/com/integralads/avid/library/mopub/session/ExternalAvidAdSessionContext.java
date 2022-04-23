package com.integralads.avid.library.mopub.session;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext.class */
public class ExternalAvidAdSessionContext {

    /* renamed from: a */
    public String f33053a;

    /* renamed from: b */
    public boolean f33054b;

    public ExternalAvidAdSessionContext(String str) {
        this(str, false);
    }

    public ExternalAvidAdSessionContext(String str, boolean z) {
        this.f33053a = str;
        this.f33054b = z;
    }

    public String getPartnerVersion() {
        return this.f33053a;
    }

    public boolean isDeferred() {
        return this.f33054b;
    }
}
