package com.amazon.device.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RelativeLayout;
import java.io.Serializable;
import java.util.Map;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdActivity.class */
public class DTBAdActivity extends Activity {
    public static final String ADTYPE_ATTR = "ad_state";
    public static final String EXPANDED = "expanded";
    public static final String INDEX_ATTR = "cntrl_index";
    public static final String TWO_PART_EXPAND = "two_part_expand";
    public static final String URL_ATTR = "url";
    private final String LOG_TAG = DTBAdActivity.class.getSimpleName();
    public DTBAdView adView;
    public int index;
    public RelativeLayout pageLayout;
    public String type;

    private void createExpanded() {
        this.adView = new DTBAdView(this, new DTBAdExpandedListener() { // from class: com.amazon.device.ads.DTBAdActivity.1
            @Override // com.amazon.device.ads.DTBAdExpandedListener
            public void onAdLoaded(DTBAdView dTBAdView) {
            }

            @Override // com.amazon.device.ads.DTBAdExpandedListener
            public void onCreateExpandedController(DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController) {
            }
        }, this.index);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("url");
        boolean booleanExtra = intent.getBooleanExtra(TWO_PART_EXPAND, false);
        this.pageLayout.addView(this.adView, -1, -1);
        this.adView.fetchAdWithLocation(stringExtra);
        this.adView.setScrollEnabled(true);
        DTBAdMRAIDExpandedController controller = this.adView.getController();
        controller.setTwoPartExpand(booleanExtra);
        controller.addCloseIndicator();
    }

    @Override // android.app.Activity
    public void finish() {
        try {
            this.adView.getController().closeExpandedPartTwo();
        } catch (RuntimeException e) {
            DtbLog.error(this.LOG_TAG, "Fail to execute finish method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute finish method", e);
        }
    }

    public void foo() {
        getRequestedOrientation();
    }

    public void handleOrientation() {
        Serializable serializableExtra = getIntent().getSerializableExtra("orientation");
        if (serializableExtra != null) {
            Map map = (Map) serializableExtra;
            boolean booleanValue = ((Boolean) map.get("allowOrientationChange")).booleanValue();
            String str = (String) map.get("forceOrientation");
            if (str == null) {
                return;
            }
            if ("portrait".equals(str)) {
                setRequestedOrientation(1);
            } else if ("landscape".equals(str)) {
                setRequestedOrientation(0);
            } else if (booleanValue) {
            } else {
                if (DisplayUtils.determineSimpleOrientation() == 2) {
                    setRequestedOrientation(6);
                } else {
                    setRequestedOrientation(7);
                }
            }
        }
    }

    public boolean isExpanded() {
        return EXPANDED.equals(this.type);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.pageLayout = relativeLayout;
        setContentView(relativeLayout);
        this.type = getIntent().getStringExtra(ADTYPE_ATTR);
        this.index = getIntent().getIntExtra(INDEX_ATTR, 0);
        if (this.type.equals(EXPANDED)) {
            createExpanded();
        }
        handleOrientation();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        isExpanded();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
    }

    public void straightFinish() {
        super.finish();
    }
}
