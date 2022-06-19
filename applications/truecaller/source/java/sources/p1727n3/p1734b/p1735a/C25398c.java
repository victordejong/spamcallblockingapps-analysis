package p1727n3.p1734b.p1735a;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import p1727n3.p1734b.p1738c.p1739a.C25446d;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b.a.c */
/* loaded from: classes-dex2jar.jar:n3/b/a/c.class */
public class C25398c implements DrawerLayout.AbstractC0149c {

    /* renamed from: a */
    public final AbstractC25399a f70835a;

    /* renamed from: b */
    public final DrawerLayout f70836b;

    /* renamed from: c */
    public C25446d f70837c;

    /* renamed from: f */
    public final int f70840f;

    /* renamed from: g */
    public final int f70841g;

    /* renamed from: d */
    public boolean f70838d = true;

    /* renamed from: e */
    public boolean f70839e = true;

    /* renamed from: h */
    public boolean f70842h = false;

    /* renamed from: n3.b.a.c$a */
    /* loaded from: classes-dex2jar.jar:n3/b/a/c$a.class */
    public interface AbstractC25399a {
        /* renamed from: a */
        Context mo3599a();

        /* renamed from: b */
        boolean mo3598b();

        /* renamed from: c */
        Drawable mo3597c();

        /* renamed from: d */
        void mo3596d(Drawable drawable, int i);

        /* renamed from: e */
        void mo3595e(int i);
    }

    /* renamed from: n3.b.a.c$b */
    /* loaded from: classes-dex2jar.jar:n3/b/a/c$b.class */
    public interface AbstractC25400b {
        AbstractC25399a getDrawerToggleDelegate();
    }

    /* renamed from: n3.b.a.c$c */
    /* loaded from: classes-dex2jar.jar:n3/b/a/c$c.class */
    public static class C25401c implements AbstractC25399a {

        /* renamed from: a */
        public final Activity f70843a;

        public C25401c(Activity activity) {
            this.f70843a = activity;
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: a */
        public Context mo3599a() {
            ActionBar actionBar = this.f70843a.getActionBar();
            return actionBar != null ? actionBar.getThemedContext() : this.f70843a;
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: b */
        public boolean mo3598b() {
            ActionBar actionBar = this.f70843a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: c */
        public Drawable mo3597c() {
            ActionBar actionBar = this.f70843a.getActionBar();
            TypedArray obtainStyledAttributes = (actionBar != null ? actionBar.getThemedContext() : this.f70843a).obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: d */
        public void mo3596d(Drawable drawable, int i) {
            ActionBar actionBar = this.f70843a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i);
            }
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: e */
        public void mo3595e(int i) {
            ActionBar actionBar = this.f70843a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(i);
            }
        }
    }

    /* renamed from: n3.b.a.c$d */
    /* loaded from: classes-dex2jar.jar:n3/b/a/c$d.class */
    public static class C25402d implements AbstractC25399a {

        /* renamed from: a */
        public final Toolbar f70844a;

        /* renamed from: b */
        public final Drawable f70845b;

        /* renamed from: c */
        public final CharSequence f70846c;

        public C25402d(Toolbar toolbar) {
            this.f70844a = toolbar;
            this.f70845b = toolbar.getNavigationIcon();
            this.f70846c = toolbar.getNavigationContentDescription();
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: a */
        public Context mo3599a() {
            return this.f70844a.getContext();
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: b */
        public boolean mo3598b() {
            return true;
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: c */
        public Drawable mo3597c() {
            return this.f70845b;
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: d */
        public void mo3596d(Drawable drawable, int i) {
            this.f70844a.setNavigationIcon(drawable);
            if (i == 0) {
                this.f70844a.setNavigationContentDescription(this.f70846c);
            } else {
                this.f70844a.setNavigationContentDescription(i);
            }
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: e */
        public void mo3595e(int i) {
            if (i == 0) {
                this.f70844a.setNavigationContentDescription(this.f70846c);
            } else {
                this.f70844a.setNavigationContentDescription(i);
            }
        }
    }

    public C25398c(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, int i, int i2) {
        if (toolbar != null) {
            this.f70835a = new C25402d(toolbar);
            toolbar.setNavigationOnClickListener(new View$OnClickListenerC25397b(this));
        } else if (activity instanceof AbstractC25400b) {
            this.f70835a = ((AbstractC25400b) activity).getDrawerToggleDelegate();
        } else {
            this.f70835a = new C25401c(activity);
        }
        this.f70836b = drawerLayout;
        this.f70840f = i;
        this.f70841g = i2;
        this.f70837c = new C25446d(this.f70835a.mo3599a());
        this.f70835a.mo3597c();
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0149c
    /* renamed from: a */
    public void mo3674a(View view) {
        m3671e(1.0f);
        if (this.f70839e) {
            this.f70835a.mo3595e(this.f70841g);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0149c
    /* renamed from: b */
    public void mo3673b(View view) {
        m3671e(0.0f);
        if (this.f70839e) {
            this.f70835a.mo3595e(this.f70840f);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0149c
    /* renamed from: c */
    public void mo3672c(int i) {
    }

    /* renamed from: e */
    public final void m3671e(float f) {
        if (f == 1.0f) {
            C25446d c25446d = this.f70837c;
            if (!c25446d.f71087i) {
                c25446d.f71087i = true;
                c25446d.invalidateSelf();
            }
        } else if (f == 0.0f) {
            C25446d c25446d2 = this.f70837c;
            if (c25446d2.f71087i) {
                c25446d2.f71087i = false;
                c25446d2.invalidateSelf();
            }
        }
        C25446d c25446d3 = this.f70837c;
        if (c25446d3.f71088j != f) {
            c25446d3.f71088j = f;
            c25446d3.invalidateSelf();
        }
    }

    /* renamed from: f */
    public void m3670f() {
        if (this.f70836b.m42966o(8388611)) {
            m3671e(1.0f);
        } else {
            m3671e(0.0f);
        }
        if (this.f70839e) {
            C25446d c25446d = this.f70837c;
            int i = this.f70836b.m42966o(8388611) ? this.f70841g : this.f70840f;
            if (!this.f70842h && !this.f70835a.mo3598b()) {
                this.f70842h = true;
            }
            this.f70835a.mo3596d(c25446d, i);
        }
    }

    /* renamed from: g */
    public void m3669g() {
        int m42972i = this.f70836b.m42972i(8388611);
        DrawerLayout drawerLayout = this.f70836b;
        View m42975f = drawerLayout.m42975f(8388611);
        if ((m42975f != null ? drawerLayout.m42963r(m42975f) : false) && m42972i != 2) {
            this.f70836b.m42978c(8388611);
        } else if (m42972i == 1) {
        } else {
            DrawerLayout drawerLayout2 = this.f70836b;
            View m42975f2 = drawerLayout2.m42975f(8388611);
            if (m42975f2 != null) {
                drawerLayout2.m42961t(m42975f2, true);
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("No drawer view found with gravity ");
            m8728C.append(DrawerLayout.m42969l(8388611));
            throw new IllegalArgumentException(m8728C.toString());
        }
    }
}
