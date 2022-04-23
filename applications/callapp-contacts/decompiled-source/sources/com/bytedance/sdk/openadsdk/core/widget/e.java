package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.e.o;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.d;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private View f9338a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f9339b;

    /* renamed from: c  reason: collision with root package name */
    private Context f9340c;

    /* renamed from: d  reason: collision with root package name */
    private d f9341d;
    private b e;
    private boolean f = false;
    private o g;
    private ViewStub h;
    private View i;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/e$a.class */
    public enum a {
        PAUSE_VIDEO,
        RELEASE_VIDEO,
        START_VIDEO
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/e$b.class */
    public interface b {
        boolean h();

        void j();
    }

    private void a(Context context, View view, boolean z) {
        ViewStub viewStub;
        if (context != null && view != null && (viewStub = this.h) != null && viewStub.getParent() != null && this.f9338a == null) {
            this.h.inflate();
            this.f9338a = view.findViewById(x.e(context, "tt_video_traffic_tip_layout"));
            this.f9339b = (TextView) view.findViewById(x.e(context, "tt_video_traffic_tip_tv"));
            View findViewById = view.findViewById(x.e(context, "tt_video_traffic_continue_play_btn"));
            if (z) {
                findViewById.setClickable(true);
                findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.e.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        e.this.c();
                        if (e.this.f9341d != null) {
                            e.this.f9341d.a(a.START_VIDEO, (String) null);
                        }
                    }
                });
                return;
            }
            findViewById.setOnClickListener(null);
            findViewById.setClickable(false);
        }
    }

    private void a(o oVar, boolean z) {
        View view;
        String str;
        View view2;
        if (oVar != null && (view = this.f9338a) != null && this.f9340c != null && view.getVisibility() != 0) {
            b bVar = this.e;
            if (bVar != null) {
                bVar.j();
            }
            double ceil = Math.ceil((oVar.d() * 1.0d) / 1048576.0d);
            if (z) {
                str = String.format(x.a(this.f9340c, "tt_video_without_wifi_tips"), Float.valueOf(Double.valueOf(ceil).floatValue()));
            } else {
                str = x.a(this.f9340c, "tt_video_without_wifi_tips") + x.a(this.f9340c, "tt_video_bytesize");
            }
            ag.a(this.f9338a, 0);
            ag.a(this.f9339b, str);
            if (ag.d(this.f9338a) && (view2 = this.f9338a) != null) {
                view2.bringToFront();
            }
        }
    }

    private boolean a(int i) {
        b bVar;
        if (a() || this.f) {
            return true;
        }
        if (!(this.f9341d == null || (bVar = this.e) == null)) {
            if (bVar.h()) {
                this.f9341d.e(null, null);
            }
            this.f9341d.a(a.PAUSE_VIDEO, (String) null);
        }
        a(this.g, true);
        return false;
    }

    private void b() {
        this.g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f9340c != null) {
            d();
        }
    }

    private void d() {
        View view = this.f9338a;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void a(Context context, View view) {
        if (context != null && (view instanceof ViewGroup)) {
            this.i = view;
            this.f9340c = n.a().getApplicationContext();
            this.h = (ViewStub) LayoutInflater.from(context).inflate(x.f(context, "tt_video_traffic_tip"), (ViewGroup) view, true).findViewById(x.e(context, "tt_video_traffic_tip_layout_viewStub"));
        }
    }

    public void a(d dVar, b bVar) {
        this.e = bVar;
        this.f9341d = dVar;
    }

    public void a(boolean z) {
        if (z) {
            b();
        }
        d();
    }

    public boolean a() {
        View view = this.f9338a;
        return view != null && view.getVisibility() == 0;
    }

    public boolean a(int i, o oVar, boolean z) {
        Context context = this.f9340c;
        if (context == null || oVar == null) {
            return true;
        }
        a(context, this.i, z);
        this.g = oVar;
        if (i == 1 || i == 2) {
            return a(i);
        }
        return true;
    }
}
