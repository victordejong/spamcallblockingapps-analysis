package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4627i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.widget.RatioFrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.RatioImageView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.explorestack.iab.vast.VastError;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView.class */
public class BannerExpressBackupView extends BackupView {

    /* renamed from: k */
    private static C4627i[] f16358k = {new C4627i(1, 6.4f, 320, 50), new C4627i(4, 1.2f, VastError.ERROR_CODE_GENERAL_WRAPPER, 250)};

    /* renamed from: l */
    private View f16359l;

    /* renamed from: m */
    private NativeExpressView f16360m;

    /* renamed from: n */
    private AbstractC3234c f16361n;

    /* renamed from: o */
    private int f16362o = 1;

    public BannerExpressBackupView(Context context) {
        super(context);
        this.f16836a = context;
    }

    /* renamed from: a */
    private C4627i m35466a(int i, int i2) {
        float f = i / i2;
        try {
            C4627i[] c4627iArr = f16358k;
            C4627i c4627i = c4627iArr[0];
            float f2 = Float.MAX_VALUE;
            int length = c4627iArr.length;
            int i3 = 0;
            while (i3 < length) {
                C4627i c4627i2 = c4627iArr[i3];
                float abs = Math.abs(c4627i2.f16936b - f);
                float f3 = f2;
                if (abs <= f2) {
                    c4627i = c4627i2;
                    f3 = abs;
                }
                i3++;
                f2 = f3;
            }
            return c4627i;
        } catch (Throwable th) {
            return f16358k[0];
        }
    }

    /* renamed from: a */
    private void m35465a(ImageView imageView) {
        C4959e.m33434c().m33439a(this.f16837b.m35239H().get(0).m35254a(), imageView);
    }

    /* renamed from: b */
    private void m35462b() {
        C4627i m35466a = m35466a(this.f16360m.getExpectExpressWidth(), this.f16360m.getExpectExpressHeight());
        if (this.f16360m.getExpectExpressWidth() <= 0 || this.f16360m.getExpectExpressHeight() <= 0) {
            this.f16841f = C5443ag.m32218c(this.f16836a);
            this.f16842g = Float.valueOf(this.f16841f / m35466a.f16936b).intValue();
        } else if (this.f16360m.getExpectExpressWidth() > this.f16360m.getExpectExpressHeight()) {
            this.f16841f = C5443ag.m32217c(this.f16836a, this.f16360m.getExpectExpressHeight() * m35466a.f16936b);
            this.f16842g = C5443ag.m32217c(this.f16836a, this.f16360m.getExpectExpressHeight());
        } else {
            this.f16841f = C5443ag.m32217c(this.f16836a, this.f16360m.getExpectExpressWidth());
            this.f16842g = C5443ag.m32217c(this.f16836a, this.f16360m.getExpectExpressWidth() / m35466a.f16936b);
        }
        if (this.f16841f > 0 && this.f16841f > C5443ag.m32218c(this.f16836a)) {
            float m32218c = C5443ag.m32218c(this.f16836a) / this.f16841f;
            this.f16841f = C5443ag.m32218c(this.f16836a);
            this.f16842g = Float.valueOf(this.f16842g * m32218c).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new ViewGroup.LayoutParams(this.f16841f, this.f16842g);
        }
        layoutParams2.width = this.f16841f;
        layoutParams2.height = this.f16842g;
        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams2).gravity = 17;
        }
        setLayoutParams(layoutParams2);
        if (m35466a.f16935a == 1) {
            m35460c();
        } else {
            m35458d();
        }
    }

    /* renamed from: c */
    private void m35460c() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_banner_layout1"), (ViewGroup) this, true);
        this.f16359l = inflate;
        View findViewById = inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
        ImageView imageView = (ImageView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_icon"));
        TextView textView = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
        TextView textView2 = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_score"));
        TTRatingBar tTRatingBar = (TTRatingBar) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_score_bar"));
        TextView textView3 = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
        View findViewById2 = this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_backup_logoLayout"));
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebsiteActivity.m35763a(BannerExpressBackupView.this.f16836a, BannerExpressBackupView.this.f16837b, BannerExpressBackupView.this.f16840e);
                }
            });
        }
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerExpressBackupView.this.m34800a();
            }
        });
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = this.f16842g;
            layoutParams.height = this.f16842g;
        }
        C4959e.m33434c().m33439a(this.f16837b.m35242E().m35254a(), imageView);
        textView.setText(getTitle());
        if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
            textView3.setText(this.f16837b.m35232O());
        } else {
            textView3.setVisibility(8);
        }
        int m35329d = this.f16837b.m35230Q() != null ? this.f16837b.m35230Q().m35329d() : 4;
        textView2.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(m35329d)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(m35329d);
        tTRatingBar.setStarImageWidth(C5443ag.m32217c(this.f16836a, 15.0f));
        tTRatingBar.setStarImageHeight(C5443ag.m32217c(this.f16836a, 14.0f));
        tTRatingBar.setStarImagePadding(C5443ag.m32217c(this.f16836a, 4.0f));
        tTRatingBar.m34062a();
        m34797a((View) this, true);
        m34797a((View) textView3, true);
    }

    /* renamed from: d */
    private void m35458d() {
        if (this.f16837b != null) {
            int m35227T = this.f16837b.m35227T();
            if (this.f16837b.m35245B() == null) {
                View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_banner_layout4"), (ViewGroup) this, true);
                this.f16359l = inflate;
                View findViewById = inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
                RatioImageView ratioImageView = (RatioImageView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "ratio_image_view"));
                ImageView imageView = (ImageView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_icon"));
                TextView textView = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
                TextView textView2 = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
                TextView textView3 = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_name"));
                TextView textView4 = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
                FrameLayout frameLayout = (FrameLayout) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_image_layout"));
                View findViewById2 = this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_backup_logoLayout"));
                if (findViewById2 != null) {
                    findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            TTWebsiteActivity.m35763a(BannerExpressBackupView.this.f16836a, BannerExpressBackupView.this.f16837b, BannerExpressBackupView.this.f16840e);
                        }
                    });
                }
                if (m35227T == 33) {
                    ratioImageView.setRatio(1.0f);
                } else {
                    ((LinearLayout.LayoutParams) frameLayout.getLayoutParams()).weight = 2.5f;
                    ratioImageView.setRatio(1.91f);
                }
                findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BannerExpressBackupView.this.m34800a();
                    }
                });
                int m32232a = (int) C5443ag.m32232a(this.f16836a, 15.0f);
                C5443ag.m32227a(findViewById, m32232a, m32232a, m32232a, m32232a);
                m35465a((ImageView) ratioImageView);
                C4959e.m33434c().m33439a(this.f16837b.m35242E().m35254a(), imageView);
                textView3.setText(getNameOrSource());
                textView.setText(getNameOrSource());
                textView2.setText(getDescription());
                if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
                    textView4.setText(this.f16837b.m35232O());
                } else {
                    textView4.setVisibility(8);
                }
                m34797a((View) this, true);
                m34797a((View) textView4, true);
                return;
            }
            View inflate2 = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_banner_layout4_video"), (ViewGroup) this, true);
            this.f16359l = inflate2;
            View findViewById3 = inflate2.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
            TextView textView5 = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
            TextView textView6 = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
            TextView textView7 = (TextView) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
            RatioFrameLayout ratioFrameLayout = (RatioFrameLayout) this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "ratio_frame_layout"));
            View findViewById4 = this.f16359l.findViewById(C5486x.m32066e(this.f16836a, "tt_backup_logoLayout"));
            if (findViewById4 != null) {
                findViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        TTWebsiteActivity.m35763a(BannerExpressBackupView.this.f16836a, BannerExpressBackupView.this.f16837b, BannerExpressBackupView.this.f16840e);
                    }
                });
            }
            if (m35227T == 15) {
                ratioFrameLayout.setRatio(0.5625f);
            } else if (m35227T == 5) {
                ratioFrameLayout.setRatio(1.7777778f);
            } else {
                ratioFrameLayout.setRatio(1.0f);
            }
            ratioFrameLayout.removeAllViews();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            View videoView = getVideoView();
            if (videoView != null) {
                ratioFrameLayout.addView(videoView, layoutParams);
            }
            textView5.setText(getNameOrSource());
            textView6.setText(getDescription());
            if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
                textView7.setText(this.f16837b.m35232O());
            } else {
                textView7.setVisibility(8);
            }
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BannerExpressBackupView.this.m34800a();
                }
            });
            int m32232a2 = (int) C5443ag.m32232a(this.f16836a, 15.0f);
            C5443ag.m32227a(findViewById3, m32232a2, m32232a2, m32232a2, m32232a2);
            m34797a((View) this, true);
            m34797a((View) textView7, true);
            m34798a(ratioFrameLayout);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    /* renamed from: a */
    public void mo34718a(int i, C4553g c4553g) {
        NativeExpressView nativeExpressView = this.f16360m;
        if (nativeExpressView != null) {
            nativeExpressView.mo34705a(i, c4553g);
        }
    }

    /* renamed from: a */
    public void m35463a(C4557i c4557i, NativeExpressView nativeExpressView, AbstractC3234c abstractC3234c) {
        setBackgroundColor(-1);
        this.f16837b = c4557i;
        this.f16360m = nativeExpressView;
        this.f16361n = abstractC3234c;
        this.f16840e = "banner_ad";
        this.f16360m.addView(this, new ViewGroup.LayoutParams(-2, -2));
        m35462b();
    }
}
