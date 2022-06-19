package com.bytedance.sdk.openadsdk.core.p153d;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4627i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.p154e.C4546b;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.widget.RatioFrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.explorestack.iab.vast.VastError;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bytedance.sdk.openadsdk.core.d.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/d/a.class */
public class C4523a extends BackupView {

    /* renamed from: k */
    private static C4627i[] f16414k = {new C4627i(1, 1.0f, VastError.ERROR_CODE_GENERAL_WRAPPER, VastError.ERROR_CODE_GENERAL_WRAPPER), new C4627i(2, 0.6666667f, VastError.ERROR_CODE_GENERAL_WRAPPER, 450), new C4627i(3, 1.5f, VastError.ERROR_CODE_GENERAL_WRAPPER, 200)};

    /* renamed from: l */
    private View f16415l;

    /* renamed from: m */
    private NativeExpressView f16416m;

    /* renamed from: n */
    private AbstractC3234c f16417n;

    /* renamed from: o */
    private int f16418o = 1;

    /* renamed from: p */
    private Dialog f16419p;

    public C4523a(Context context) {
        super(context);
        this.f16836a = context;
    }

    /* renamed from: a */
    private C4627i m35392a(int i, int i2) {
        float f = i / i2;
        try {
            C4627i[] c4627iArr = f16414k;
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
            return f16414k[0];
        }
    }

    /* renamed from: a */
    private void m35390a(ImageView imageView) {
        C4959e.m33434c().m33439a(this.f16837b.m35239H().get(0).m35254a(), imageView);
    }

    /* renamed from: b */
    private void m35387b() {
        C4627i m35392a = m35392a(this.f16416m.getExpectExpressWidth(), this.f16416m.getExpectExpressHeight());
        if (this.f16416m.getExpectExpressWidth() <= 0 || this.f16416m.getExpectExpressHeight() <= 0) {
            this.f16841f = C5443ag.m32217c(this.f16836a, m35392a.f16937c);
            this.f16842g = C5443ag.m32217c(this.f16836a, m35392a.f16938d);
        } else if (this.f16416m.getExpectExpressWidth() > this.f16416m.getExpectExpressHeight()) {
            this.f16841f = C5443ag.m32217c(this.f16836a, this.f16416m.getExpectExpressHeight() * m35392a.f16936b);
            this.f16842g = C5443ag.m32217c(this.f16836a, this.f16416m.getExpectExpressHeight());
        } else {
            this.f16841f = C5443ag.m32217c(this.f16836a, this.f16416m.getExpectExpressWidth());
            this.f16842g = C5443ag.m32217c(this.f16836a, this.f16416m.getExpectExpressWidth() / m35392a.f16936b);
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
        setLayoutParams(layoutParams2);
        if (m35392a.f16935a != 1) {
            if (m35392a.f16935a == 2) {
                m35382d();
                return;
            } else if (m35392a.f16935a == 3) {
                m35380e();
                return;
            }
        }
        m35384c();
    }

    /* renamed from: b */
    private void m35386b(View view) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C4523a.this.f16419p != null) {
                    C4523a.this.f16419p.dismiss();
                }
            }
        });
    }

    /* renamed from: c */
    private void m35384c() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_insert_layout1"), (ViewGroup) this, true);
        this.f16415l = inflate;
        ImageView imageView = (ImageView) inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_img"));
        View findViewById = this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
        ImageView imageView2 = (ImageView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_icon"));
        TextView textView = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
        TextView textView2 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
        TextView textView3 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
        TextView textView4 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_dislike"));
        View findViewById2 = this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_backup_logoLayout"));
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebsiteActivity.m35763a(C4523a.this.f16836a, C4523a.this.f16837b, C4523a.this.f16840e);
                }
            });
        }
        int m32232a = (int) C5443ag.m32232a(this.f16836a, 15.0f);
        C5443ag.m32227a(findViewById, m32232a, m32232a, m32232a, m32232a);
        m35386b(findViewById);
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4523a.this.m34800a();
            }
        });
        if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
            textView3.setText(this.f16837b.m35232O());
        }
        m35390a(imageView);
        C4959e.m33434c().m33439a(this.f16837b.m35242E().m35254a(), imageView2);
        textView.setText(getTitle());
        textView2.setText(getDescription());
        m34797a((View) this, true);
        m34797a((View) textView3, true);
        m34797a((View) textView4, true);
    }

    /* renamed from: d */
    private void m35382d() {
        RatioFrameLayout ratioFrameLayout;
        if (this.f16837b != null) {
            int m35227T = this.f16837b.m35227T();
            View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_insert_layout2_3"), (ViewGroup) this, true);
            this.f16415l = inflate;
            TTRatingBar tTRatingBar = (TTRatingBar) inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_score_bar"));
            RatioFrameLayout ratioFrameLayout2 = (RatioFrameLayout) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "ratio_frame_layout"));
            View findViewById = this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
            ImageView imageView = (ImageView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_icon"));
            TextView textView = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
            TextView textView2 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
            TextView textView3 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
            TextView textView4 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_dislike"));
            View findViewById2 = this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_backup_logoLayout"));
            if (findViewById2 != null) {
                findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        TTWebsiteActivity.m35763a(C4523a.this.f16836a, C4523a.this.f16837b, C4523a.this.f16840e);
                    }
                });
            }
            ratioFrameLayout2.removeAllViews();
            if (this.f16837b.m35245B() == null) {
                if (m35227T == 3) {
                    ratioFrameLayout2.setRatio(1.91f);
                    tTRatingBar.setVisibility(0);
                } else {
                    ratioFrameLayout2.setRatio(1.0f);
                    tTRatingBar.setVisibility(8);
                    textView3.setVisibility(8);
                }
                ImageView imageView2 = new ImageView(ratioFrameLayout2.getContext());
                imageView2.setVisibility(0);
                imageView2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                ratioFrameLayout2.addView(imageView2);
                m35390a(imageView2);
            } else {
                if (m35227T == 5) {
                    ratioFrameLayout2.setRatio(1.7777778f);
                    tTRatingBar.setVisibility(0);
                    ratioFrameLayout = ratioFrameLayout2;
                } else if (m35227T == 50) {
                    ratioFrameLayout2.setRatio(1.0f);
                    tTRatingBar.setVisibility(8);
                    textView3.setVisibility(8);
                    ratioFrameLayout = ratioFrameLayout2;
                } else {
                    ratioFrameLayout = ratioFrameLayout2;
                    if (m35227T == 15) {
                        ratioFrameLayout2.setRatio(1.7777778f);
                        tTRatingBar.setVisibility(0);
                        ratioFrameLayout = new RatioFrameLayout(this.f16415l.getContext());
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
                        ratioFrameLayout.setRatio(0.5625f);
                        ratioFrameLayout2.addView(ratioFrameLayout, layoutParams);
                    }
                }
                View videoView = getVideoView();
                ratioFrameLayout2 = ratioFrameLayout;
                if (videoView != null) {
                    ratioFrameLayout.addView(videoView, new FrameLayout.LayoutParams(-1, -1));
                    ratioFrameLayout2 = ratioFrameLayout;
                }
            }
            int m32232a = (int) C5443ag.m32232a(this.f16836a, 15.0f);
            C5443ag.m32227a(findViewById, m32232a, m32232a, m32232a, m32232a);
            m35386b(findViewById);
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    C4523a.this.m34800a();
                }
            });
            if (TextUtils.isEmpty(this.f16837b.m35232O()) || m35227T == 33) {
                textView3.setVisibility(8);
            } else {
                textView3.setText(this.f16837b.m35232O());
                textView3.setVisibility(0);
            }
            C4546b m35230Q = this.f16837b.m35230Q();
            if (m35230Q == null || m35230Q.m35329d() <= 0) {
                tTRatingBar.setVisibility(8);
            } else {
                tTRatingBar.setVisibility(0);
                int m35329d = m35230Q.m35329d();
                tTRatingBar.setStarEmptyNum(1);
                tTRatingBar.setStarFillNum(m35329d);
                tTRatingBar.setStarImageWidth(C5443ag.m32217c(this.f16836a, 15.0f));
                tTRatingBar.setStarImageHeight(C5443ag.m32217c(this.f16836a, 14.0f));
                tTRatingBar.setStarImagePadding(C5443ag.m32217c(this.f16836a, 4.0f));
                tTRatingBar.m34062a();
            }
            C4959e.m33434c().m33439a(this.f16837b.m35242E().m35254a(), imageView);
            textView.setText(getTitle());
            textView2.setText(getDescription());
            m34797a((View) this, true);
            m34797a((View) textView3, true);
            m34797a((View) textView4, true);
            m34798a(ratioFrameLayout2);
        }
    }

    /* renamed from: e */
    private void m35380e() {
        RatioFrameLayout ratioFrameLayout;
        if (this.f16837b != null) {
            int m35227T = this.f16837b.m35227T();
            if (this.f16837b.m35245B() == null) {
                if (m35227T == 3) {
                    this.f16415l = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_insert_layout3_2_image_191_1"), (ViewGroup) this, true);
                } else if (m35227T == 33) {
                    this.f16415l = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_insert_layout3_2_image_1_1"), (ViewGroup) this, true);
                }
                View view = this.f16415l;
                if (view == null) {
                    return;
                }
                TTRatingBar tTRatingBar = (TTRatingBar) view.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_score_bar"));
                RatioFrameLayout ratioFrameLayout2 = (RatioFrameLayout) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "ratio_frame_layout"));
                if (m35227T == 3) {
                    ratioFrameLayout2.setRatio(1.91f);
                } else if (m35227T == 33) {
                    ratioFrameLayout2.setRatio(1.0f);
                }
                View findViewById = this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
                ImageView imageView = (ImageView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_icon"));
                TextView textView = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
                TextView textView2 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
                TextView textView3 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
                TextView textView4 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_dislike"));
                TextView textView5 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_score_val"));
                View findViewById2 = this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_backup_logoLayout"));
                if (findViewById2 != null) {
                    findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.6
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            TTWebsiteActivity.m35763a(C4523a.this.f16836a, C4523a.this.f16837b, C4523a.this.f16840e);
                        }
                    });
                }
                int m32232a = (int) C5443ag.m32232a(this.f16836a, 15.0f);
                C5443ag.m32227a(findViewById, m32232a, m32232a, m32232a, m32232a);
                m35386b(findViewById);
                textView4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        C4523a.this.m34800a();
                    }
                });
                if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
                    textView3.setText(this.f16837b.m35232O());
                    textView3.setVisibility(0);
                } else {
                    textView3.setVisibility(8);
                }
                if (tTRatingBar != null) {
                    C4546b m35230Q = this.f16837b.m35230Q();
                    if (m35230Q == null || m35230Q.m35329d() <= 0) {
                        tTRatingBar.setVisibility(8);
                    } else {
                        tTRatingBar.setVisibility(0);
                        int m35329d = m35230Q.m35329d();
                        tTRatingBar.setStarEmptyNum(1);
                        tTRatingBar.setStarFillNum(m35329d);
                        tTRatingBar.setStarImageWidth(C5443ag.m32217c(this.f16836a, 15.0f));
                        tTRatingBar.setStarImageHeight(C5443ag.m32217c(this.f16836a, 14.0f));
                        tTRatingBar.setStarImagePadding(C5443ag.m32217c(this.f16836a, 4.0f));
                        tTRatingBar.m34062a();
                        if (textView5 != null) {
                            textView5.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(m35329d)));
                        }
                    }
                }
                ImageView imageView2 = new ImageView(this.f16415l.getContext());
                ratioFrameLayout2.addView(imageView2, new FrameLayout.LayoutParams(-1, -1));
                m35390a(imageView2);
                C4959e.m33434c().m33439a(this.f16837b.m35242E().m35254a(), imageView);
                if (textView != null) {
                    textView.setText(getTitle());
                }
                textView2.setText(getDescription());
                m34797a((View) this, true);
                m34797a((View) textView3, true);
                m34797a((View) textView4, true);
                return;
            }
            View videoView = getVideoView();
            if (m35227T == 5) {
                View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_insert_layout3_2_image_191_1"), (ViewGroup) this, true);
                this.f16415l = inflate;
                ratioFrameLayout = (RatioFrameLayout) inflate.findViewById(C5486x.m32066e(this.f16836a, "ratio_frame_layout"));
                ratioFrameLayout.setRatio(1.7777778f);
            } else if (m35227T == 50) {
                View inflate2 = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_insert_layout3_2_image_1_1"), (ViewGroup) this, true);
                this.f16415l = inflate2;
                ratioFrameLayout = (RatioFrameLayout) inflate2.findViewById(C5486x.m32066e(this.f16836a, "ratio_frame_layout"));
                ratioFrameLayout.setRatio(1.0f);
            } else if (m35227T == 15) {
                View inflate3 = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_insert_layout3_2_image_191_1"), (ViewGroup) this, true);
                this.f16415l = inflate3;
                RatioFrameLayout ratioFrameLayout3 = (RatioFrameLayout) inflate3.findViewById(C5486x.m32066e(this.f16836a, "ratio_frame_layout"));
                ratioFrameLayout3.setRatio(1.7777778f);
                ratioFrameLayout = new RatioFrameLayout(this.f16415l.getContext());
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
                layoutParams.gravity = 17;
                ratioFrameLayout.setRatio(0.5625f);
                ratioFrameLayout3.addView(ratioFrameLayout, layoutParams);
            } else {
                ratioFrameLayout = null;
            }
            if (this.f16415l == null || ratioFrameLayout == null) {
                return;
            }
            if (videoView != null) {
                ratioFrameLayout.addView(videoView, new FrameLayout.LayoutParams(-1, -1));
            }
            TTRatingBar tTRatingBar2 = (TTRatingBar) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_score_bar"));
            View findViewById3 = this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
            ImageView imageView3 = (ImageView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_icon"));
            TextView textView6 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
            TextView textView7 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
            TextView textView8 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
            TextView textView9 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_dislike"));
            TextView textView10 = (TextView) this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_score_val"));
            View findViewById4 = this.f16415l.findViewById(C5486x.m32066e(this.f16836a, "tt_backup_logoLayout"));
            if (findViewById4 != null) {
                findViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.8
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        TTWebsiteActivity.m35763a(C4523a.this.f16836a, C4523a.this.f16837b, C4523a.this.f16840e);
                    }
                });
            }
            int m32232a2 = (int) C5443ag.m32232a(this.f16836a, 15.0f);
            C5443ag.m32227a(findViewById3, m32232a2, m32232a2, m32232a2, m32232a2);
            m35386b(findViewById3);
            textView9.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    C4523a.this.m34800a();
                }
            });
            if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
                textView8.setText(this.f16837b.m35232O());
                textView8.setVisibility(0);
            } else {
                textView8.setVisibility(8);
            }
            if (tTRatingBar2 != null) {
                C4546b m35230Q2 = this.f16837b.m35230Q();
                if (m35230Q2 == null || m35230Q2.m35329d() <= 0) {
                    tTRatingBar2.setVisibility(8);
                } else {
                    tTRatingBar2.setVisibility(0);
                    int m35329d2 = m35230Q2.m35329d();
                    tTRatingBar2.setStarEmptyNum(1);
                    tTRatingBar2.setStarFillNum(m35329d2);
                    tTRatingBar2.setStarImageWidth(C5443ag.m32217c(this.f16836a, 15.0f));
                    tTRatingBar2.setStarImageHeight(C5443ag.m32217c(this.f16836a, 14.0f));
                    tTRatingBar2.setStarImagePadding(C5443ag.m32217c(this.f16836a, 4.0f));
                    tTRatingBar2.m34062a();
                    if (textView10 != null) {
                        textView10.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(m35329d2)));
                    }
                }
            }
            C4959e.m33434c().m33439a(this.f16837b.m35242E().m35254a(), imageView3);
            if (textView6 != null) {
                textView6.setText(getTitle());
            }
            textView7.setText(getDescription());
            m34797a((View) this, true);
            m34797a((View) textView8, true);
            m34797a((View) textView9, true);
            m34798a(ratioFrameLayout);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    /* renamed from: a */
    public void mo34718a(int i, C4553g c4553g) {
        NativeExpressView nativeExpressView = this.f16416m;
        if (nativeExpressView != null) {
            nativeExpressView.mo34705a(i, c4553g);
        }
    }

    /* renamed from: a */
    public void m35391a(Dialog dialog) {
        this.f16419p = dialog;
    }

    /* renamed from: a */
    public void m35388a(C4557i c4557i, NativeExpressView nativeExpressView, AbstractC3234c abstractC3234c) {
        setBackgroundColor(-1);
        this.f16837b = c4557i;
        this.f16416m = nativeExpressView;
        this.f16417n = abstractC3234c;
        this.f16840e = "interaction";
        m34799a(this.f16843h);
        this.f16416m.addView(this, new ViewGroup.LayoutParams(-2, -2));
        m35387b();
    }
}
