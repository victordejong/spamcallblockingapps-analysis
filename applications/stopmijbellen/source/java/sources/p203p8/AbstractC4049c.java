package p203p8;

import android.view.animation.Interpolator;
/* renamed from: p8.c */
/* loaded from: classes2-dex2jar.jar:p8/c.class */
public abstract class AbstractC4049c implements Cloneable {

    /* renamed from: a */
    public float f12717a;

    /* renamed from: b */
    public Interpolator f12718b = null;

    /* renamed from: c */
    public boolean f12719c = false;

    /* renamed from: p8.c$a */
    /* loaded from: classes2-dex2jar.jar:p8/c$a.class */
    public static class C4050a extends AbstractC4049c {

        /* renamed from: d */
        public float f12720d;

        public C4050a(float f) {
            this.f12717a = f;
        }

        public C4050a(float f, float f2) {
            this.f12717a = f;
            this.f12720d = f2;
            this.f12719c = true;
        }

        @Override // p203p8.AbstractC4049c
        /* renamed from: a */
        public AbstractC4049c mo1463a() {
            C4050a c4050a = new C4050a(this.f12717a, this.f12720d);
            c4050a.f12718b = this.f12718b;
            return c4050a;
        }

        @Override // p203p8.AbstractC4049c
        /* renamed from: b */
        public Object mo1462b() {
            return Float.valueOf(this.f12720d);
        }

        @Override // p203p8.AbstractC4049c
        /* renamed from: c */
        public void mo1461c(Object obj) {
            if (obj == null || obj.getClass() != Float.class) {
                return;
            }
            this.f12720d = ((Float) obj).floatValue();
            this.f12719c = true;
        }

        @Override // p203p8.AbstractC4049c
        public Object clone() throws CloneNotSupportedException {
            C4050a c4050a = new C4050a(this.f12717a, this.f12720d);
            c4050a.f12718b = this.f12718b;
            return c4050a;
        }
    }

    /* renamed from: a */
    public abstract AbstractC4049c clone();

    /* renamed from: b */
    public abstract Object mo1462b();

    /* renamed from: c */
    public abstract void mo1461c(Object obj);
}
