package p068d2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.p012v4.media.AbstractC0081a;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import p008a7.EnumC0038e;
/* renamed from: d2.j0 */
/* loaded from: classes-dex2jar.jar:d2/j0.class */
public class C2322j0 extends FrameLayout {

    /* renamed from: a */
    public HashMap<Integer, TextureView$SurfaceTextureListenerC2399r3> f8291a;

    /* renamed from: b */
    public HashMap<Integer, C2256f3> f8292b;

    /* renamed from: c */
    public HashMap<Integer, C2441x3> f8293c;

    /* renamed from: d */
    public HashMap<Integer, C2183b3> f8294d;

    /* renamed from: e */
    public HashMap<Integer, C2191c4> f8295e;

    /* renamed from: f */
    public HashMap<Integer, Boolean> f8296f;

    /* renamed from: g */
    public HashMap<Integer, View> f8297g;

    /* renamed from: h */
    public int f8298h;

    /* renamed from: i */
    public int f8299i;

    /* renamed from: j */
    public int f8300j;

    /* renamed from: k */
    public int f8301k;

    /* renamed from: l */
    public String f8302l;

    /* renamed from: m */
    public boolean f8303m;

    /* renamed from: n */
    public boolean f8304n;

    /* renamed from: o */
    public float f8305o = 0.0f;

    /* renamed from: p */
    public double f8306p = 0.0d;

    /* renamed from: q */
    public int f8307q = 0;

    /* renamed from: r */
    public int f8308r = 0;

    /* renamed from: s */
    public ArrayList<AbstractC2458y0> f8309s;

    /* renamed from: t */
    public ArrayList<String> f8310t;

    /* renamed from: u */
    public boolean f8311u;

    /* renamed from: v */
    public boolean f8312v;

    /* renamed from: w */
    public boolean f8313w;

    /* renamed from: x */
    public AbstractC0081a f8314x;

    /* renamed from: y */
    public Context f8315y;

    /* renamed from: z */
    public VideoView f8316z;

    public C2322j0(Context context, String str) {
        super(context);
        this.f8315y = context;
        this.f8302l = str;
        setBackgroundColor(-16777216);
    }

    /* renamed from: a */
    public void m3640a(View view, EnumC0038e enumC0038e) {
        AbstractC0081a abstractC0081a = this.f8314x;
        if (abstractC0081a == null || view == null) {
            return;
        }
        try {
            abstractC0081a.mo8766f(view, enumC0038e, null);
        } catch (RuntimeException e) {
        }
    }

    /* renamed from: b */
    public boolean m3639b(C2410t0 c2410t0) {
        C2267f4 c2267f4 = c2410t0.f8537b;
        return C2227e4.m3735r(c2267f4, "container_id") == this.f8300j && c2267f4.m3697o("ad_session_id").equals(this.f8302l);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0 || action == 1 || action == 3 || action == 2 || action == 5 || action == 6) {
            C2230f1 m3591d = C2408t.m3591d();
            C2329k0 m3722l = m3591d.m3722l();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3740m(c2267f4, "view_id", -1);
            C2227e4.m3744i(c2267f4, "ad_session_id", this.f8302l);
            C2227e4.m3740m(c2267f4, "container_x", x);
            C2227e4.m3740m(c2267f4, "container_y", y);
            C2227e4.m3740m(c2267f4, "view_x", x);
            C2227e4.m3740m(c2267f4, "view_y", y);
            C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, this.f8300j);
            if (action == 0) {
                new C2410t0("AdContainer.on_touch_began", this.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 1) {
                if (!this.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f8302l);
                }
                new C2410t0("AdContainer.on_touch_ended", this.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 2) {
                new C2410t0("AdContainer.on_touch_moved", this.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 3) {
                new C2410t0("AdContainer.on_touch_cancelled", this.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 5) {
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                C2227e4.m3740m(c2267f4, "container_x", (int) motionEvent.getX(action2));
                C2227e4.m3740m(c2267f4, "container_y", (int) motionEvent.getY(action2));
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action2));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action2));
                new C2410t0("AdContainer.on_touch_began", this.f8301k, c2267f4).m3586b();
                return true;
            } else if (action != 6) {
                return true;
            } else {
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                C2227e4.m3740m(c2267f4, "container_x", (int) motionEvent.getX(action3));
                C2227e4.m3740m(c2267f4, "container_y", (int) motionEvent.getY(action3));
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action3));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action3));
                C2227e4.m3740m(c2267f4, "x", (int) motionEvent.getX(action3));
                C2227e4.m3740m(c2267f4, "y", (int) motionEvent.getY(action3));
                if (!this.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f8302l);
                }
                new C2410t0("AdContainer.on_touch_ended", this.f8301k, c2267f4).m3586b();
                return true;
            }
        }
        return false;
    }
}
