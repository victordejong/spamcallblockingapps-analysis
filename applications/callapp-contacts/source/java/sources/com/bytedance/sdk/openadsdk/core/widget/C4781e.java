package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4565o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4723d;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/e.class */
public class C4781e {

    /* renamed from: a */
    private View f17569a;

    /* renamed from: b */
    private TextView f17570b;

    /* renamed from: c */
    private Context f17571c;

    /* renamed from: d */
    private AbstractC4723d f17572d;

    /* renamed from: e */
    private AbstractC4784b f17573e;

    /* renamed from: f */
    private boolean f17574f = false;

    /* renamed from: g */
    private C4565o f17575g;

    /* renamed from: h */
    private ViewStub f17576h;

    /* renamed from: i */
    private View f17577i;

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.e$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/e$a.class */
    public enum EnumC4783a {
        PAUSE_VIDEO,
        RELEASE_VIDEO,
        START_VIDEO
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.e$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/e$b.class */
    public interface AbstractC4784b {
        /* renamed from: h */
        boolean mo33995h();

        /* renamed from: j */
        void mo33994j();
    }

    /* renamed from: a */
    private void m34004a(Context context, View view, boolean z) {
        ViewStub viewStub;
        if (context == null || view == null || (viewStub = this.f17576h) == null || viewStub.getParent() == null || this.f17569a != null) {
            return;
        }
        this.f17576h.inflate();
        this.f17569a = view.findViewById(C5486x.m32066e(context, "tt_video_traffic_tip_layout"));
        this.f17570b = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_traffic_tip_tv"));
        View findViewById = view.findViewById(C5486x.m32066e(context, "tt_video_traffic_continue_play_btn"));
        if (z) {
            findViewById.setClickable(true);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.e.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    C4781e.this.m33997c();
                    if (C4781e.this.f17572d != null) {
                        C4781e.this.f17572d.mo34313a(EnumC4783a.START_VIDEO, (String) null);
                    }
                }
            });
            return;
        }
        findViewById.setOnClickListener(null);
        findViewById.setClickable(false);
    }

    /* renamed from: a */
    private void m34003a(C4565o c4565o, boolean z) {
        View view;
        String str;
        View view2;
        if (c4565o == null || (view = this.f17569a) == null || this.f17571c == null || view.getVisibility() == 0) {
            return;
        }
        AbstractC4784b abstractC4784b = this.f17573e;
        if (abstractC4784b != null) {
            abstractC4784b.mo33994j();
        }
        double ceil = Math.ceil((c4565o.m35052d() * 1.0d) / 1048576.0d);
        if (z) {
            str = String.format(C5486x.m32071a(this.f17571c, "tt_video_without_wifi_tips"), Float.valueOf(Double.valueOf(ceil).floatValue()));
        } else {
            str = C5486x.m32071a(this.f17571c, "tt_video_without_wifi_tips") + C5486x.m32071a(this.f17571c, "tt_video_bytesize");
        }
        C5443ag.m32228a(this.f17569a, 0);
        C5443ag.m32223a(this.f17570b, str);
        if (!C5443ag.m32214d(this.f17569a) || (view2 = this.f17569a) == null) {
            return;
        }
        view2.bringToFront();
    }

    /* renamed from: a */
    private boolean m34007a(int i) {
        AbstractC4784b abstractC4784b;
        if (!m34008a() && !this.f17574f) {
            if (this.f17572d != null && (abstractC4784b = this.f17573e) != null) {
                if (abstractC4784b.mo33995h()) {
                    this.f17572d.mo34277e(null, null);
                }
                this.f17572d.mo34313a(EnumC4783a.PAUSE_VIDEO, (String) null);
            }
            m34003a(this.f17575g, true);
            return false;
        }
        return true;
    }

    /* renamed from: b */
    private void m33999b() {
        this.f17575g = null;
    }

    /* renamed from: c */
    public void m33997c() {
        if (this.f17571c == null) {
            return;
        }
        m33996d();
    }

    /* renamed from: d */
    private void m33996d() {
        View view = this.f17569a;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    /* renamed from: a */
    public void m34005a(Context context, View view) {
        if (context == null || !(view instanceof ViewGroup)) {
            return;
        }
        this.f17577i = view;
        this.f17571c = C4600n.m34815a().getApplicationContext();
        this.f17576h = (ViewStub) LayoutInflater.from(context).inflate(C5486x.m32065f(context, "tt_video_traffic_tip"), (ViewGroup) view, true).findViewById(C5486x.m32066e(context, "tt_video_traffic_tip_layout_viewStub"));
    }

    /* renamed from: a */
    public void m34002a(AbstractC4723d abstractC4723d, AbstractC4784b abstractC4784b) {
        this.f17573e = abstractC4784b;
        this.f17572d = abstractC4723d;
    }

    /* renamed from: a */
    public void m34000a(boolean z) {
        if (z) {
            m33999b();
        }
        m33996d();
    }

    /* renamed from: a */
    public boolean m34008a() {
        View view = this.f17569a;
        return view != null && view.getVisibility() == 0;
    }

    /* renamed from: a */
    public boolean m34006a(int i, C4565o c4565o, boolean z) {
        Context context = this.f17571c;
        if (context == null || c4565o == null) {
            return true;
        }
        m34004a(context, this.f17577i, z);
        this.f17575g = c4565o;
        if (i != 1 && i != 2) {
            return true;
        }
        return m34007a(i);
    }
}
