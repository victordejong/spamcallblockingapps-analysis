package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.models.POBAdResponse;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBResponseParsing.class */
public interface POBResponseParsing<T extends POBAdDescriptor> {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener.class */
    public interface PMResponseParserListener<T extends POBAdDescriptor> {
        void parserOnError(POBError pOBError);

        void parserOnSuccess(POBAdResponse<T> pOBAdResponse);
    }

    void parse(JSONObject jSONObject);

    void setListener(PMResponseParserListener<T> pMResponseParserListener);
}
