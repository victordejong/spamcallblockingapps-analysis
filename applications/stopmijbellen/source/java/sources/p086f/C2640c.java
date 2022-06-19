package p086f;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import p108h.C2987d;
/* renamed from: f.c */
/* loaded from: classes-dex2jar.jar:f/c.class */
public class C2640c implements DrawerLayout.AbstractC0337d {

    /* renamed from: a */
    public final AbstractC2641a f9071a;

    /* renamed from: b */
    public final DrawerLayout f9072b;

    /* renamed from: c */
    public C2987d f9073c;

    /* renamed from: f */
    public final int f9076f;

    /* renamed from: g */
    public final int f9077g;

    /* renamed from: d */
    public boolean f9074d = true;

    /* renamed from: e */
    public boolean f9075e = true;

    /* renamed from: h */
    public boolean f9078h = false;

    /* renamed from: f.c$a */
    /* loaded from: classes-dex2jar.jar:f/c$a.class */
    public interface AbstractC2641a {
        /* renamed from: a */
        void mo3312a(Drawable drawable, int i);

        /* renamed from: b */
        boolean mo3311b();

        /* renamed from: c */
        Drawable mo3310c();

        /* renamed from: d */
        void mo3309d(int i);

        /* renamed from: e */
        Context mo3308e();
    }

    /* renamed from: f.c$b */
    /* loaded from: classes-dex2jar.jar:f/c$b.class */
    public interface AbstractC2642b {
        /* renamed from: e */
        AbstractC2641a mo3369e();
    }

    /* renamed from: f.c$c */
    /* loaded from: classes-dex2jar.jar:f/c$c.class */
    public static class C2643c implements AbstractC2641a {

        /* renamed from: a */
        public final Activity f9079a;

        public C2643c(Activity activity) {
            this.f9079a = activity;
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: a */
        public void mo3312a(Drawable drawable, int i) {
            ActionBar actionBar = this.f9079a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i);
            }
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: b */
        public boolean mo3311b() {
            ActionBar actionBar = this.f9079a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: c */
        public Drawable mo3310c() {
            ActionBar actionBar = this.f9079a.getActionBar();
            TypedArray obtainStyledAttributes = (actionBar != null ? actionBar.getThemedContext() : this.f9079a).obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: d */
        public void mo3309d(int i) {
            ActionBar actionBar = this.f9079a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(i);
            }
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: e */
        public Context mo3308e() {
            ActionBar actionBar = this.f9079a.getActionBar();
            return actionBar != null ? actionBar.getThemedContext() : this.f9079a;
        }
    }

    /* renamed from: f.c$d */
    /* loaded from: classes-dex2jar.jar:f/c$d.class */
    public static class C2644d implements AbstractC2641a {

        /* renamed from: a */
        public final Toolbar f9080a;

        /* renamed from: b */
        public final Drawable f9081b;

        /* renamed from: c */
        public final CharSequence f9082c;

        public C2644d(Toolbar toolbar) {
            this.f9080a = toolbar;
            this.f9081b = toolbar.getNavigationIcon();
            this.f9082c = toolbar.getNavigationContentDescription();
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: a */
        public void mo3312a(Drawable drawable, int i) {
            this.f9080a.setNavigationIcon(drawable);
            if (i == 0) {
                this.f9080a.setNavigationContentDescription(this.f9082c);
            } else {
                this.f9080a.setNavigationContentDescription(i);
            }
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: b */
        public boolean mo3311b() {
            return true;
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: c */
        public Drawable mo3310c() {
            return this.f9081b;
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: d */
        public void mo3309d(int i) {
            if (i == 0) {
                this.f9080a.setNavigationContentDescription(this.f9082c);
            } else {
                this.f9080a.setNavigationContentDescription(i);
            }
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: e */
        public Context mo3308e() {
            return this.f9080a.getContext();
        }
    }

    public C2640c(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, int i, int i2) {
        if (toolbar != null) {
            this.f9071a = new C2644d(toolbar);
            toolbar.setNavigationOnClickListener(new View$OnClickListenerC2639b(this));
        } else if (activity instanceof AbstractC2642b) {
            this.f9071a = ((AbstractC2642b) activity).mo3369e();
        } else {
            this.f9071a = new C2643c(activity);
        }
        this.f9072b = drawerLayout;
        this.f9076f = i;
        this.f9077g = i2;
        this.f9073c = new C2987d(this.f9071a.mo3308e());
        this.f9071a.mo3310c();
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0337d
    /* renamed from: a */
    public void mo3375a(int i) {
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0337d
    /* renamed from: b */
    public void mo3374b(View view, float f) {
        if (this.f9074d) {
            m3372e(Math.min(1.0f, Math.max(0.0f, f)));
        } else {
            m3372e(0.0f);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0337d
    /* renamed from: d */
    public void mo3373d(View view) {
        m3372e(0.0f);
        if (this.f9075e) {
            this.f9071a.mo3309d(this.f9076f);
        }
    }

    /* renamed from: e */
    public final void m3372e(float f) {
        if (f == 1.0f) {
            C2987d c2987d = this.f9073c;
            if (!c2987d.f10077i) {
                c2987d.f10077i = true;
                c2987d.invalidateSelf();
            }
        } else if (f == 0.0f) {
            C2987d c2987d2 = this.f9073c;
            if (c2987d2.f10077i) {
                c2987d2.f10077i = false;
                c2987d2.invalidateSelf();
            }
        }
        C2987d c2987d3 = this.f9073c;
        if (c2987d3.f10078j != f) {
            c2987d3.f10078j = f;
            c2987d3.invalidateSelf();
        }
    }
}
