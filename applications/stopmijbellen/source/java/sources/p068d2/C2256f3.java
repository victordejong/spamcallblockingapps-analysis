package p068d2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Typeface;
import android.view.MotionEvent;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Objects;
@SuppressLint({"AppCompatCustomView"})
/* renamed from: d2.f3 */
/* loaded from: classes-dex2jar.jar:d2/f3.class */
public class C2256f3 extends Button {

    /* renamed from: a */
    public int f8133a;

    /* renamed from: b */
    public int f8134b;

    /* renamed from: c */
    public int f8135c;

    /* renamed from: d */
    public int f8136d;

    /* renamed from: e */
    public int f8137e;

    /* renamed from: f */
    public int f8138f;

    /* renamed from: g */
    public int f8139g;

    /* renamed from: h */
    public int f8140h;

    /* renamed from: i */
    public int f8141i;

    /* renamed from: j */
    public int f8142j;

    /* renamed from: k */
    public String f8143k;

    /* renamed from: l */
    public String f8144l;

    /* renamed from: m */
    public String f8145m;

    /* renamed from: n */
    public String f8146n;

    /* renamed from: o */
    public C2322j0 f8147o;

    /* renamed from: p */
    public C2410t0 f8148p;

    /* renamed from: d2.f3$a */
    /* loaded from: classes-dex2jar.jar:d2/f3$a.class */
    public class C2257a implements AbstractC2458y0 {
        public C2257a() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                C2267f4 c2267f4 = c2410t0.f8537b;
                c2256f3.f8141i = C2227e4.m3735r(c2267f4, "x");
                c2256f3.f8142j = C2227e4.m3735r(c2267f4, "y");
                c2256f3.setGravity(c2256f3.m3714a(true, c2256f3.f8141i) | c2256f3.m3714a(false, c2256f3.f8142j));
            }
        }
    }

    /* renamed from: d2.f3$b */
    /* loaded from: classes-dex2jar.jar:d2/f3$b.class */
    public class C2258b implements AbstractC2458y0 {
        public C2258b() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                if (C2227e4.m3741l(c2410t0.f8537b, "visible")) {
                    c2256f3.setVisibility(0);
                } else {
                    c2256f3.setVisibility(4);
                }
            }
        }
    }

    /* renamed from: d2.f3$c */
    /* loaded from: classes-dex2jar.jar:d2/f3$c.class */
    public class C2259c implements AbstractC2458y0 {
        public C2259c() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                C2267f4 c2267f4 = c2410t0.f8537b;
                c2256f3.f8134b = C2227e4.m3735r(c2267f4, "x");
                c2256f3.f8135c = C2227e4.m3735r(c2267f4, "y");
                c2256f3.f8136d = C2227e4.m3735r(c2267f4, "width");
                c2256f3.f8137e = C2227e4.m3735r(c2267f4, "height");
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) c2256f3.getLayoutParams();
                layoutParams.setMargins(c2256f3.f8134b, c2256f3.f8135c, 0, 0);
                layoutParams.width = c2256f3.f8136d;
                layoutParams.height = c2256f3.f8137e;
                c2256f3.setLayoutParams(layoutParams);
            }
        }
    }

    /* renamed from: d2.f3$d */
    /* loaded from: classes-dex2jar.jar:d2/f3$d.class */
    public class C2260d implements AbstractC2458y0 {
        public C2260d() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                String m3697o = c2410t0.f8537b.m3697o("font_color");
                c2256f3.f8144l = m3697o;
                c2256f3.setTextColor(C2315i3.m3675B(m3697o));
            }
        }
    }

    /* renamed from: d2.f3$e */
    /* loaded from: classes-dex2jar.jar:d2/f3$e.class */
    public class C2261e implements AbstractC2458y0 {
        public C2261e() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                String m3697o = c2410t0.f8537b.m3697o("background_color");
                c2256f3.f8143k = m3697o;
                c2256f3.setBackgroundColor(C2315i3.m3675B(m3697o));
            }
        }
    }

    /* renamed from: d2.f3$f */
    /* loaded from: classes-dex2jar.jar:d2/f3$f.class */
    public class C2262f implements AbstractC2458y0 {
        public C2262f() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                int m3735r = C2227e4.m3735r(c2410t0.f8537b, "font_family");
                c2256f3.f8139g = m3735r;
                if (m3735r == 0) {
                    c2256f3.setTypeface(Typeface.DEFAULT);
                } else if (m3735r == 1) {
                    c2256f3.setTypeface(Typeface.SERIF);
                } else if (m3735r == 2) {
                    c2256f3.setTypeface(Typeface.SANS_SERIF);
                } else if (m3735r != 3) {
                } else {
                    c2256f3.setTypeface(Typeface.MONOSPACE);
                }
            }
        }
    }

    /* renamed from: d2.f3$g */
    /* loaded from: classes-dex2jar.jar:d2/f3$g.class */
    public class C2263g implements AbstractC2458y0 {
        public C2263g() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                int m3735r = C2227e4.m3735r(c2410t0.f8537b, "font_size");
                c2256f3.f8140h = m3735r;
                c2256f3.setTextSize(m3735r);
            }
        }
    }

    /* renamed from: d2.f3$h */
    /* loaded from: classes-dex2jar.jar:d2/f3$h.class */
    public class C2264h implements AbstractC2458y0 {
        public C2264h() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                int m3735r = C2227e4.m3735r(c2410t0.f8537b, "font_style");
                c2256f3.f8138f = m3735r;
                if (m3735r == 0) {
                    c2256f3.setTypeface(c2256f3.getTypeface(), 0);
                } else if (m3735r == 1) {
                    c2256f3.setTypeface(c2256f3.getTypeface(), 1);
                } else if (m3735r == 2) {
                    c2256f3.setTypeface(c2256f3.getTypeface(), 2);
                } else if (m3735r != 3) {
                } else {
                    c2256f3.setTypeface(c2256f3.getTypeface(), 3);
                }
            }
        }
    }

    /* renamed from: d2.f3$i */
    /* loaded from: classes-dex2jar.jar:d2/f3$i.class */
    public class C2265i implements AbstractC2458y0 {
        public C2265i() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                C2267f4 c2267f4 = new C2267f4();
                C2227e4.m3744i(c2267f4, "text", c2256f3.getText().toString());
                c2410t0.m3587a(c2267f4).m3586b();
            }
        }
    }

    /* renamed from: d2.f3$j */
    /* loaded from: classes-dex2jar.jar:d2/f3$j.class */
    public class C2266j implements AbstractC2458y0 {
        public C2266j() {
            C2256f3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2256f3.this.m3712c(c2410t0)) {
                C2256f3 c2256f3 = C2256f3.this;
                Objects.requireNonNull(c2256f3);
                String m3697o = c2410t0.f8537b.m3697o("text");
                c2256f3.f8145m = m3697o;
                c2256f3.setText(m3697o);
            }
        }
    }

    public C2256f3(Context context, int i, C2410t0 c2410t0, int i2, C2322j0 c2322j0) {
        super(context, null, i);
        this.f8133a = i2;
        this.f8148p = c2410t0;
        this.f8147o = c2322j0;
    }

    public C2256f3(Context context, C2410t0 c2410t0, int i, C2322j0 c2322j0) {
        super(context);
        this.f8133a = i;
        this.f8148p = c2410t0;
        this.f8147o = c2322j0;
    }

    /* renamed from: a */
    public int m3714a(boolean z, int i) {
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
    public void m3713b() {
        int i;
        int i2;
        C2267f4 c2267f4 = this.f8148p.f8537b;
        this.f8146n = c2267f4.m3697o("ad_session_id");
        this.f8134b = C2227e4.m3735r(c2267f4, "x");
        this.f8135c = C2227e4.m3735r(c2267f4, "y");
        this.f8136d = C2227e4.m3735r(c2267f4, "width");
        this.f8137e = C2227e4.m3735r(c2267f4, "height");
        this.f8139g = C2227e4.m3735r(c2267f4, "font_family");
        this.f8138f = C2227e4.m3735r(c2267f4, "font_style");
        this.f8140h = C2227e4.m3735r(c2267f4, "font_size");
        this.f8143k = c2267f4.m3697o("background_color");
        this.f8144l = c2267f4.m3697o("font_color");
        this.f8145m = c2267f4.m3697o("text");
        this.f8141i = C2227e4.m3735r(c2267f4, "align_x");
        this.f8142j = C2227e4.m3735r(c2267f4, "align_y");
        C2230f1 m3591d = C2408t.m3591d();
        if (this.f8145m.equals("")) {
            this.f8145m = "Learn More";
        }
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = C2227e4.m3741l(c2267f4, "wrap_content") ? new FrameLayout.LayoutParams(-2, -2) : new FrameLayout.LayoutParams(this.f8136d, this.f8137e);
        layoutParams.gravity = 0;
        setText(this.f8145m);
        setTextSize(this.f8140h);
        if (C2227e4.m3741l(c2267f4, "overlay")) {
            this.f8134b = 0;
            this.f8135c = 0;
            i2 = (int) (m3591d.m3721m().m3779f() * 6.0f);
            i = (int) (m3591d.m3721m().m3779f() * 6.0f);
            int m3779f = (int) (m3591d.m3721m().m3779f() * 4.0f);
            setPadding(m3779f, m3779f, m3779f, m3779f);
            layoutParams.gravity = 8388693;
        } else {
            i2 = 0;
            i = 0;
        }
        layoutParams.setMargins(this.f8134b, this.f8135c, i2, i);
        this.f8147o.addView(this, layoutParams);
        int i3 = this.f8139g;
        if (i3 == 0) {
            setTypeface(Typeface.DEFAULT);
        } else if (i3 == 1) {
            setTypeface(Typeface.SERIF);
        } else if (i3 == 2) {
            setTypeface(Typeface.SANS_SERIF);
        } else if (i3 == 3) {
            setTypeface(Typeface.MONOSPACE);
        }
        int i4 = this.f8138f;
        if (i4 == 0) {
            setTypeface(getTypeface(), 0);
        } else if (i4 == 1) {
            setTypeface(getTypeface(), 1);
        } else if (i4 == 2) {
            setTypeface(getTypeface(), 2);
        } else if (i4 == 3) {
            setTypeface(getTypeface(), 3);
        }
        setGravity(m3714a(true, this.f8141i) | m3714a(false, this.f8142j));
        if (!this.f8143k.equals("")) {
            setBackgroundColor(C2315i3.m3675B(this.f8143k));
        }
        if (!this.f8144l.equals("")) {
            setTextColor(C2315i3.m3675B(this.f8144l));
        }
        ArrayList<AbstractC2458y0> arrayList = this.f8147o.f8309s;
        C2258b c2258b = new C2258b();
        C2408t.m3594a("TextView.set_visible", c2258b);
        arrayList.add(c2258b);
        ArrayList<AbstractC2458y0> arrayList2 = this.f8147o.f8309s;
        C2259c c2259c = new C2259c();
        C2408t.m3594a("TextView.set_bounds", c2259c);
        arrayList2.add(c2259c);
        ArrayList<AbstractC2458y0> arrayList3 = this.f8147o.f8309s;
        C2260d c2260d = new C2260d();
        C2408t.m3594a("TextView.set_font_color", c2260d);
        arrayList3.add(c2260d);
        ArrayList<AbstractC2458y0> arrayList4 = this.f8147o.f8309s;
        C2261e c2261e = new C2261e();
        C2408t.m3594a("TextView.set_background_color", c2261e);
        arrayList4.add(c2261e);
        ArrayList<AbstractC2458y0> arrayList5 = this.f8147o.f8309s;
        C2262f c2262f = new C2262f();
        C2408t.m3594a("TextView.set_typeface", c2262f);
        arrayList5.add(c2262f);
        ArrayList<AbstractC2458y0> arrayList6 = this.f8147o.f8309s;
        C2263g c2263g = new C2263g();
        C2408t.m3594a("TextView.set_font_size", c2263g);
        arrayList6.add(c2263g);
        ArrayList<AbstractC2458y0> arrayList7 = this.f8147o.f8309s;
        C2264h c2264h = new C2264h();
        C2408t.m3594a("TextView.set_font_style", c2264h);
        arrayList7.add(c2264h);
        ArrayList<AbstractC2458y0> arrayList8 = this.f8147o.f8309s;
        C2265i c2265i = new C2265i();
        C2408t.m3594a("TextView.get_text", c2265i);
        arrayList8.add(c2265i);
        ArrayList<AbstractC2458y0> arrayList9 = this.f8147o.f8309s;
        C2266j c2266j = new C2266j();
        C2408t.m3594a("TextView.set_text", c2266j);
        arrayList9.add(c2266j);
        ArrayList<AbstractC2458y0> arrayList10 = this.f8147o.f8309s;
        C2257a c2257a = new C2257a();
        C2408t.m3594a("TextView.align", c2257a);
        arrayList10.add(c2257a);
        this.f8147o.f8310t.add("TextView.set_visible");
        this.f8147o.f8310t.add("TextView.set_bounds");
        this.f8147o.f8310t.add("TextView.set_font_color");
        this.f8147o.f8310t.add("TextView.set_background_color");
        this.f8147o.f8310t.add("TextView.set_typeface");
        this.f8147o.f8310t.add("TextView.set_font_size");
        this.f8147o.f8310t.add("TextView.set_font_style");
        this.f8147o.f8310t.add("TextView.get_text");
        this.f8147o.f8310t.add("TextView.set_text");
        this.f8147o.f8310t.add("TextView.align");
    }

    /* renamed from: c */
    public boolean m3712c(C2410t0 c2410t0) {
        C2267f4 c2267f4 = c2410t0.f8537b;
        return C2227e4.m3735r(c2267f4, FacebookAdapter.KEY_ID) == this.f8133a && C2227e4.m3735r(c2267f4, "container_id") == this.f8147o.f8300j && c2267f4.m3697o("ad_session_id").equals(this.f8147o.f8302l);
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
            C2227e4.m3740m(c2267f4, "view_id", this.f8133a);
            C2227e4.m3744i(c2267f4, "ad_session_id", this.f8146n);
            C2227e4.m3740m(c2267f4, "container_x", this.f8134b + x);
            C2227e4.m3740m(c2267f4, "container_y", this.f8135c + y);
            C2227e4.m3740m(c2267f4, "view_x", x);
            C2227e4.m3740m(c2267f4, "view_y", y);
            C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, this.f8147o.getId());
            if (action == 0) {
                new C2410t0("AdContainer.on_touch_began", this.f8147o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 1) {
                if (!this.f8147o.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f8146n);
                }
                if (x <= 0 || x >= getWidth() || y <= 0 || y >= getHeight()) {
                    new C2410t0("AdContainer.on_touch_cancelled", this.f8147o.f8301k, c2267f4).m3586b();
                    return true;
                }
                new C2410t0("AdContainer.on_touch_ended", this.f8147o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 2) {
                new C2410t0("AdContainer.on_touch_moved", this.f8147o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 3) {
                new C2410t0("AdContainer.on_touch_cancelled", this.f8147o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 5) {
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                C2227e4.m3740m(c2267f4, "container_x", ((int) motionEvent.getX(action2)) + this.f8134b);
                C2227e4.m3740m(c2267f4, "container_y", ((int) motionEvent.getY(action2)) + this.f8135c);
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action2));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action2));
                new C2410t0("AdContainer.on_touch_began", this.f8147o.f8301k, c2267f4).m3586b();
                return true;
            } else if (action != 6) {
                return true;
            } else {
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                int x2 = (int) motionEvent.getX(action3);
                int y2 = (int) motionEvent.getY(action3);
                C2227e4.m3740m(c2267f4, "container_x", ((int) motionEvent.getX(action3)) + this.f8134b);
                C2227e4.m3740m(c2267f4, "container_y", ((int) motionEvent.getY(action3)) + this.f8135c);
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action3));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action3));
                if (!this.f8147o.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f8146n);
                }
                if (x2 <= 0 || x2 >= getWidth() || y2 <= 0 || y2 >= getHeight()) {
                    new C2410t0("AdContainer.on_touch_cancelled", this.f8147o.f8301k, c2267f4).m3586b();
                    return true;
                }
                new C2410t0("AdContainer.on_touch_ended", this.f8147o.f8301k, c2267f4).m3586b();
                return true;
            }
        }
        return false;
    }
}
