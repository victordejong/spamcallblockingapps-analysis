package net.pubnative.lite.sdk.viewability;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import com.iab.omid.library.pubnativenet.a;
import com.iab.omid.library.pubnativenet.adsession.i;
import com.iab.omid.library.pubnativenet.d.d;
import net.pubnative.lite.sdk.analytics.ReportingController;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/ViewabilityManager.class */
public class ViewabilityManager {
    private static final String TAG = "ViewabilityManager";
    private static String VIEWABILITY_JS_SERVICE_CONTENT;
    private static final String VIEWABILITY_PARTNER_NAME = "Pubnativenet";
    private static i mPubNativePartner;
    private boolean mShouldMeasureViewability = true;
    private final ReportingController reportingController;

    public ViewabilityManager(final Application application, ReportingController reportingController) {
        this.reportingController = reportingController;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: net.pubnative.lite.sdk.viewability.ViewabilityManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!a.a()) {
                        a.a(application);
                    }
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                }
                if (a.a() && ViewabilityManager.mPubNativePartner == null) {
                    try {
                        d.a(ViewabilityManager.VIEWABILITY_PARTNER_NAME, "Name is null or empty");
                        d.a("2.4.3", "Version is null or empty");
                        i unused = ViewabilityManager.mPubNativePartner = new i(ViewabilityManager.VIEWABILITY_PARTNER_NAME, "2.4.3");
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

    public i getPartner() {
        return mPubNativePartner;
    }

    public ReportingController getReportingController() {
        return this.reportingController;
    }

    public String getServiceJs() {
        return VIEWABILITY_JS_SERVICE_CONTENT;
    }

    public boolean isViewabilityMeasurementActivated() {
        return a.a() && this.mShouldMeasureViewability;
    }

    public boolean isViewabilityMeasurementEnabled() {
        return this.mShouldMeasureViewability;
    }

    public void setViewabilityMeasurementEnabled(boolean z) {
        this.mShouldMeasureViewability = z;
    }
}
