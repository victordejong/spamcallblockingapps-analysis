package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RelativeLayout;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.verizon.ads.EnvironmentInfo;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdActivity.class */
public class DTBAdActivity extends Activity {

    /* renamed from: a */
    RelativeLayout f11685a;

    /* renamed from: b */
    DTBAdView f11686b;

    /* renamed from: c */
    String f11687c;

    /* renamed from: d */
    int f11688d;

    /* renamed from: a */
    public final void m39059a() {
        super.finish();
    }

    @Override // android.app.Activity
    public void finish() {
        this.f11686b.f11780b.mo39003g();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f11685a = relativeLayout;
        setContentView(relativeLayout);
        this.f11687c = getIntent().getStringExtra("ad_state");
        this.f11688d = getIntent().getIntExtra("cntrl_index", 0);
        if (this.f11687c.equals("expanded")) {
            this.f11686b = new DTBAdView(this, new DTBAdExpandedListener() { // from class: com.amazon.device.ads.DTBAdActivity.1
            }, this.f11688d);
            Intent intent = getIntent();
            String stringExtra = intent.getStringExtra("url");
            boolean booleanExtra = intent.getBooleanExtra("two_part_expand", false);
            this.f11685a.addView(this.f11686b, -1, -1);
            DTBAdView dTBAdView = this.f11686b;
            StringBuilder sb = new StringBuilder();
            sb.append("<script>");
            Context context = dTBAdView.getContext();
            String str = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
            DtbSharedPreferences.m38797c();
            String m38783g = DtbSharedPreferences.m38783g();
            String str2 = m38783g;
            if (DtbCommonUtils.m38882e(m38783g)) {
                str2 = "unknown";
            }
            Boolean m38781h = DtbSharedPreferences.m38797c().m38781h();
            Boolean bool = m38781h;
            if (m38781h == null) {
                bool = Boolean.FALSE;
            }
            sb.append(String.format("window.MRAID_ENV={version:'%s',sdk:'%s',sdkVersion:'%s',appId:'%s',ifa:'%s',limitAdTracking:%b,coppa:%b,impFired:true};", "3.0", DtbCommonUtils.m38897a(), "8.4.3", str, str2, bool, Boolean.FALSE));
            sb.append("</script>");
            dTBAdView.m38946a("aps-mraid", sb);
            sb.append("<script>");
            sb.append("window.location=\"");
            sb.append(stringExtra);
            sb.append("\";");
            sb.append("</script>");
            dTBAdView.loadDataWithBaseURL("https://c.amazon-adsystem.com/", sb.toString(), Mimetypes.MIMETYPE_HTML, "UTF-8", null);
            this.f11686b.m38942b(true);
            DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController = (DTBAdMRAIDExpandedController) this.f11686b.f11780b;
            dTBAdMRAIDExpandedController.f11722h = booleanExtra;
            dTBAdMRAIDExpandedController.m39002h();
        }
        Serializable serializableExtra = getIntent().getSerializableExtra("orientation");
        if (serializableExtra != null) {
            Map map = (Map) serializableExtra;
            boolean booleanValue = ((Boolean) map.get("allowOrientationChange")).booleanValue();
            String str3 = (String) map.get("forceOrientation");
            if (str3 == null) {
                return;
            }
            if (EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT.equals(str3)) {
                setRequestedOrientation(1);
            } else if (EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE.equals(str3)) {
                setRequestedOrientation(0);
            } else if (booleanValue) {
            } else {
                if (DisplayUtils.m38903a() == 2) {
                    setRequestedOrientation(6);
                } else {
                    setRequestedOrientation(7);
                }
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        "expanded".equals(this.f11687c);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
