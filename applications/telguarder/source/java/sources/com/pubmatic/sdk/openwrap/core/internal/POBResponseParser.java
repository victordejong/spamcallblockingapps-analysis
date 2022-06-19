package com.pubmatic.sdk.openwrap.core.internal;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBResponseParsing;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.openwrap.core.POBBid;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/internal/POBResponseParser.class */
public class POBResponseParser implements POBResponseParsing<POBBid> {

    /* renamed from: a */
    private POBResponseParsing.PMResponseParserListener<POBBid> f781a;

    @Override // com.pubmatic.sdk.common.base.POBResponseParsing
    public void parse(JSONObject jSONObject) {
        PMLog.debug("PMResponseParser", "response :%s", jSONObject);
        if (jSONObject != null) {
            POBAdResponse.Builder builder = new POBAdResponse.Builder(jSONObject);
            POBResponseParsing.PMResponseParserListener<POBBid> pMResponseParserListener = this.f781a;
            if (pMResponseParserListener == null) {
                return;
            }
            pMResponseParserListener.parserOnSuccess(builder.build());
            return;
        }
        PMLog.error("PMResponseParser", "Listener not set to respond back for invalid input", new Object[0]);
        POBResponseParsing.PMResponseParserListener<POBBid> pMResponseParserListener2 = this.f781a;
        if (pMResponseParserListener2 == null) {
            return;
        }
        pMResponseParserListener2.parserOnError(new POBError(1007, "Listener not set to respond back for invalid input"));
    }

    @Override // com.pubmatic.sdk.common.base.POBResponseParsing
    public void setListener(POBResponseParsing.PMResponseParserListener<POBBid> pMResponseParserListener) {
        this.f781a = pMResponseParserListener;
    }
}
