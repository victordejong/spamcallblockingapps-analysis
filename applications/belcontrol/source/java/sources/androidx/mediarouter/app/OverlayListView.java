package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/mediarouter/app/OverlayListView.class */
public final class OverlayListView extends ListView {

    /* renamed from: a */
    public final List<C0173a> f1277a = new ArrayList();

    /* renamed from: androidx.mediarouter.app.OverlayListView$a */
    /* loaded from: classes-dex2jar.jar:androidx/mediarouter/app/OverlayListView$a.class */
    public static class C0173a {

        /* renamed from: a */
        public BitmapDrawable f1278a;

        /* renamed from: c */
        public Rect f1280c;

        /* renamed from: d */
        public Interpolator f1281d;

        /* renamed from: e */
        public long f1282e;

        /* renamed from: f */
        public Rect f1283f;

        /* renamed from: g */
        public int f1284g;

        /* renamed from: j */
        public long f1287j;

        /* renamed from: k */
        public boolean f1288k;

        /* renamed from: l */
        public boolean f1289l;

        /* renamed from: m */
        public AbstractC0174a f1290m;

        /* renamed from: b */
        public float f1279b = 1.0f;

        /* renamed from: h */
        public float f1285h = 1.0f;

        /* renamed from: i */
        public float f1286i = 1.0f;

        /* renamed from: androidx.mediarouter.app.OverlayListView$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/mediarouter/app/OverlayListView$a$a.class */
        public interface AbstractC0174a {
            void onAnimationEnd();
        }

        public C0173a(BitmapDrawable bitmapDrawable, Rect rect) {
            this.f1278a = bitmapDrawable;
            this.f1283f = rect;
            Rect rect2 = new Rect(rect);
            this.f1280c = rect2;
            BitmapDrawable bitmapDrawable2 = this.f1278a;
            if (bitmapDrawable2 == null || rect2 == null) {
                return;
            }
            bitmapDrawable2.setAlpha((int) (this.f1279b * 255.0f));
            this.f1278a.setBounds(this.f1280c);
        }

        /* renamed from: a */
        public BitmapDrawable m6300a() {
            return this.f1278a;
        }

        /* renamed from: b */
        public boolean m6299b() {
            return this.f1288k;
        }

        /* renamed from: c */
        public C0173a m6298c(float f, float f2) {
            this.f1285h = f;
            this.f1286i = f2;
            return this;
        }

        /* renamed from: d */
        public C0173a m6297d(AbstractC0174a abstractC0174a) {
            this.f1290m = abstractC0174a;
            return this;
        }

        /* renamed from: e */
        public C0173a m6296e(long j) {
            this.f1282e = j;
            return this;
        }

        /* renamed from: f */
        public C0173a m6295f(Interpolator interpolator) {
            this.f1281d = interpolator;
            return this;
        }

        /* renamed from: g */
        public C0173a m6294g(int i) {
            this.f1284g = i;
            return this;
        }

        /* renamed from: h */
        public void m6293h(long j) {
            this.f1287j = j;
            this.f1288k = true;
        }

        /* renamed from: i */
        public void m6292i() {
            this.f1288k = true;
            this.f1289l = true;
            AbstractC0174a abstractC0174a = this.f1290m;
            if (abstractC0174a != null) {
                abstractC0174a.onAnimationEnd();
            }
        }

        /* renamed from: j */
        public boolean m6291j(long j) {
            if (this.f1289l) {
                return false;
            }
            float f = 0.0f;
            float max = Math.max(0.0f, Math.min(1.0f, ((float) (j - this.f1287j)) / ((float) this.f1282e)));
            if (this.f1288k) {
                f = max;
            }
            Interpolator interpolator = this.f1281d;
            float interpolation = interpolator == null ? f : interpolator.getInterpolation(f);
            int i = (int) (this.f1284g * interpolation);
            Rect rect = this.f1280c;
            Rect rect2 = this.f1283f;
            rect.top = rect2.top + i;
            rect.bottom = rect2.bottom + i;
            float f2 = this.f1285h;
            float f3 = f2 + ((this.f1286i - f2) * interpolation);
            this.f1279b = f3;
            BitmapDrawable bitmapDrawable = this.f1278a;
            if (bitmapDrawable != null && rect != null) {
                bitmapDrawable.setAlpha((int) (f3 * 255.0f));
                this.f1278a.setBounds(this.f1280c);
            }
            if (this.f1288k && f >= 1.0f) {
                this.f1289l = true;
                AbstractC0174a abstractC0174a = this.f1290m;
                if (abstractC0174a != null) {
                    abstractC0174a.onAnimationEnd();
                }
            }
            return !this.f1289l;
        }
    }

    public OverlayListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public OverlayListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public void m6303a(C0173a c0173a) {
        this.f1277a.add(c0173a);
    }

    /* renamed from: b */
    public void m6302b() {
        for (C0173a c0173a : this.f1277a) {
            if (!c0173a.m6299b()) {
                c0173a.m6293h(getDrawingTime());
            }
        }
    }

    /* renamed from: c */
    public void m6301c() {
        for (C0173a c0173a : this.f1277a) {
            c0173a.m6292i();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f1277a.size() > 0) {
            Iterator<C0173a> it = this.f1277a.iterator();
            while (it.hasNext()) {
                C0173a next = it.next();
                BitmapDrawable m6300a = next.m6300a();
                if (m6300a != null) {
                    m6300a.draw(canvas);
                }
                if (!next.m6291j(getDrawingTime())) {
                    it.remove();
                }
            }
        }
    }
}
