package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.explorestack.iab.vast.VastError;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/h.class */
public class C4620h extends BackupView {

    /* renamed from: k */
    private static C4627i[] f16925k = {new C4627i(2, 3.0241935f, 375, 124), new C4627i(3, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER), new C4627i(4, 1.4044944f, 375, 267), new C4627i(16, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER), new C4627i(5, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER), new C4627i(15, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER), new C4627i(50, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER)};

    /* renamed from: l */
    private View f16926l;

    /* renamed from: m */
    private NativeExpressView f16927m;

    /* renamed from: n */
    private AbstractC3234c f16928n;

    public C4620h(Context context) {
        super(context);
        this.f16836a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00b5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m34717a(android.widget.ImageView r5) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.nativeexpress.C4620h.m34717a(android.widget.ImageView):void");
    }

    /* renamed from: b */
    private C4627i m34714b(int i) {
        C4627i c4627i;
        C4627i[] c4627iArr = f16925k;
        int i2 = 0;
        C4627i c4627i2 = c4627iArr[0];
        try {
            int length = c4627iArr.length;
            while (true) {
                c4627i = c4627i2;
                if (i2 >= length) {
                    break;
                }
                c4627i = c4627iArr[i2];
                if (c4627i.f16935a == i) {
                    break;
                }
                i2++;
            }
        } catch (Throwable th) {
            c4627i = c4627i2;
        }
        return c4627i;
    }

    /* renamed from: b */
    private void m34715b() {
        C4627i m34714b = m34714b(this.f16837b.m35227T());
        this.f16841f = C5443ag.m32217c(this.f16836a, this.f16927m.getExpectExpressWidth());
        this.f16842g = C5443ag.m32217c(this.f16836a, this.f16927m.getExpectExpressHeight());
        if (this.f16841f <= 0) {
            this.f16841f = C5443ag.m32218c(this.f16836a);
        }
        if (this.f16842g <= 0) {
            this.f16842g = Float.valueOf(this.f16841f / m34714b.f16936b).intValue();
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
        if (C5438af.m32284c(this.f16837b.m35228S()) == 9) {
            this.f16840e = "draw_ad";
            m34708g();
            return;
        }
        this.f16840e = "embeded_ad";
        int m35227T = this.f16837b.m35227T();
        if (m35227T == 2) {
            m34711d();
        } else if (m35227T == 3) {
            m34710e();
        } else if (m35227T == 5) {
            m34707h();
        } else if (m35227T == 50) {
            m34712c();
        } else if (m35227T == 15) {
            m34709f();
        } else if (m35227T != 16) {
        } else {
            m34706i();
        }
    }

    /* renamed from: b */
    private void m34713b(ImageView imageView) {
        C4959e.m33434c().m33439a(this.f16837b.m35239H().get(0).m35254a(), imageView);
    }

    /* renamed from: c */
    private void m34712c() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_feed_horizontal"), (ViewGroup) this, true);
        this.f16926l = inflate;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_container"));
        frameLayout.setVisibility(0);
        this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_img_container")).setVisibility(8);
        ImageView imageView = (ImageView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
        TextView textView = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
        TextView textView3 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4620h.this.m34800a();
            }
        });
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
            textView3.setText(this.f16837b.m35232O());
        }
        View videoView = getVideoView();
        if (videoView != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(videoView, new ViewGroup.LayoutParams(this.f16841f, (this.f16841f * 9) / 16));
        }
        m34797a((View) this, false);
        m34797a((View) textView3, true);
    }

    /* renamed from: d */
    private void m34711d() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_feed_img_small"), (ViewGroup) this, true);
        this.f16926l = inflate;
        ImageView imageView = (ImageView) inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_img"));
        ImageView imageView2 = (ImageView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
        TextView textView = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
        m34717a(imageView);
        textView.setText(getDescription());
        ((TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"))).setText(getTitle());
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4620h.this.m34800a();
            }
        });
        m34797a((View) this, true);
    }

    /* renamed from: e */
    private void m34710e() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_feed_horizontal"), (ViewGroup) this, true);
        this.f16926l = inflate;
        inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_container")).setVisibility(8);
        this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_img_container")).setVisibility(0);
        ImageView imageView = (ImageView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_img"));
        ImageView imageView2 = (ImageView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
        TextView textView = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
        TextView textView3 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
        imageView.setAdjustViewBounds(true);
        imageView.setMaxHeight(this.f16842g);
        m34717a(imageView);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4620h.this.m34800a();
            }
        });
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
            textView3.setText(this.f16837b.m35232O());
        }
        m34797a((View) this, false);
        m34797a((View) textView3, true);
    }

    /* renamed from: f */
    private void m34709f() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_feed_vertical"), (ViewGroup) this, true);
        this.f16926l = inflate;
        inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_container")).setVisibility(0);
        this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_img_container")).setVisibility(8);
        FrameLayout frameLayout = (FrameLayout) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_container_inner"));
        ImageView imageView = (ImageView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_icon"));
        ImageView imageView2 = (ImageView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
        TextView textView = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
        TextView textView3 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_name1"));
        TextView textView4 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_name2"));
        TextView textView5 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
        TextView textView6 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_score"));
        TTRatingBar tTRatingBar = (TTRatingBar) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_score_bar"));
        C4959e.m33434c().m33439a(this.f16837b.m35242E().m35254a(), imageView);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4620h.this.m34800a();
            }
        });
        int m35329d = this.f16837b.m35230Q() != null ? this.f16837b.m35230Q().m35329d() : 4;
        textView6.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(m35329d)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(m35329d);
        tTRatingBar.setStarImageWidth(C5443ag.m32217c(this.f16836a, 15.0f));
        tTRatingBar.setStarImageHeight(C5443ag.m32217c(this.f16836a, 14.0f));
        tTRatingBar.setStarImagePadding(C5443ag.m32217c(this.f16836a, 4.0f));
        tTRatingBar.m34062a();
        textView3.setText(getNameOrSource());
        textView4.setText(getTitle());
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
            textView5.setText(this.f16837b.m35232O());
        }
        View videoView = getVideoView();
        if (videoView != null) {
            int i = (this.f16841f * 123) / 375;
            frameLayout.removeAllViews();
            frameLayout.addView(videoView, new ViewGroup.LayoutParams(i, (i * 16) / 9));
        }
        m34797a((View) this, false);
        m34797a((View) textView5, true);
    }

    /* renamed from: g */
    private void m34708g() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_draw"), (ViewGroup) this, true);
        this.f16926l = inflate;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_container"));
        TextView textView = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
        TextView textView3 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
            textView3.setText(this.f16837b.m35232O());
        }
        View videoView = getVideoView();
        if (videoView != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(videoView, new ViewGroup.LayoutParams(-1, -1));
        }
        m34797a((View) textView2, false);
        m34797a((View) textView, false);
        m34797a((View) textView3, true);
    }

    /* renamed from: h */
    private void m34707h() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_feed_horizontal"), (ViewGroup) this, true);
        this.f16926l = inflate;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_container"));
        frameLayout.setVisibility(0);
        this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_img_container")).setVisibility(8);
        ImageView imageView = (ImageView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
        TextView textView = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
        TextView textView3 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4620h.this.m34800a();
            }
        });
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
            textView3.setText(this.f16837b.m35232O());
        }
        View videoView = getVideoView();
        if (videoView != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(videoView, new ViewGroup.LayoutParams(this.f16841f, (this.f16841f * 9) / 16));
        }
        m34797a((View) this, false);
        m34797a((View) textView3, true);
    }

    /* renamed from: i */
    private void m34706i() {
        View inflate = LayoutInflater.from(this.f16836a).inflate(C5486x.m32065f(this.f16836a, "tt_backup_feed_vertical"), (ViewGroup) this, true);
        this.f16926l = inflate;
        inflate.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_video_container")).setVisibility(8);
        this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_img_container")).setVisibility(0);
        ImageView imageView = (ImageView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_img"));
        ImageView imageView2 = (ImageView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_close"));
        TextView textView = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_title"));
        TextView textView3 = (TextView) this.f16926l.findViewById(C5486x.m32066e(this.f16836a, "tt_bu_download"));
        m34713b(imageView);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4620h.this.m34800a();
            }
        });
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f16837b.m35232O())) {
            textView3.setText(this.f16837b.m35232O());
        }
        m34797a((View) this, false);
        m34797a((View) textView3, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    /* renamed from: a */
    protected void mo34718a(int i, C4553g c4553g) {
        NativeExpressView nativeExpressView = this.f16927m;
        if (nativeExpressView != null) {
            nativeExpressView.mo34705a(i, c4553g);
        }
    }

    /* renamed from: a */
    public void m34716a(C4557i c4557i, NativeExpressView nativeExpressView, AbstractC3234c abstractC3234c) {
        C5478q.m32112b("FeedExpressBackupView", "show backup view");
        setBackgroundColor(-1);
        this.f16837b = c4557i;
        this.f16927m = nativeExpressView;
        this.f16928n = abstractC3234c;
        this.f16843h = C5438af.m32278d(this.f16837b.m35228S());
        m34799a(this.f16843h);
        m34715b();
        this.f16927m.addView(this, new ViewGroup.LayoutParams(-2, -2));
    }
}
