package com.integralads.avid.library.mopub.session.internal;

import android.content.Context;
import com.integralads.avid.library.mopub.AvidContext;
import com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext.class */
public class InternalAvidAdSessionContext {
    public static final String AVID_API_LEVEL = "2";
    public static final String AVID_STUB_MODE = "stub";
    public static final String CONTEXT_AVID_AD_SESSION_ID = "avidAdSessionId";
    public static final String CONTEXT_AVID_AD_SESSION_TYPE = "avidAdSessionType";
    public static final String CONTEXT_AVID_API_LEVEL = "avidApiLevel";
    public static final String CONTEXT_AVID_LIBRARY_VERSION = "avidLibraryVersion";
    public static final String CONTEXT_BUNDLE_IDENTIFIER = "bundleIdentifier";
    public static final String CONTEXT_IS_DEFERRED = "isDeferred";
    public static final String CONTEXT_MEDIA_TYPE = "mediaType";
    public static final String CONTEXT_MODE = "mode";
    public static final String CONTEXT_PARTNER = "partner";
    public static final String CONTEXT_PARTNER_VERSION = "partnerVersion";

    /* renamed from: a */
    public String f33066a;

    /* renamed from: b */
    public ExternalAvidAdSessionContext f33067b;

    /* renamed from: c */
    public String f33068c;

    /* renamed from: d */
    public String f33069d;

    public InternalAvidAdSessionContext(Context context, String str, String str2, String str3, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        AvidContext.getInstance().init(context);
        this.f33066a = str;
        this.f33067b = externalAvidAdSessionContext;
        this.f33068c = str2;
        this.f33069d = str3;
    }

    public ExternalAvidAdSessionContext getAvidAdSessionContext() {
        return this.f33067b;
    }

    public String getAvidAdSessionId() {
        return this.f33066a;
    }

    public JSONObject getFullContext() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("avidAdSessionId", this.f33066a);
            jSONObject.put("bundleIdentifier", AvidContext.getInstance().getBundleId());
            jSONObject.put("partner", AvidContext.getInstance().getPartnerName());
            jSONObject.put("partnerVersion", this.f33067b.getPartnerVersion());
            jSONObject.put("avidLibraryVersion", AvidContext.getInstance().getAvidVersion());
            jSONObject.put(CONTEXT_AVID_AD_SESSION_TYPE, this.f33068c);
            jSONObject.put(CONTEXT_MEDIA_TYPE, this.f33069d);
            jSONObject.put(CONTEXT_IS_DEFERRED, this.f33067b.isDeferred());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public JSONObject getStubContext() {
        JSONObject fullContext = getFullContext();
        try {
            fullContext.put(CONTEXT_AVID_API_LEVEL, AVID_API_LEVEL);
            fullContext.put(CONTEXT_MODE, AVID_STUB_MODE);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return fullContext;
    }

    public void setAvidAdSessionContext(ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        this.f33067b = externalAvidAdSessionContext;
    }
}
