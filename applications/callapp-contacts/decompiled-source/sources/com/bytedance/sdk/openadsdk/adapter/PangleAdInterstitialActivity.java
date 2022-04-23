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
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.c;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.ArrayList;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/adapter/PangleAdInterstitialActivity.class */
public class PangleAdInterstitialActivity extends Activity {
    public static final String INTENT_TYPE = "intent_type";
    public static final int INTENT_TYPE_IMAGE_2_3 = 2;
    public static final int INTENT_TYPE_IMAGE_3_2 = 1;
    private static CustomEventInterstitialListener n;
    private static TTNativeAd o;

    /* renamed from: a  reason: collision with root package name */
    private ImageView f8534a;

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f8535b;

    /* renamed from: c  reason: collision with root package name */
    private NiceImageView f8536c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f8537d;
    private TextView e;
    private Button f;
    private TTRatingBar g;
    private Intent h;
    private ViewGroup i;
    private RelativeLayout j;
    private ViewGroup k;
    private float l;
    private float m;

    private void a(int i) {
        ViewGroup.LayoutParams layoutParams = this.j.getLayoutParams();
        layoutParams.height = i;
        this.j.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this.i.getLayoutParams();
        layoutParams2.height = (int) (this.m - i);
        this.i.setLayoutParams(layoutParams2);
    }

    private void a(TTNativeAd tTNativeAd) {
        TTImage tTImage;
        if (tTNativeAd != null) {
            if (o.getImageList() != null && !o.getImageList().isEmpty() && (tTImage = o.getImageList().get(0)) != null && tTImage.isValid()) {
                e.c().a(tTImage.getImageUrl(), this.f8534a);
            }
            if (!(o.getIcon() == null || !o.getIcon().isValid() || o.getIcon().getImageUrl() == null)) {
                e.c().a(o.getIcon().getImageUrl(), this.f8536c);
            }
            this.f8537d.setText(o.getTitle());
            this.e.setText(o.getDescription());
            this.f.setText(o.getButtonText());
            c();
            b(tTNativeAd);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.adapter.PangleAdInterstitialActivity.b():void");
    }

    private void b(TTNativeAd tTNativeAd) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f8534a);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.f);
        tTNativeAd.registerViewForInteraction(this.k, arrayList, arrayList2, this.f8535b, new TTNativeAd.AdInteractionListener() { // from class: com.bytedance.sdk.openadsdk.adapter.PangleAdInterstitialActivity.2
            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public void onAdClicked(View view, TTNativeAd tTNativeAd2) {
                q.b("PangleAdInterstitial", "PangleAdInterstitialActivity-onAdClicked....");
                if (PangleAdInterstitialActivity.n != null) {
                    PangleAdInterstitialActivity.n.onInterstitialClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public void onAdCreativeClick(View view, TTNativeAd tTNativeAd2) {
                q.b("PangleAdInterstitial", "PangleAdInterstitialActivity-onAdClicked....");
                if (PangleAdInterstitialActivity.n != null) {
                    PangleAdInterstitialActivity.n.onInterstitialClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public void onAdShow(TTNativeAd tTNativeAd2) {
                q.b("PangleAdInterstitial", "PangleAdInterstitialActivity-onAdShow....");
                if (PangleAdInterstitialActivity.n != null) {
                    PangleAdInterstitialActivity.n.onInterstitialShown();
                }
            }
        });
    }

    private void c() {
        this.f8535b.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.adapter.PangleAdInterstitialActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PangleAdInterstitialActivity.this.finish();
                if (PangleAdInterstitialActivity.n != null) {
                    PangleAdInterstitialActivity.n.onInterstitialDismissed();
                }
            }
        });
    }

    private void d() {
        TTRatingBar tTRatingBar = (TTRatingBar) findViewById(x.e(this, "tt_pangle_ad_score"));
        this.g = tTRatingBar;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.g.setStarFillNum(4);
            this.g.setStarImageWidth(ag.c(getApplicationContext(), 15.0f));
            this.g.setStarImageHeight(ag.c(getApplicationContext(), 14.0f));
            this.g.setStarImagePadding(ag.c(getApplicationContext(), 4.0f));
            this.g.a();
        }
        this.f8534a = (ImageView) findViewById(x.e(this, "tt_pangle_ad_main_img"));
        this.f8535b = (RelativeLayout) findViewById(x.e(this, "tt_pangle_ad_close_layout"));
        this.f8536c = (NiceImageView) findViewById(x.e(this, "tt_pangle_ad_icon"));
        this.f8537d = (TextView) findViewById(x.e(this, "tt_pangle_ad_title"));
        this.e = (TextView) findViewById(x.e(this, "tt_pangle_ad_content"));
        this.f = (Button) findViewById(x.e(this, "tt_pangle_ad_btn"));
        this.i = (ViewGroup) findViewById(x.e(this, "tt_pangle_ad_content_layout"));
        this.j = (RelativeLayout) findViewById(x.e(this, "tt_pangle_ad_image_layout"));
        this.k = (ViewGroup) findViewById(x.e(this, "tt_pangle_ad_root"));
    }

    public static void showAd(Context context, TTNativeAd tTNativeAd, int i, CustomEventInterstitialListener customEventInterstitialListener) {
        o = tTNativeAd;
        n = customEventInterstitialListener;
        Intent intent = new Intent(context, PangleAdInterstitialActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(INTENT_TYPE, i);
        c.a(context, intent, new c.a() { // from class: com.bytedance.sdk.openadsdk.adapter.PangleAdInterstitialActivity.1
            @Override // com.bytedance.sdk.openadsdk.utils.c.a
            public final void a() {
            }

            @Override // com.bytedance.sdk.openadsdk.utils.c.a
            public final void a(Throwable th) {
                if (PangleAdInterstitialActivity.n != null) {
                    PangleAdInterstitialActivity.n.onInterstitialShowFail();
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
        this.h = getIntent();
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
        o = null;
        n = null;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.l = ag.c(this);
        this.m = ag.d(this);
        if (this.h.getIntExtra(INTENT_TYPE, 0) == 2) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(0);
        }
        if (this.h != null) {
            b();
        }
    }
}
