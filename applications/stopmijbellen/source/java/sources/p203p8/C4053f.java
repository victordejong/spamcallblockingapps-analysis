package p203p8;

import android.view.View;
import p213q8.AbstractC4166a;
import p213q8.AbstractC4167b;
import p213q8.AbstractC4168c;
import p224r8.C4237a;
/* renamed from: p8.f */
/* loaded from: classes2-dex2jar.jar:p8/f.class */
public final class C4053f {

    /* renamed from: a */
    public static AbstractC4168c<View, Float> f12729a = new C4059f("alpha");

    /* renamed from: b */
    public static AbstractC4168c<View, Float> f12730b = new C4060g("pivotX");

    /* renamed from: c */
    public static AbstractC4168c<View, Float> f12731c = new C4061h("pivotY");

    /* renamed from: d */
    public static AbstractC4168c<View, Float> f12732d = new C4062i("translationX");

    /* renamed from: e */
    public static AbstractC4168c<View, Float> f12733e = new C4063j("translationY");

    /* renamed from: f */
    public static AbstractC4168c<View, Float> f12734f = new C4064k("rotation");

    /* renamed from: g */
    public static AbstractC4168c<View, Float> f12735g = new C4065l("rotationX");

    /* renamed from: h */
    public static AbstractC4168c<View, Float> f12736h = new C4066m("rotationY");

    /* renamed from: i */
    public static AbstractC4168c<View, Float> f12737i = new C4067n("scaleX");

    /* renamed from: j */
    public static AbstractC4168c<View, Float> f12738j = new C4054a("scaleY");

    /* renamed from: k */
    public static AbstractC4168c<View, Integer> f12739k = new C4055b("scrollX");

    /* renamed from: l */
    public static AbstractC4168c<View, Integer> f12740l = new C4056c("scrollY");

    /* renamed from: m */
    public static AbstractC4168c<View, Float> f12741m = new C4057d("x");

    /* renamed from: n */
    public static AbstractC4168c<View, Float> f12742n = new C4058e("y");

    /* renamed from: p8.f$a */
    /* loaded from: classes2-dex2jar.jar:p8/f$a.class */
    public static final class C4054a extends AbstractC4166a<View> {
        public C4054a(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13272k);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (m1257e.f13272k != f) {
                m1257e.m1259c();
                m1257e.f13272k = f;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$b */
    /* loaded from: classes2-dex2jar.jar:p8/f$b.class */
    public static final class C4055b extends AbstractC4167b<View> {
        public C4055b(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Integer mo1341a(Object obj) {
            View view = C4237a.m1257e((View) obj).f13262a.get();
            return Integer.valueOf(view == null ? 0 : view.getScrollX());
        }
    }

    /* renamed from: p8.f$c */
    /* loaded from: classes2-dex2jar.jar:p8/f$c.class */
    public static final class C4056c extends AbstractC4167b<View> {
        public C4056c(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Integer mo1341a(Object obj) {
            View view = C4237a.m1257e((View) obj).f13262a.get();
            return Integer.valueOf(view == null ? 0 : view.getScrollY());
        }
    }

    /* renamed from: p8.f$d */
    /* loaded from: classes2-dex2jar.jar:p8/f$d.class */
    public static final class C4057d extends AbstractC4166a<View> {
        public C4057d(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            View view;
            float f;
            C4237a m1257e = C4237a.m1257e((View) obj);
            if (m1257e.f13262a.get() == null) {
                f = 0.0f;
            } else {
                f = m1257e.f13273l + view.getLeft();
            }
            return Float.valueOf(f);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            View view2 = m1257e.f13262a.get();
            if (view2 != null) {
                float left = f - view2.getLeft();
                if (m1257e.f13273l == left) {
                    return;
                }
                m1257e.m1259c();
                m1257e.f13273l = left;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$e */
    /* loaded from: classes2-dex2jar.jar:p8/f$e.class */
    public static final class C4058e extends AbstractC4166a<View> {
        public C4058e(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            View view;
            float f;
            C4237a m1257e = C4237a.m1257e((View) obj);
            if (m1257e.f13262a.get() == null) {
                f = 0.0f;
            } else {
                f = m1257e.f13274m + view.getTop();
            }
            return Float.valueOf(f);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            View view2 = m1257e.f13262a.get();
            if (view2 != null) {
                float top = f - view2.getTop();
                if (m1257e.f13274m == top) {
                    return;
                }
                m1257e.m1259c();
                m1257e.f13274m = top;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$f */
    /* loaded from: classes2-dex2jar.jar:p8/f$f.class */
    public static final class C4059f extends AbstractC4166a<View> {
        public C4059f(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13265d);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (m1257e.f13265d != f) {
                m1257e.f13265d = f;
                View view2 = m1257e.f13262a.get();
                if (view2 == null) {
                    return;
                }
                view2.invalidate();
            }
        }
    }

    /* renamed from: p8.f$g */
    /* loaded from: classes2-dex2jar.jar:p8/f$g.class */
    public static final class C4060g extends AbstractC4166a<View> {
        public C4060g(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13266e);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (!m1257e.f13264c || m1257e.f13266e != f) {
                m1257e.m1259c();
                m1257e.f13264c = true;
                m1257e.f13266e = f;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$h */
    /* loaded from: classes2-dex2jar.jar:p8/f$h.class */
    public static final class C4061h extends AbstractC4166a<View> {
        public C4061h(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13267f);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (!m1257e.f13264c || m1257e.f13267f != f) {
                m1257e.m1259c();
                m1257e.f13264c = true;
                m1257e.f13267f = f;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$i */
    /* loaded from: classes2-dex2jar.jar:p8/f$i.class */
    public static final class C4062i extends AbstractC4166a<View> {
        public C4062i(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13273l);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (m1257e.f13273l != f) {
                m1257e.m1259c();
                m1257e.f13273l = f;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$j */
    /* loaded from: classes2-dex2jar.jar:p8/f$j.class */
    public static final class C4063j extends AbstractC4166a<View> {
        public C4063j(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13274m);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (m1257e.f13274m != f) {
                m1257e.m1259c();
                m1257e.f13274m = f;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$k */
    /* loaded from: classes2-dex2jar.jar:p8/f$k.class */
    public static final class C4064k extends AbstractC4166a<View> {
        public C4064k(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13270i);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (m1257e.f13270i != f) {
                m1257e.m1259c();
                m1257e.f13270i = f;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$l */
    /* loaded from: classes2-dex2jar.jar:p8/f$l.class */
    public static final class C4065l extends AbstractC4166a<View> {
        public C4065l(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13268g);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (m1257e.f13268g != f) {
                m1257e.m1259c();
                m1257e.f13268g = f;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$m */
    /* loaded from: classes2-dex2jar.jar:p8/f$m.class */
    public static final class C4066m extends AbstractC4166a<View> {
        public C4066m(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13269h);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (m1257e.f13269h != f) {
                m1257e.m1259c();
                m1257e.f13269h = f;
                m1257e.m1260b();
            }
        }
    }

    /* renamed from: p8.f$n */
    /* loaded from: classes2-dex2jar.jar:p8/f$n.class */
    public static final class C4067n extends AbstractC4166a<View> {
        public C4067n(String str) {
            super(str);
        }

        @Override // p213q8.AbstractC4168c
        /* renamed from: a */
        public Float mo1341a(Object obj) {
            return Float.valueOf(C4237a.m1257e((View) obj).f13271j);
        }

        @Override // p213q8.AbstractC4166a
        /* renamed from: c */
        public void mo1343c(View view, float f) {
            C4237a m1257e = C4237a.m1257e(view);
            if (m1257e.f13271j != f) {
                m1257e.m1259c();
                m1257e.f13271j = f;
                m1257e.m1260b();
            }
        }
    }
}
