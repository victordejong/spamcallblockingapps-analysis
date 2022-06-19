package com.google.android.material.p374k;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
/* renamed from: com.google.android.material.k.m */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/m.class */
public class C14678m {

    /* renamed from: a */
    public static final AbstractC14665c f53526a = new C14676k(0.5f);

    /* renamed from: b */
    public C14666d f53527b;

    /* renamed from: c */
    public C14666d f53528c;

    /* renamed from: d */
    public C14666d f53529d;

    /* renamed from: e */
    public C14666d f53530e;

    /* renamed from: f */
    public AbstractC14665c f53531f;

    /* renamed from: g */
    public AbstractC14665c f53532g;

    /* renamed from: h */
    public AbstractC14665c f53533h;

    /* renamed from: i */
    public AbstractC14665c f53534i;

    /* renamed from: j */
    public C14668f f53535j;

    /* renamed from: k */
    C14668f f53536k;

    /* renamed from: l */
    C14668f f53537l;

    /* renamed from: m */
    C14668f f53538m;

    /* renamed from: com.google.android.material.k.m$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/m$a.class */
    public static final class C14680a {

        /* renamed from: a */
        C14666d f53539a;

        /* renamed from: b */
        C14666d f53540b;

        /* renamed from: c */
        C14666d f53541c;

        /* renamed from: d */
        C14666d f53542d;

        /* renamed from: e */
        public AbstractC14665c f53543e;

        /* renamed from: f */
        public AbstractC14665c f53544f;

        /* renamed from: g */
        public AbstractC14665c f53545g;

        /* renamed from: h */
        public AbstractC14665c f53546h;

        /* renamed from: i */
        public C14668f f53547i;

        /* renamed from: j */
        C14668f f53548j;

        /* renamed from: k */
        public C14668f f53549k;

        /* renamed from: l */
        C14668f f53550l;

        public C14680a() {
            this.f53539a = new C14677l();
            this.f53540b = new C14677l();
            this.f53541c = new C14677l();
            this.f53542d = new C14677l();
            this.f53543e = new C14663a(BitmapDescriptorFactory.HUE_RED);
            this.f53544f = new C14663a(BitmapDescriptorFactory.HUE_RED);
            this.f53545g = new C14663a(BitmapDescriptorFactory.HUE_RED);
            this.f53546h = new C14663a(BitmapDescriptorFactory.HUE_RED);
            this.f53547i = new C14668f();
            this.f53548j = new C14668f();
            this.f53549k = new C14668f();
            this.f53550l = new C14668f();
        }

        public C14680a(C14678m c14678m) {
            this.f53539a = new C14677l();
            this.f53540b = new C14677l();
            this.f53541c = new C14677l();
            this.f53542d = new C14677l();
            this.f53543e = new C14663a(BitmapDescriptorFactory.HUE_RED);
            this.f53544f = new C14663a(BitmapDescriptorFactory.HUE_RED);
            this.f53545g = new C14663a(BitmapDescriptorFactory.HUE_RED);
            this.f53546h = new C14663a(BitmapDescriptorFactory.HUE_RED);
            this.f53547i = new C14668f();
            this.f53548j = new C14668f();
            this.f53549k = new C14668f();
            this.f53550l = new C14668f();
            this.f53539a = c14678m.f53527b;
            this.f53540b = c14678m.f53528c;
            this.f53541c = c14678m.f53529d;
            this.f53542d = c14678m.f53530e;
            this.f53543e = c14678m.f53531f;
            this.f53544f = c14678m.f53532g;
            this.f53545g = c14678m.f53533h;
            this.f53546h = c14678m.f53534i;
            this.f53547i = c14678m.f53535j;
            this.f53548j = c14678m.f53536k;
            this.f53549k = c14678m.f53537l;
            this.f53550l = c14678m.f53538m;
        }

        /* renamed from: e */
        private static float m10411e(C14666d c14666d) {
            if (c14666d instanceof C14677l) {
                return ((C14677l) c14666d).f53525a;
            }
            if (!(c14666d instanceof C14667e)) {
                return -1.0f;
            }
            return ((C14667e) c14666d).f53471a;
        }

        /* renamed from: a */
        public final C14680a m10420a(float f) {
            return m10418b(f).m10416c(f).m10414d(f).m10412e(f);
        }

        /* renamed from: a */
        public final C14680a m10419a(C14666d c14666d) {
            this.f53539a = c14666d;
            float m10411e = m10411e(c14666d);
            if (m10411e != -1.0f) {
                m10418b(m10411e);
            }
            return this;
        }

        /* renamed from: a */
        public final C14678m m10421a() {
            return new C14678m(this);
        }

        /* renamed from: b */
        public final C14680a m10418b(float f) {
            this.f53543e = new C14663a(f);
            return this;
        }

        /* renamed from: b */
        public final C14680a m10417b(C14666d c14666d) {
            this.f53540b = c14666d;
            float m10411e = m10411e(c14666d);
            if (m10411e != -1.0f) {
                m10416c(m10411e);
            }
            return this;
        }

        /* renamed from: c */
        public final C14680a m10416c(float f) {
            this.f53544f = new C14663a(f);
            return this;
        }

        /* renamed from: c */
        public final C14680a m10415c(C14666d c14666d) {
            this.f53541c = c14666d;
            float m10411e = m10411e(c14666d);
            if (m10411e != -1.0f) {
                m10414d(m10411e);
            }
            return this;
        }

        /* renamed from: d */
        public final C14680a m10414d(float f) {
            this.f53545g = new C14663a(f);
            return this;
        }

        /* renamed from: d */
        public final C14680a m10413d(C14666d c14666d) {
            this.f53542d = c14666d;
            float m10411e = m10411e(c14666d);
            if (m10411e != -1.0f) {
                m10412e(m10411e);
            }
            return this;
        }

        /* renamed from: e */
        public final C14680a m10412e(float f) {
            this.f53546h = new C14663a(f);
            return this;
        }
    }

    /* renamed from: com.google.android.material.k.m$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/m$b.class */
    public interface AbstractC14681b {
        /* renamed from: a */
        AbstractC14665c mo10410a(AbstractC14665c abstractC14665c);
    }

    public C14678m() {
        this.f53527b = new C14677l();
        this.f53528c = new C14677l();
        this.f53529d = new C14677l();
        this.f53530e = new C14677l();
        this.f53531f = new C14663a(BitmapDescriptorFactory.HUE_RED);
        this.f53532g = new C14663a(BitmapDescriptorFactory.HUE_RED);
        this.f53533h = new C14663a(BitmapDescriptorFactory.HUE_RED);
        this.f53534i = new C14663a(BitmapDescriptorFactory.HUE_RED);
        this.f53535j = new C14668f();
        this.f53536k = new C14668f();
        this.f53537l = new C14668f();
        this.f53538m = new C14668f();
    }

    private C14678m(C14680a c14680a) {
        this.f53527b = c14680a.f53539a;
        this.f53528c = c14680a.f53540b;
        this.f53529d = c14680a.f53541c;
        this.f53530e = c14680a.f53542d;
        this.f53531f = c14680a.f53543e;
        this.f53532g = c14680a.f53544f;
        this.f53533h = c14680a.f53545g;
        this.f53534i = c14680a.f53546h;
        this.f53535j = c14680a.f53547i;
        this.f53536k = c14680a.f53548j;
        this.f53537l = c14680a.f53549k;
        this.f53538m = c14680a.f53550l;
    }

    /* renamed from: a */
    private static AbstractC14665c m10424a(TypedArray typedArray, int i, AbstractC14665c abstractC14665c) {
        TypedValue peekValue = typedArray.peekValue(i);
        return peekValue == null ? abstractC14665c : peekValue.type == 5 ? new C14663a(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics())) : peekValue.type == 6 ? new C14676k(peekValue.getFraction(1.0f, 1.0f)) : abstractC14665c;
    }

    /* renamed from: a */
    public static C14680a m10430a() {
        return new C14680a();
    }

    /* renamed from: a */
    public static C14680a m10428a(Context context, int i, int i2) {
        return m10427a(context, i, i2, new C14663a(BitmapDescriptorFactory.HUE_RED));
    }

    /* renamed from: a */
    private static C14680a m10427a(Context context, int i, int i2, AbstractC14665c abstractC14665c) {
        ContextThemeWrapper contextThemeWrapper = context;
        int i3 = i;
        if (i2 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(context, i);
            i3 = i2;
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(i3, C14376a.C14388l.ShapeAppearance);
        try {
            int i4 = obtainStyledAttributes.getInt(C14376a.C14388l.ShapeAppearance_cornerFamily, 0);
            int i5 = obtainStyledAttributes.getInt(C14376a.C14388l.ShapeAppearance_cornerFamilyTopLeft, i4);
            int i6 = obtainStyledAttributes.getInt(C14376a.C14388l.ShapeAppearance_cornerFamilyTopRight, i4);
            int i7 = obtainStyledAttributes.getInt(C14376a.C14388l.ShapeAppearance_cornerFamilyBottomRight, i4);
            int i8 = obtainStyledAttributes.getInt(C14376a.C14388l.ShapeAppearance_cornerFamilyBottomLeft, i4);
            AbstractC14665c m10424a = m10424a(obtainStyledAttributes, C14376a.C14388l.ShapeAppearance_cornerSize, abstractC14665c);
            AbstractC14665c m10424a2 = m10424a(obtainStyledAttributes, C14376a.C14388l.ShapeAppearance_cornerSizeTopLeft, m10424a);
            AbstractC14665c m10424a3 = m10424a(obtainStyledAttributes, C14376a.C14388l.ShapeAppearance_cornerSizeTopRight, m10424a);
            AbstractC14665c m10424a4 = m10424a(obtainStyledAttributes, C14376a.C14388l.ShapeAppearance_cornerSizeBottomRight, m10424a);
            AbstractC14665c m10424a5 = m10424a(obtainStyledAttributes, C14376a.C14388l.ShapeAppearance_cornerSizeBottomLeft, m10424a);
            C14680a m10419a = new C14680a().m10419a(C14674i.m10438a(i5));
            m10419a.f53543e = m10424a2;
            C14680a m10417b = m10419a.m10417b(C14674i.m10438a(i6));
            m10417b.f53544f = m10424a3;
            C14680a m10415c = m10417b.m10415c(C14674i.m10438a(i7));
            m10415c.f53545g = m10424a4;
            C14680a m10413d = m10415c.m10413d(C14674i.m10438a(i8));
            m10413d.f53546h = m10424a5;
            return m10413d;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public static C14680a m10426a(Context context, AttributeSet attributeSet, int i, int i2) {
        return m10425a(context, attributeSet, i, i2, new C14663a(BitmapDescriptorFactory.HUE_RED));
    }

    /* renamed from: a */
    public static C14680a m10425a(Context context, AttributeSet attributeSet, int i, int i2, AbstractC14665c abstractC14665c) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.MaterialShape, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialShape_shapeAppearance, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialShape_shapeAppearanceOverlay, 0);
        obtainStyledAttributes.recycle();
        return m10427a(context, resourceId, resourceId2, abstractC14665c);
    }

    /* renamed from: a */
    public final C14678m m10429a(float f) {
        return m10422b().m10420a(f).m10421a();
    }

    /* renamed from: a */
    public final boolean m10423a(RectF rectF) {
        boolean z = this.f53538m.getClass().equals(C14668f.class) && this.f53536k.getClass().equals(C14668f.class) && this.f53535j.getClass().equals(C14668f.class) && this.f53537l.getClass().equals(C14668f.class);
        float mo10432a = this.f53531f.mo10432a(rectF);
        return z && ((this.f53532g.mo10432a(rectF) > mo10432a ? 1 : (this.f53532g.mo10432a(rectF) == mo10432a ? 0 : -1)) == 0 && (this.f53534i.mo10432a(rectF) > mo10432a ? 1 : (this.f53534i.mo10432a(rectF) == mo10432a ? 0 : -1)) == 0 && (this.f53533h.mo10432a(rectF) > mo10432a ? 1 : (this.f53533h.mo10432a(rectF) == mo10432a ? 0 : -1)) == 0) && ((this.f53528c instanceof C14677l) && (this.f53527b instanceof C14677l) && (this.f53529d instanceof C14677l) && (this.f53530e instanceof C14677l));
    }

    /* renamed from: b */
    public final C14680a m10422b() {
        return new C14680a(this);
    }
}
