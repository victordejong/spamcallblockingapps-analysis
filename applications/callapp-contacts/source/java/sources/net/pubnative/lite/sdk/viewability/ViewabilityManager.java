package net.pubnative.lite.sdk.viewability;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import com.iab.omid.library.pubnativenet.C16407a;
import com.iab.omid.library.pubnativenet.adsession.C16425i;
import com.iab.omid.library.pubnativenet.p441d.C16448d;
import net.pubnative.lite.sdk.analytics.ReportingController;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/ViewabilityManager.class */
public class ViewabilityManager {
    private static final String TAG = "ViewabilityManager";
    private static String VIEWABILITY_JS_SERVICE_CONTENT;
    private static final String VIEWABILITY_PARTNER_NAME = "Pubnativenet";
    private static C16425i mPubNativePartner;
    private boolean mShouldMeasureViewability = true;
    private final ReportingController reportingController;

    public ViewabilityManager(final Application application, ReportingController reportingController) {
        this.reportingController = reportingController;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: net.pubnative.lite.sdk.viewability.ViewabilityManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!C16407a.m7285a()) {
                        C16407a.m7284a(application);
                    }
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                }
                if (C16407a.m7285a() && ViewabilityManager.mPubNativePartner == null) {
                    try {
                        C16448d.m7222a(ViewabilityManager.VIEWABILITY_PARTNER_NAME, "Name is null or empty");
                        C16448d.m7222a("2.4.3", "Version is null or empty");
                        C16425i unused = ViewabilityManager.mPubNativePartner = new C16425i(ViewabilityManager.VIEWABILITY_PARTNER_NAME, "2.4.3");
                    } catch (IllegalArgumentException e2) {
                        e2.printStackTrace();
                    }
                }
                if (TextUtils.isEmpty(ViewabilityManager.VIEWABILITY_JS_SERVICE_CONTENT)) {
                    String unused2 = ViewabilityManager.VIEWABILITY_JS_SERVICE_CONTENT = new String(Base64.decode(Assets.omsdkjs, 0));
                }
            }
        });
    }

    public C16425i getPartner() {
        return mPubNativePartner;
    }

    public ReportingController getReportingController() {
        return this.reportingController;
    }

    public String getServiceJs() {
        return VIEWABILITY_JS_SERVICE_CONTENT;
    }

    public boolean isViewabilityMeasurementActivated() {
        return C16407a.m7285a() && this.mShouldMeasureViewability;
    }

    public boolean isViewabilityMeasurementEnabled() {
        return this.mShouldMeasureViewability;
    }

    public void setViewabilityMeasurementEnabled(boolean z) {
        this.mShouldMeasureViewability = z;
    }
}
