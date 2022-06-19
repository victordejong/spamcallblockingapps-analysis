package p068d2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.widget.EditText;
import com.google.ads.mediation.facebook.FacebookAdapter;
@SuppressLint({"AppCompatCustomView"})
/* renamed from: d2.b3 */
/* loaded from: classes-dex2jar.jar:d2/b3.class */
public class C2183b3 extends EditText {

    /* renamed from: a */
    public int f7960a;

    /* renamed from: b */
    public int f7961b;

    /* renamed from: c */
    public int f7962c;

    /* renamed from: d */
    public int f7963d;

    /* renamed from: e */
    public int f7964e;

    /* renamed from: f */
    public int f7965f;

    /* renamed from: g */
    public int f7966g;

    /* renamed from: h */
    public int f7967h;

    /* renamed from: i */
    public int f7968i;

    /* renamed from: j */
    public int f7969j;

    /* renamed from: k */
    public String f7970k;

    /* renamed from: l */
    public String f7971l;

    /* renamed from: m */
    public String f7972m;

    /* renamed from: n */
    public String f7973n;

    /* renamed from: o */
    public C2322j0 f7974o;

    /* renamed from: p */
    public C2410t0 f7975p;

    public C2183b3(Context context, C2410t0 c2410t0, int i, C2322j0 c2322j0) {
        super(context);
        this.f7960a = i;
        this.f7975p = c2410t0;
        this.f7974o = c2322j0;
    }

    /* renamed from: a */
    public int m3776a(boolean z, int i) {
        if (i == 0) {
            return z ? 1 : 16;
        } else if (i == 1) {
            return z ? 8388611 : 48;
        } else if (i != 2) {
            return 17;
        } else {
            return z ? 8388613 : 80;
        }
    }

    /* renamed from: b */
    public boolean m3775b(C2410t0 c2410t0) {
        C2267f4 c2267f4 = c2410t0.f8537b;
        return C2227e4.m3735r(c2267f4, FacebookAdapter.KEY_ID) == this.f7960a && C2227e4.m3735r(c2267f4, "container_id") == this.f7974o.f8300j && c2267f4.m3697o("ad_session_id").equals(this.f7974o.f8302l);
    }

    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C2230f1 m3591d = C2408t.m3591d();
        C2329k0 m3722l = m3591d.m3722l();
        int action = motionEvent.getAction() & 255;
        if (action == 0 || action == 1 || action == 3 || action == 2 || action == 5 || action == 6) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3740m(c2267f4, "view_id", this.f7960a);
            C2227e4.m3744i(c2267f4, "ad_session_id", this.f7970k);
            C2227e4.m3740m(c2267f4, "container_x", this.f7961b + x);
            C2227e4.m3740m(c2267f4, "container_y", this.f7962c + y);
            C2227e4.m3740m(c2267f4, "view_x", x);
            C2227e4.m3740m(c2267f4, "view_y", y);
            C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, this.f7974o.f8300j);
            if (action == 0) {
                new C2410t0("AdContainer.on_touch_began", this.f7974o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 1) {
                if (!this.f7974o.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f7970k);
                }
                new C2410t0("AdContainer.on_touch_ended", this.f7974o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 2) {
                new C2410t0("AdContainer.on_touch_moved", this.f7974o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 3) {
                new C2410t0("AdContainer.on_touch_cancelled", this.f7974o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 5) {
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                C2227e4.m3740m(c2267f4, "container_x", ((int) motionEvent.getX(action2)) + this.f7961b);
                C2227e4.m3740m(c2267f4, "container_y", ((int) motionEvent.getY(action2)) + this.f7962c);
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action2));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action2));
                new C2410t0("AdContainer.on_touch_began", this.f7974o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action != 6) {
                return true;
            } else {
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                C2227e4.m3740m(c2267f4, "container_x", ((int) motionEvent.getX(action3)) + this.f7961b);
                C2227e4.m3740m(c2267f4, "container_y", ((int) motionEvent.getY(action3)) + this.f7962c);
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action3));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action3));
                if (!this.f7974o.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f7970k);
                }
                new C2410t0("AdContainer.on_touch_ended", this.f7974o.f8301k, c2267f4).m3586b();
                return true;
            }
        }
        return false;
    }
}
