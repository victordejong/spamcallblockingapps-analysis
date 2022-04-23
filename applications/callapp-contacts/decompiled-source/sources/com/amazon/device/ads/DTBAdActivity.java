package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RelativeLayout;
import com.amazonaws.services.s3.util.Mimetypes;
import com.verizon.ads.EnvironmentInfo;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdActivity.class */
public class DTBAdActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f6372a;

    /* renamed from: b  reason: collision with root package name */
    DTBAdView f6373b;

    /* renamed from: c  reason: collision with root package name */
    String f6374c;

    /* renamed from: d  reason: collision with root package name */
    int f6375d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        super.finish();
    }

    @Override // android.app.Activity
    public void finish() {
        this.f6373b.f6417b.g();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f6372a = relativeLayout;
        setContentView(relativeLayout);
        this.f6374c = getIntent().getStringExtra("ad_state");
        this.f6375d = getIntent().getIntExtra("cntrl_index", 0);
        if (this.f6374c.equals("expanded")) {
            this.f6373b = new DTBAdView(this, new DTBAdExpandedListener() { // from class: com.amazon.device.ads.DTBAdActivity.1
            }, this.f6375d);
            Intent intent = getIntent();
            String stringExtra = intent.getStringExtra("url");
            boolean booleanExtra = intent.getBooleanExtra("two_part_expand", false);
            this.f6372a.addView(this.f6373b, -1, -1);
            DTBAdView dTBAdView = this.f6373b;
            StringBuilder sb = new StringBuilder();
            sb.append("<script>");
            Context context = dTBAdView.getContext();
            String str = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
            DtbSharedPreferences.c();
            String g = DtbSharedPreferences.g();
            String str2 = g;
            if (DtbCommonUtils.e(g)) {
                str2 = "unknown";
            }
            Boolean h = DtbSharedPreferences.c().h();
            Boolean bool = h;
            if (h == null) {
                bool = Boolean.FALSE;
            }
            sb.append(String.format("window.MRAID_ENV={version:'%s',sdk:'%s',sdkVersion:'%s',appId:'%s',ifa:'%s',limitAdTracking:%b,coppa:%b,impFired:true};", "3.0", DtbCommonUtils.a(), "8.4.3", str, str2, bool, Boolean.FALSE));
            sb.append("</script>");
            dTBAdView.a("aps-mraid", sb);
            sb.append("<script>");
            sb.append("window.location=\"");
            sb.append(stringExtra);
            sb.append("\";");
            sb.append("</script>");
            dTBAdView.loadDataWithBaseURL("https://c.amazon-adsystem.com/", sb.toString(), Mimetypes.MIMETYPE_HTML, "UTF-8", null);
            this.f6373b.b(true);
            DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController = (DTBAdMRAIDExpandedController) this.f6373b.f6417b;
            dTBAdMRAIDExpandedController.h = booleanExtra;
            dTBAdMRAIDExpandedController.h();
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
                if (DisplayUtils.a() == 2) {
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
        "expanded".equals(this.f6374c);
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
