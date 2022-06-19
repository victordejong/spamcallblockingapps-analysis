package p068d2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.Objects;
@SuppressLint({"AppCompatCustomView"})
/* renamed from: d2.c4 */
/* loaded from: classes-dex2jar.jar:d2/c4.class */
public class C2191c4 extends ImageView {

    /* renamed from: a */
    public int f7989a;

    /* renamed from: b */
    public int f7990b;

    /* renamed from: c */
    public int f7991c;

    /* renamed from: d */
    public int f7992d;

    /* renamed from: e */
    public int f7993e;

    /* renamed from: f */
    public boolean f7994f;

    /* renamed from: g */
    public boolean f7995g;

    /* renamed from: h */
    public boolean f7996h;

    /* renamed from: i */
    public String f7997i;

    /* renamed from: j */
    public String f7998j;

    /* renamed from: k */
    public C2410t0 f7999k;

    /* renamed from: l */
    public C2322j0 f8000l;

    public C2191c4(Context context, C2410t0 c2410t0, int i, C2322j0 c2322j0) {
        super(context);
        this.f7989a = i;
        this.f7999k = c2410t0;
        this.f8000l = c2322j0;
    }

    /* renamed from: a */
    public static boolean m3774a(C2191c4 c2191c4, C2410t0 c2410t0) {
        Objects.requireNonNull(c2191c4);
        C2267f4 c2267f4 = c2410t0.f8537b;
        return C2227e4.m3735r(c2267f4, FacebookAdapter.KEY_ID) == c2191c4.f7989a && C2227e4.m3735r(c2267f4, "container_id") == c2191c4.f8000l.f8300j && c2267f4.m3697o("ad_session_id").equals(c2191c4.f8000l.f8302l);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C2230f1 m3591d = C2408t.m3591d();
        C2329k0 m3722l = m3591d.m3722l();
        int action = motionEvent.getAction() & 255;
        if (action == 0 || action == 1 || action == 3 || action == 2 || action == 5 || action == 6) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3740m(c2267f4, "view_id", this.f7989a);
            C2227e4.m3744i(c2267f4, "ad_session_id", this.f7998j);
            C2227e4.m3740m(c2267f4, "container_x", this.f7990b + x);
            C2227e4.m3740m(c2267f4, "container_y", this.f7991c + y);
            C2227e4.m3740m(c2267f4, "view_x", x);
            C2227e4.m3740m(c2267f4, "view_y", y);
            C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, this.f8000l.getId());
            if (action == 0) {
                new C2410t0("AdContainer.on_touch_began", this.f8000l.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 1) {
                if (!this.f8000l.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f7998j);
                }
                if (x <= 0 || x >= this.f7992d || y <= 0 || y >= this.f7993e) {
                    new C2410t0("AdContainer.on_touch_cancelled", this.f8000l.f8301k, c2267f4).m3586b();
                    return true;
                }
                new C2410t0("AdContainer.on_touch_ended", this.f8000l.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 2) {
                new C2410t0("AdContainer.on_touch_moved", this.f8000l.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 3) {
                new C2410t0("AdContainer.on_touch_cancelled", this.f8000l.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 5) {
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                C2227e4.m3740m(c2267f4, "container_x", ((int) motionEvent.getX(action2)) + this.f7990b);
                C2227e4.m3740m(c2267f4, "container_y", ((int) motionEvent.getY(action2)) + this.f7991c);
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action2));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action2));
                new C2410t0("AdContainer.on_touch_began", this.f8000l.f8301k, c2267f4).m3586b();
                return true;
            } else if (action != 6) {
                return true;
            } else {
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                int x2 = (int) motionEvent.getX(action3);
                int y2 = (int) motionEvent.getY(action3);
                C2227e4.m3740m(c2267f4, "container_x", ((int) motionEvent.getX(action3)) + this.f7990b);
                C2227e4.m3740m(c2267f4, "container_y", ((int) motionEvent.getY(action3)) + this.f7991c);
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action3));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action3));
                if (!this.f8000l.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f7998j);
                }
                if (x2 <= 0 || x2 >= this.f7992d || y2 <= 0 || y2 >= this.f7993e) {
                    new C2410t0("AdContainer.on_touch_cancelled", this.f8000l.f8301k, c2267f4).m3586b();
                    return true;
                }
                new C2410t0("AdContainer.on_touch_ended", this.f8000l.f8301k, c2267f4).m3586b();
                return true;
            }
        }
        return false;
    }
}
