package com.pubmatic.sdk.omsdk;

import android.content.Context;
import android.view.View;
import com.iab.omid.library.pubmatic.Omid;
import com.iab.omid.library.pubmatic.adsession.AdEvents;
import com.iab.omid.library.pubmatic.adsession.AdSession;
import com.iab.omid.library.pubmatic.adsession.FriendlyObstructionPurpose;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.viewability.POBMeasurementProvider;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/omsdk/POBMeasurement.class */
public abstract class POBMeasurement implements POBMeasurementProvider {
    protected static final String TAG = "OMSDK";
    protected AdEvents adEvents;
    protected AdSession adSession;

    @Override // com.pubmatic.sdk.common.viewability.POBMeasurementProvider
    public void addFriendlyObstructions(View view, POBMeasurementProvider.POBFriendlyObstructionPurpose pOBFriendlyObstructionPurpose) {
        AdSession adSession = this.adSession;
        if (adSession == null) {
            PMLog.error(TAG, "Unable to add obstruction", new Object[0]);
            return;
        }
        try {
            adSession.addFriendlyObstruction(view, FriendlyObstructionPurpose.valueOf(pOBFriendlyObstructionPurpose.name()), null);
        } catch (Exception e) {
            PMLog.error(TAG, "Unable to add obstruction: %s", e.getMessage());
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBMeasurementProvider
    public void finishAdSession() {
        try {
            AdSession adSession = this.adSession;
            if (adSession != null) {
                adSession.removeAllFriendlyObstructions();
                this.adSession.finish();
                PMLog.debug(TAG, "Ad session finished id : %s", this.adSession.getAdSessionId());
                this.adSession = null;
            } else {
                PMLog.error(TAG, "Unable to finish Ad session", new Object[0]);
            }
        } catch (Exception e) {
            PMLog.error(TAG, "Unable to finish Ad session: %s", e.getMessage());
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBMeasurementProvider
    public String omSDKVersion() {
        return Omid.getVersion();
    }

    @Override // com.pubmatic.sdk.common.viewability.POBMeasurementProvider
    public void omidJsServiceScript(Context context, POBMeasurementProvider.POBScriptListener pOBScriptListener) {
        POBInstanceProvider.getCacheManager(context).requestServiceScript(String.format(POBCommonConstants.OMID_JS_SERVICE_URL, omSDKVersion().replace("-Pubmatic", "")), pOBScriptListener);
    }

    @Override // com.pubmatic.sdk.common.viewability.POBMeasurementProvider
    public void removeFriendlyObstructions(View view) {
        AdSession adSession = this.adSession;
        if (adSession == null) {
            PMLog.error(TAG, "Unable to remove obstruction", new Object[0]);
            return;
        }
        try {
            if (view != null) {
                adSession.removeFriendlyObstruction(view);
            } else {
                adSession.removeAllFriendlyObstructions();
            }
        } catch (Exception e) {
            PMLog.error(TAG, "Unable to add obstruction: %s", e.getMessage());
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBMeasurementProvider
    public void setTrackView(View view) {
        try {
            if (this.adSession != null) {
                PMLog.debug(TAG, "Track view changed", new Object[0]);
                this.adSession.registerAdView(view);
            } else {
                PMLog.error(TAG, "Unable to change track view", new Object[0]);
            }
        } catch (Exception e) {
            PMLog.error(TAG, "Unable to change track view: %s", e.getMessage());
        }
    }
}
