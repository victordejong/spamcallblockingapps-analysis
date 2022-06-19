package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdBuilding;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBResponseParsing;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.network.POBHttpRequest;
import com.pubmatic.sdk.common.network.POBNetworkHandler;
import com.pubmatic.sdk.common.network.POBNetworkResult;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBCommunicator.class */
public class POBCommunicator<AdDescriptorType extends POBAdDescriptor> implements POBNetworkHandler.POBNetworkListener<JSONObject>, POBResponseParsing.PMResponseParserListener<AdDescriptorType>, POBAdBuilding.PMAdBuilderListener<AdDescriptorType>, POBNetworkHandler.POBNetworkResultListener {

    /* renamed from: a */
    private final POBRequestBuilding f376a;

    /* renamed from: b */
    private final POBResponseParsing f377b;

    /* renamed from: c */
    private final POBAdBuilding<AdDescriptorType> f378c;

    /* renamed from: d */
    private final POBNetworkHandler f379d;

    /* renamed from: e */
    private PMCommunicatorListener<AdDescriptorType> f380e;

    /* renamed from: f */
    private POBNetworkResult f381f;

    /* renamed from: g */
    private POBErrorCustomisationListener f382g;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener.class */
    public interface PMCommunicatorListener<AdDescriptorType extends POBAdDescriptor> {
        void onError(POBError pOBError);

        void onSuccess(POBAdResponse<AdDescriptorType> pOBAdResponse);
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBCommunicator$POBErrorCustomisationListener.class */
    public interface POBErrorCustomisationListener {
        POBError customisePOBError(POBError pOBError, POBNetworkResult pOBNetworkResult);
    }

    public POBCommunicator(POBRequestBuilding pOBRequestBuilding, POBResponseParsing pOBResponseParsing, POBAdBuilding<AdDescriptorType> pOBAdBuilding, POBNetworkHandler pOBNetworkHandler) {
        this.f376a = pOBRequestBuilding;
        this.f379d = pOBNetworkHandler;
        this.f378c = pOBAdBuilding;
        pOBAdBuilding.setListener(this);
        this.f377b = pOBResponseParsing;
        pOBResponseParsing.setListener(this);
    }

    /* renamed from: a */
    private void m1106a(POBError pOBError) {
        PMCommunicatorListener<AdDescriptorType> pMCommunicatorListener = this.f380e;
        if (pMCommunicatorListener != null) {
            pMCommunicatorListener.onError(pOBError);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdBuilding.PMAdBuilderListener
    public void adBuilderOnError(POBError pOBError) {
        m1106a(pOBError);
    }

    @Override // com.pubmatic.sdk.common.base.POBAdBuilding.PMAdBuilderListener
    public void adBuilderOnSuccess(POBAdResponse<AdDescriptorType> pOBAdResponse) {
        PMCommunicatorListener<AdDescriptorType> pMCommunicatorListener = this.f380e;
        if (pMCommunicatorListener != null) {
            pMCommunicatorListener.onSuccess(pOBAdResponse);
        }
    }

    public void cancel() {
        this.f379d.cancelRequest(String.valueOf(this.f376a.hashCode()));
    }

    public POBNetworkResult getNetworkResult() {
        return this.f381f;
    }

    @Override // com.pubmatic.sdk.common.network.POBNetworkHandler.POBNetworkListener
    public void onFailure(POBError pOBError) {
        POBErrorCustomisationListener pOBErrorCustomisationListener = this.f382g;
        POBError pOBError2 = pOBError;
        if (pOBErrorCustomisationListener != null) {
            pOBError2 = pOBErrorCustomisationListener.customisePOBError(pOBError, this.f381f);
        }
        PMLog.debug("POBCommunicator", "Failed to receive an Ad response from server - %s", pOBError2.getErrorMessage());
        m1106a(pOBError2);
    }

    @Override // com.pubmatic.sdk.common.network.POBNetworkHandler.POBNetworkResultListener
    public void onResult(POBNetworkResult pOBNetworkResult) {
        this.f381f = pOBNetworkResult;
    }

    public void onSuccess(JSONObject jSONObject) {
        if (jSONObject != null) {
            PMLog.debug("POBCommunicator", "Successfully received Ad response from server - %s", jSONObject.toString());
        }
        this.f377b.parse(jSONObject);
    }

    @Override // com.pubmatic.sdk.common.base.POBResponseParsing.PMResponseParserListener
    public void parserOnError(POBError pOBError) {
        m1106a(pOBError);
    }

    @Override // com.pubmatic.sdk.common.base.POBResponseParsing.PMResponseParserListener
    public void parserOnSuccess(POBAdResponse<AdDescriptorType> pOBAdResponse) {
        this.f378c.build(new POBAdResponse.Builder(pOBAdResponse).build());
    }

    public void requestAd() {
        POBHttpRequest build = this.f376a.build();
        if (build == null) {
            m1106a(new POBError(1001, "Exception occurred while preparing this ad request"));
            return;
        }
        PMLog.debug("POBCommunicator", "Sending an Ad request - : %s", build.toString());
        this.f379d.sendJSONRequest(build, this, this);
    }

    public void setListener(PMCommunicatorListener<AdDescriptorType> pMCommunicatorListener) {
        this.f380e = pMCommunicatorListener;
    }

    public void setPOBErrorCustomisationListener(POBErrorCustomisationListener pOBErrorCustomisationListener) {
        this.f382g = pOBErrorCustomisationListener;
    }
}
