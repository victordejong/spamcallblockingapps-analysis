package com.bytedance.sdk.openadsdk.core.p151b;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4802y;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4616d;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5486x;
/* renamed from: com.bytedance.sdk.openadsdk.core.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/a.class */
public class C4494a extends C4495b {

    /* renamed from: B */
    private TTDrawFeedAd.DrawVideoListener f16329B;

    /* renamed from: C */
    private int f16330C;

    /* renamed from: a */
    private boolean f16331a = true;

    /* renamed from: b */
    private boolean f16332b = false;

    /* renamed from: A */
    private boolean f16328A = false;

    public C4494a(Context context, C4557i c4557i, String str, int i) {
        super(context, c4557i, str, i);
    }

    /* renamed from: b */
    private String m35489b(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    z = false;
                    break;
                }
                break;
            case -712491894:
                if (str.equals("embeded_ad")) {
                    z = true;
                    break;
                }
                break;
            case 174971131:
                if (str.equals("splash_ad")) {
                    z = true;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    z = true;
                    break;
                }
                break;
            case 1912999166:
                if (str.equals("draw_ad")) {
                    z = true;
                    break;
                }
                break;
            case 2091589896:
                if (str.equals("slide_banner_ad")) {
                    z = true;
                    break;
                }
                break;
        }
        String str2 = "banner_call";
        String str3 = str2;
        switch (z) {
            case false:
                return str2;
            case true:
            case true:
                str2 = "feed_call";
                return str2;
            case true:
                return "splash_ad";
            case true:
                return "interaction_call";
            case true:
                return str3;
            default:
                str3 = "";
                return str3;
        }
    }

    /* renamed from: c */
    private boolean m35487c(View view) {
        if (view == null) {
            return false;
        }
        if (view instanceof NativeVideoTsView) {
            C5478q.m32109c("ClickCreativeListener", "NativeVideoTsView....");
            return true;
        } else if (view.getId() == C5486x.m32066e(this.f16334c, "tt_video_ad_cover_center_layout") || view.getId() == C5486x.m32066e(this.f16334c, "tt_video_ad_logo_image") || view.getId() == C5486x.m32066e(this.f16334c, "tt_video_btn_ad_image_tv") || view.getId() == C5486x.m32066e(this.f16334c, "tt_video_ad_name") || view.getId() == C5486x.m32066e(this.f16334c, "tt_video_ad_button")) {
            C5478q.m32109c("ClickCreativeListener", "tt_video_ad_cover_center_layout....");
            return true;
        } else if (view.getId() == C5486x.m32066e(this.f16334c, "tt_root_view") || view.getId() == C5486x.m32066e(this.f16334c, "tt_video_play")) {
            C5478q.m32109c("ClickCreativeListener", "tt_root_view....");
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
                    } else if (m35487c(viewGroup.getChildAt(i))) {
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

    /* renamed from: e */
    private boolean m35485e() {
        return C4557i.m35180d(this.f16335d) && this.f16335d.m35169h() == 1;
    }

    /* renamed from: f */
    private boolean m35484f() {
        return this instanceof C4616d;
    }

    /* renamed from: g */
    private boolean m35483g() {
        if (this.f16335d != null && !m35484f()) {
            if (this.f16335d.m35227T() != 5 && this.f16335d.m35227T() != 15) {
                return false;
            }
            if (this.f16330C == 0) {
                this.f16330C = C5438af.m32284c(this.f16335d.m35228S());
            }
            StringBuilder sb = new StringBuilder("!isViewVisibility()=");
            sb.append(!mo34181b());
            sb.append(",isAutoPlay()=");
            sb.append(m35492a());
            sb.append(",!isCoverPageVisibility()=");
            sb.append(!mo34180c());
            C5478q.m32112b("ClickCreativeListener", sb.toString());
            if (this.f16330C == 5 && m35485e() && m35492a() && !mo34181b() && !mo34180c()) {
                return false;
            }
            int i = this.f16330C;
            return i == 1 || i == 2 || i == 5;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p151b.C4495b, com.bytedance.sdk.openadsdk.core.p151b.AbstractView$OnClickListenerC4497c
    /* renamed from: a */
    public void mo35468a(View view, int i, int i2, int i3, int i4) {
        int i5;
        TTDrawFeedAd.DrawVideoListener drawVideoListener;
        if (m35482a(2)) {
            return;
        }
        if (m35483g() && m35487c(view) && !this.f16328A) {
            C5478q.m32112b("ClickCreativeListener", "拦截原生视频view走普通点击事件.....");
            super.mo35468a(view, i, i2, i3, i4);
            return;
        }
        C5478q.m32112b("ClickCreativeListener", "走创意区域点击事件.....");
        if (this.f16334c == null) {
            this.f16334c = C4600n.m34815a();
        }
        if (this.f16334c == null) {
            return;
        }
        this.f16340i = mo34729a(i, i2, i3, i4, this.f16353v, this.f16354w, this.f16338g == null ? null : this.f16338g.get(), this.f16339h == null ? null : this.f16339h.get(), m35471d());
        int m35243D = this.f16335d.m35243D();
        if (m35243D == 2 || m35243D == 3) {
            if (this.f16342k != null || this.f16332b) {
                C4811e.m33875a(this.f16334c, "click_button", this.f16335d, this.f16340i, this.f16336e, true, this.f16346o);
            }
            C4802y.m33902a(true);
            boolean m33906a = C4802y.m33906a(this.f16334c, this.f16335d, this.f16337f, this.f16342k, this.f16347p, C5438af.m32311a(this.f16337f), this.f16345n, true);
            i5 = m35243D;
            if (this.f16331a) {
                C4811e.m33875a(this.f16334c, "click", this.f16335d, this.f16340i, this.f16336e, m33906a, this.f16346o);
                i5 = m35243D;
            }
        } else if (m35243D != 4) {
            if (m35243D != 5) {
                i5 = -1;
            } else {
                String m35489b = m35489b(this.f16336e);
                if (!TextUtils.isEmpty(m35489b)) {
                    C4811e.m33875a(this.f16334c, "click_call", this.f16335d, this.f16340i, m35489b, true, this.f16346o);
                }
                C4811e.m33875a(this.f16334c, "click", this.f16335d, this.f16340i, this.f16336e, C5438af.m32280d(view.getContext(), this.f16335d.m35238I()), this.f16346o);
                i5 = m35243D;
            }
        } else if (!this.f16335d.m35137w() || (this.f16342k == null && this.f16347p == null)) {
            i5 = m35243D;
            if (this.f16345n != null) {
                this.f16345n.mo39091e();
                i5 = m35243D;
                if (this.f16331a) {
                    C4811e.m33875a(this.f16334c, "click", this.f16335d, this.f16340i, this.f16336e, true, this.f16346o);
                    i5 = m35243D;
                }
            }
        } else {
            boolean m33906a2 = C4802y.m33906a(this.f16334c, this.f16335d, this.f16337f, this.f16342k, this.f16347p, this.f16336e, this.f16345n, true);
            i5 = m35243D;
            if (this.f16331a) {
                C4811e.m33875a(this.f16334c, "click", this.f16335d, this.f16340i, this.f16336e, m33906a2, this.f16346o);
                i5 = m35243D;
            }
        }
        if (this.f16341j != null) {
            this.f16341j.mo34179a(view, i5);
        }
        if (!C5438af.m32291b(this.f16335d) || (drawVideoListener = this.f16329B) == null) {
            return;
        }
        drawVideoListener.onClick();
    }

    /* renamed from: a */
    public void m35491a(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        this.f16329B = drawVideoListener;
    }

    /* renamed from: a */
    public void m35490a(boolean z) {
        this.f16331a = z;
    }

    /* renamed from: a */
    protected boolean m35492a() {
        if (this.f16335d == null) {
            return true;
        }
        int m34902c = C4600n.m34805h().m34902c(C5438af.m32278d(this.f16335d.m35228S()));
        return m34902c != 1 ? m34902c != 2 ? m34902c != 3 : C5482t.m32086e(this.f16334c) || C5482t.m32087d(this.f16334c) : C5482t.m32087d(this.f16334c);
    }

    /* renamed from: b */
    public void m35488b(boolean z) {
        this.f16332b = z;
    }

    /* renamed from: b */
    public boolean mo34181b() {
        return false;
    }

    /* renamed from: c */
    public void m35486c(boolean z) {
        this.f16328A = z;
    }

    /* renamed from: c */
    public boolean mo34180c() {
        return false;
    }
}
