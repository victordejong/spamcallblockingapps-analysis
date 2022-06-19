package com.bytedance.sdk.openadsdk.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.CustomEventInterstitialListener;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5450c;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import java.util.ArrayList;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/adapter/PangleAdInterstitialActivity.class */
public class PangleAdInterstitialActivity extends Activity {
    public static final String INTENT_TYPE = "intent_type";
    public static final int INTENT_TYPE_IMAGE_2_3 = 2;
    public static final int INTENT_TYPE_IMAGE_3_2 = 1;

    /* renamed from: n */
    private static CustomEventInterstitialListener f15983n;

    /* renamed from: o */
    private static TTNativeAd f15984o;

    /* renamed from: a */
    private ImageView f15985a;

    /* renamed from: b */
    private RelativeLayout f15986b;

    /* renamed from: c */
    private NiceImageView f15987c;

    /* renamed from: d */
    private TextView f15988d;

    /* renamed from: e */
    private TextView f15989e;

    /* renamed from: f */
    private Button f15990f;

    /* renamed from: g */
    private TTRatingBar f15991g;

    /* renamed from: h */
    private Intent f15992h;

    /* renamed from: i */
    private ViewGroup f15993i;

    /* renamed from: j */
    private RelativeLayout f15994j;

    /* renamed from: k */
    private ViewGroup f15995k;

    /* renamed from: l */
    private float f15996l;

    /* renamed from: m */
    private float f15997m;

    /* renamed from: a */
    private void m35752a(int i) {
        ViewGroup.LayoutParams layoutParams = this.f15994j.getLayoutParams();
        layoutParams.height = i;
        this.f15994j.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this.f15993i.getLayoutParams();
        layoutParams2.height = (int) (this.f15997m - i);
        this.f15993i.setLayoutParams(layoutParams2);
    }

    /* renamed from: a */
    private void m35751a(TTNativeAd tTNativeAd) {
        TTImage tTImage;
        if (tTNativeAd != null) {
            if (f15984o.getImageList() != null && !f15984o.getImageList().isEmpty() && (tTImage = f15984o.getImageList().get(0)) != null && tTImage.isValid()) {
                C4959e.m33434c().m33439a(tTImage.getImageUrl(), this.f15985a);
            }
            if (f15984o.getIcon() != null && f15984o.getIcon().isValid() && f15984o.getIcon().getImageUrl() != null) {
                C4959e.m33434c().m33439a(f15984o.getIcon().getImageUrl(), this.f15987c);
            }
            this.f15988d.setText(f15984o.getTitle());
            this.f15989e.setText(f15984o.getDescription());
            this.f15990f.setText(f15984o.getButtonText());
            m35748c();
            m35749b(tTNativeAd);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0131  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m35750b() {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.adapter.PangleAdInterstitialActivity.m35750b():void");
    }

    /* renamed from: b */
    private void m35749b(TTNativeAd tTNativeAd) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f15985a);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.f15990f);
        tTNativeAd.registerViewForInteraction(this.f15995k, arrayList, arrayList2, this.f15986b, new TTNativeAd.AdInteractionListener() { // from class: com.bytedance.sdk.openadsdk.adapter.PangleAdInterstitialActivity.2
            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public void onAdClicked(View view, TTNativeAd tTNativeAd2) {
                C5478q.m32112b("PangleAdInterstitial", "PangleAdInterstitialActivity-onAdClicked....");
                if (PangleAdInterstitialActivity.f15983n != null) {
                    PangleAdInterstitialActivity.f15983n.onInterstitialClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public void onAdCreativeClick(View view, TTNativeAd tTNativeAd2) {
                C5478q.m32112b("PangleAdInterstitial", "PangleAdInterstitialActivity-onAdClicked....");
                if (PangleAdInterstitialActivity.f15983n != null) {
                    PangleAdInterstitialActivity.f15983n.onInterstitialClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public void onAdShow(TTNativeAd tTNativeAd2) {
                C5478q.m32112b("PangleAdInterstitial", "PangleAdInterstitialActivity-onAdShow....");
                if (PangleAdInterstitialActivity.f15983n != null) {
                    PangleAdInterstitialActivity.f15983n.onInterstitialShown();
                }
            }
        });
    }

    /* renamed from: c */
    private void m35748c() {
        this.f15986b.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.adapter.PangleAdInterstitialActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PangleAdInterstitialActivity.this.finish();
                if (PangleAdInterstitialActivity.f15983n != null) {
                    PangleAdInterstitialActivity.f15983n.onInterstitialDismissed();
                }
            }
        });
    }

    /* renamed from: d */
    private void m35747d() {
        TTRatingBar tTRatingBar = (TTRatingBar) findViewById(C5486x.m32066e(this, "tt_pangle_ad_score"));
        this.f15991g = tTRatingBar;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.f15991g.setStarFillNum(4);
            this.f15991g.setStarImageWidth(C5443ag.m32217c(getApplicationContext(), 15.0f));
            this.f15991g.setStarImageHeight(C5443ag.m32217c(getApplicationContext(), 14.0f));
            this.f15991g.setStarImagePadding(C5443ag.m32217c(getApplicationContext(), 4.0f));
            this.f15991g.m34062a();
        }
        this.f15985a = (ImageView) findViewById(C5486x.m32066e(this, "tt_pangle_ad_main_img"));
        this.f15986b = (RelativeLayout) findViewById(C5486x.m32066e(this, "tt_pangle_ad_close_layout"));
        this.f15987c = (NiceImageView) findViewById(C5486x.m32066e(this, "tt_pangle_ad_icon"));
        this.f15988d = (TextView) findViewById(C5486x.m32066e(this, "tt_pangle_ad_title"));
        this.f15989e = (TextView) findViewById(C5486x.m32066e(this, "tt_pangle_ad_content"));
        this.f15990f = (Button) findViewById(C5486x.m32066e(this, "tt_pangle_ad_btn"));
        this.f15993i = (ViewGroup) findViewById(C5486x.m32066e(this, "tt_pangle_ad_content_layout"));
        this.f15994j = (RelativeLayout) findViewById(C5486x.m32066e(this, "tt_pangle_ad_image_layout"));
        this.f15995k = (ViewGroup) findViewById(C5486x.m32066e(this, "tt_pangle_ad_root"));
    }

    public static void showAd(Context context, TTNativeAd tTNativeAd, int i, CustomEventInterstitialListener customEventInterstitialListener) {
        f15984o = tTNativeAd;
        f15983n = customEventInterstitialListener;
        Intent intent = new Intent(context, PangleAdInterstitialActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(INTENT_TYPE, i);
        C5450c.m32194a(context, intent, new C5450c.AbstractC5451a() { // from class: com.bytedance.sdk.openadsdk.adapter.PangleAdInterstitialActivity.1
            @Override // com.bytedance.sdk.openadsdk.utils.C5450c.AbstractC5451a
            /* renamed from: a */
            public final void mo32193a() {
            }

            @Override // com.bytedance.sdk.openadsdk.utils.C5450c.AbstractC5451a
            /* renamed from: a */
            public final void mo32192a(Throwable th) {
                if (PangleAdInterstitialActivity.f15983n != null) {
                    PangleAdInterstitialActivity.f15983n.onInterstitialShowFail();
                }
            }
        });
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f15992h = getIntent();
        try {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
            getWindow().addFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        f15984o = null;
        f15983n = null;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f15996l = C5443ag.m32218c(this);
        this.f15997m = C5443ag.m32215d(this);
        if (this.f15992h.getIntExtra(INTENT_TYPE, 0) == 2) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(0);
        }
        if (this.f15992h != null) {
            m35750b();
        }
    }
}
