package com.google.android.material.k;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/m.class */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public static final c f30691a = new k(0.5f);

    /* renamed from: b  reason: collision with root package name */
    public d f30692b;

    /* renamed from: c  reason: collision with root package name */
    public d f30693c;

    /* renamed from: d  reason: collision with root package name */
    public d f30694d;
    public d e;
    public c f;
    public c g;
    public c h;
    public c i;
    public f j;
    f k;
    f l;
    f m;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/m$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        d f30695a;

        /* renamed from: b  reason: collision with root package name */
        d f30696b;

        /* renamed from: c  reason: collision with root package name */
        d f30697c;

        /* renamed from: d  reason: collision with root package name */
        d f30698d;
        public c e;
        public c f;
        public c g;
        public c h;
        public f i;
        f j;
        public f k;
        f l;

        public a() {
            this.f30695a = new l();
            this.f30696b = new l();
            this.f30697c = new l();
            this.f30698d = new l();
            this.e = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
            this.f = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
            this.g = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
            this.h = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
            this.i = new f();
            this.j = new f();
            this.k = new f();
            this.l = new f();
        }

        public a(m mVar) {
            this.f30695a = new l();
            this.f30696b = new l();
            this.f30697c = new l();
            this.f30698d = new l();
            this.e = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
            this.f = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
            this.g = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
            this.h = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
            this.i = new f();
            this.j = new f();
            this.k = new f();
            this.l = new f();
            this.f30695a = mVar.f30692b;
            this.f30696b = mVar.f30693c;
            this.f30697c = mVar.f30694d;
            this.f30698d = mVar.e;
            this.e = mVar.f;
            this.f = mVar.g;
            this.g = mVar.h;
            this.h = mVar.i;
            this.i = mVar.j;
            this.j = mVar.k;
            this.k = mVar.l;
            this.l = mVar.m;
        }

        private static float e(d dVar) {
            if (dVar instanceof l) {
                return ((l) dVar).f30690a;
            }
            if (dVar instanceof e) {
                return ((e) dVar).f30674a;
            }
            return -1.0f;
        }

        public final a a(float f) {
            return b(f).c(f).d(f).e(f);
        }

        public final a a(d dVar) {
            this.f30695a = dVar;
            float e = e(dVar);
            if (e != -1.0f) {
                b(e);
            }
            return this;
        }

        public final m a() {
            return new m(this);
        }

        public final a b(float f) {
            this.e = new com.google.android.material.k.a(f);
            return this;
        }

        public final a b(d dVar) {
            this.f30696b = dVar;
            float e = e(dVar);
            if (e != -1.0f) {
                c(e);
            }
            return this;
        }

        public final a c(float f) {
            this.f = new com.google.android.material.k.a(f);
            return this;
        }

        public final a c(d dVar) {
            this.f30697c = dVar;
            float e = e(dVar);
            if (e != -1.0f) {
                d(e);
            }
            return this;
        }

        public final a d(float f) {
            this.g = new com.google.android.material.k.a(f);
            return this;
        }

        public final a d(d dVar) {
            this.f30698d = dVar;
            float e = e(dVar);
            if (e != -1.0f) {
                e(e);
            }
            return this;
        }

        public final a e(float f) {
            this.h = new com.google.android.material.k.a(f);
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/m$b.class */
    public interface b {
        c a(c cVar);
    }

    public m() {
        this.f30692b = new l();
        this.f30693c = new l();
        this.f30694d = new l();
        this.e = new l();
        this.f = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
        this.g = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
        this.h = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
        this.i = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);
        this.j = new f();
        this.k = new f();
        this.l = new f();
        this.m = new f();
    }

    private m(a aVar) {
        this.f30692b = aVar.f30695a;
        this.f30693c = aVar.f30696b;
        this.f30694d = aVar.f30697c;
        this.e = aVar.f30698d;
        this.f = aVar.e;
        this.g = aVar.f;
        this.h = aVar.g;
        this.i = aVar.h;
        this.j = aVar.i;
        this.k = aVar.j;
        this.l = aVar.k;
        this.m = aVar.l;
    }

    private static c a(TypedArray typedArray, int i, c cVar) {
        TypedValue peekValue = typedArray.peekValue(i);
        return peekValue == null ? cVar : peekValue.type == 5 ? new com.google.android.material.k.a(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics())) : peekValue.type == 6 ? new k(peekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    public static a a() {
        return new a();
    }

    public static a a(Context context, int i, int i2) {
        return a(context, i, i2, new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED));
    }

    private static a a(Context context, int i, int i2, c cVar) {
        Context context2 = context;
        int i3 = i;
        if (i2 != 0) {
            context2 = new ContextThemeWrapper(context, i);
            i3 = i2;
        }
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(i3, a.l.ShapeAppearance);
        try {
            int i4 = obtainStyledAttributes.getInt(a.l.ShapeAppearance_cornerFamily, 0);
            int i5 = obtainStyledAttributes.getInt(a.l.ShapeAppearance_cornerFamilyTopLeft, i4);
            int i6 = obtainStyledAttributes.getInt(a.l.ShapeAppearance_cornerFamilyTopRight, i4);
            int i7 = obtainStyledAttributes.getInt(a.l.ShapeAppearance_cornerFamilyBottomRight, i4);
            int i8 = obtainStyledAttributes.getInt(a.l.ShapeAppearance_cornerFamilyBottomLeft, i4);
            c a2 = a(obtainStyledAttributes, a.l.ShapeAppearance_cornerSize, cVar);
            c a3 = a(obtainStyledAttributes, a.l.ShapeAppearance_cornerSizeTopLeft, a2);
            c a4 = a(obtainStyledAttributes, a.l.ShapeAppearance_cornerSizeTopRight, a2);
            c a5 = a(obtainStyledAttributes, a.l.ShapeAppearance_cornerSizeBottomRight, a2);
            c a6 = a(obtainStyledAttributes, a.l.ShapeAppearance_cornerSizeBottomLeft, a2);
            a a7 = new a().a(i.a(i5));
            a7.e = a3;
            a b2 = a7.b(i.a(i6));
            b2.f = a4;
            a c2 = b2.c(i.a(i7));
            c2.g = a5;
            a d2 = c2.d(i.a(i8));
            d2.h = a6;
            return d2;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static a a(Context context, AttributeSet attributeSet, int i, int i2) {
        return a(context, attributeSet, i, i2, new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED));
    }

    public static a a(Context context, AttributeSet attributeSet, int i, int i2, c cVar) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.MaterialShape, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(a.l.MaterialShape_shapeAppearance, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(a.l.MaterialShape_shapeAppearanceOverlay, 0);
        obtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, cVar);
    }

    public final m a(float f) {
        return b().a(f).a();
    }

    public final boolean a(RectF rectF) {
        boolean z = this.m.getClass().equals(f.class) && this.k.getClass().equals(f.class) && this.j.getClass().equals(f.class) && this.l.getClass().equals(f.class);
        float a2 = this.f.a(rectF);
        return z && ((this.g.a(rectF) > a2 ? 1 : (this.g.a(rectF) == a2 ? 0 : -1)) == 0 && (this.i.a(rectF) > a2 ? 1 : (this.i.a(rectF) == a2 ? 0 : -1)) == 0 && (this.h.a(rectF) > a2 ? 1 : (this.h.a(rectF) == a2 ? 0 : -1)) == 0) && ((this.f30693c instanceof l) && (this.f30692b instanceof l) && (this.f30694d instanceof l) && (this.e instanceof l));
    }

    public final a b() {
        return new a(this);
    }
}
