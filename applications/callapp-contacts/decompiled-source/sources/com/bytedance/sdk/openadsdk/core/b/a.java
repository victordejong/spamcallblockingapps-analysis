package com.bytedance.sdk.openadsdk.core.b;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.nativeexpress.d;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.y;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/a.class */
public class a extends b {
    private TTDrawFeedAd.DrawVideoListener B;
    private int C;

    /* renamed from: a  reason: collision with root package name */
    private boolean f8797a = true;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8798b = false;
    private boolean A = false;

    public a(Context context, i iVar, String str, int i) {
        super(context, iVar, str, i);
    }

    private String b(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    c2 = 0;
                    break;
                }
                break;
            case -712491894:
                if (str.equals("embeded_ad")) {
                    c2 = 1;
                    break;
                }
                break;
            case 174971131:
                if (str.equals("splash_ad")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1912999166:
                if (str.equals("draw_ad")) {
                    c2 = 4;
                    break;
                }
                break;
            case 2091589896:
                if (str.equals("slide_banner_ad")) {
                    c2 = 5;
                    break;
                }
                break;
        }
        String str2 = "banner_call";
        String str3 = str2;
        switch (c2) {
            case 0:
                return str2;
            case 1:
            case 4:
                str2 = "feed_call";
                return str2;
            case 2:
                return "splash_ad";
            case 3:
                return "interaction_call";
            case 5:
                return str3;
            default:
                str3 = "";
                return str3;
        }
    }

    private boolean c(View view) {
        if (view == null) {
            return false;
        }
        if (view instanceof NativeVideoTsView) {
            q.c("ClickCreativeListener", "NativeVideoTsView....");
            return true;
        } else if (view.getId() == x.e(this.f8800c, "tt_video_ad_cover_center_layout") || view.getId() == x.e(this.f8800c, "tt_video_ad_logo_image") || view.getId() == x.e(this.f8800c, "tt_video_btn_ad_image_tv") || view.getId() == x.e(this.f8800c, "tt_video_ad_name") || view.getId() == x.e(this.f8800c, "tt_video_ad_button")) {
            q.c("ClickCreativeListener", "tt_video_ad_cover_center_layout....");
            return true;
        } else if (view.getId() == x.e(this.f8800c, "tt_root_view") || view.getId() == x.e(this.f8800c, "tt_video_play")) {
            q.c("ClickCreativeListener", "tt_root_view....");
            return true;
        } else {
            boolean z = false;
            if (view instanceof ViewGroup) {
                int i = 0;
                while (true) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    z = false;
                    if (i >= viewGroup.getChildCount()) {
                        break;
                    } else if (c(viewGroup.getChildAt(i))) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
            return z;
        }
    }

    private boolean e() {
        return i.d(this.f8801d) && this.f8801d.h() == 1;
    }

    private boolean f() {
        return this instanceof d;
    }

    private boolean g() {
        if (this.f8801d == null || f()) {
            return false;
        }
        if (this.f8801d.T() != 5 && this.f8801d.T() != 15) {
            return false;
        }
        if (this.C == 0) {
            this.C = af.c(this.f8801d.S());
        }
        StringBuilder sb = new StringBuilder("!isViewVisibility()=");
        sb.append(!b());
        sb.append(",isAutoPlay()=");
        sb.append(a());
        sb.append(",!isCoverPageVisibility()=");
        sb.append(!c());
        q.b("ClickCreativeListener", sb.toString());
        if (this.C == 5 && e() && a() && !b() && !c()) {
            return false;
        }
        int i = this.C;
        return i == 1 || i == 2 || i == 5;
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
    public void a(View view, int i, int i2, int i3, int i4) {
        int i5;
        TTDrawFeedAd.DrawVideoListener drawVideoListener;
        if (!a(2)) {
            if (!g() || !c(view) || this.A) {
                q.b("ClickCreativeListener", "走创意区域点击事件.....");
                if (this.f8800c == null) {
                    this.f8800c = n.a();
                }
                if (this.f8800c != null) {
                    this.i = a(i, i2, i3, i4, this.v, this.w, this.g == null ? null : this.g.get(), this.h == null ? null : this.h.get(), d());
                    int D = this.f8801d.D();
                    if (D == 2 || D == 3) {
                        if (this.k != null || this.f8798b) {
                            e.a(this.f8800c, "click_button", this.f8801d, this.i, this.e, true, this.o);
                        }
                        y.a(true);
                        boolean a2 = y.a(this.f8800c, this.f8801d, this.f, this.k, this.p, af.a(this.f), this.n, true);
                        i5 = D;
                        if (this.f8797a) {
                            e.a(this.f8800c, "click", this.f8801d, this.i, this.e, a2, this.o);
                            i5 = D;
                        }
                    } else if (D != 4) {
                        if (D != 5) {
                            i5 = -1;
                        } else {
                            String b2 = b(this.e);
                            if (!TextUtils.isEmpty(b2)) {
                                e.a(this.f8800c, "click_call", this.f8801d, this.i, b2, true, this.o);
                            }
                            e.a(this.f8800c, "click", this.f8801d, this.i, this.e, af.d(view.getContext(), this.f8801d.I()), this.o);
                            i5 = D;
                        }
                    } else if (!this.f8801d.w() || (this.k == null && this.p == null)) {
                        i5 = D;
                        if (this.n != null) {
                            this.n.e();
                            i5 = D;
                            if (this.f8797a) {
                                e.a(this.f8800c, "click", this.f8801d, this.i, this.e, true, this.o);
                                i5 = D;
                            }
                        }
                    } else {
                        boolean a3 = y.a(this.f8800c, this.f8801d, this.f, this.k, this.p, this.e, this.n, true);
                        i5 = D;
                        if (this.f8797a) {
                            e.a(this.f8800c, "click", this.f8801d, this.i, this.e, a3, this.o);
                            i5 = D;
                        }
                    }
                    if (this.j != null) {
                        this.j.a(view, i5);
                    }
                    if (af.b(this.f8801d) && (drawVideoListener = this.B) != null) {
                        drawVideoListener.onClick();
                        return;
                    }
                    return;
                }
                return;
            }
            q.b("ClickCreativeListener", "拦截原生视频view走普通点击事件.....");
            super.a(view, i, i2, i3, i4);
        }
    }

    public void a(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        this.B = drawVideoListener;
    }

    public void a(boolean z) {
        this.f8797a = z;
    }

    protected boolean a() {
        if (this.f8801d == null) {
            return true;
        }
        int c2 = n.h().c(af.d(this.f8801d.S()));
        return c2 != 1 ? c2 != 2 ? c2 != 3 : t.e(this.f8800c) || t.d(this.f8800c) : t.d(this.f8800c);
    }

    public void b(boolean z) {
        this.f8798b = z;
    }

    public boolean b() {
        return false;
    }

    public void c(boolean z) {
        this.A = z;
    }

    public boolean c() {
        return false;
    }
}
