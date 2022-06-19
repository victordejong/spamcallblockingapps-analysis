package androidx.appcompat.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.appcompat.app.C0194b;
import androidx.appcompat.p019b.p020a.C0233d;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.appcompat.app.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a.class */
public final class C0188a implements DrawerLayout.AbstractC0988c {

    /* renamed from: a */
    final DrawerLayout f494a;

    /* renamed from: b */
    boolean f495b;

    /* renamed from: c */
    View.OnClickListener f496c;

    /* renamed from: d */
    private final AbstractC0190a f497d;

    /* renamed from: e */
    private C0233d f498e;

    /* renamed from: f */
    private boolean f499f;

    /* renamed from: g */
    private Drawable f500g;

    /* renamed from: h */
    private final int f501h;

    /* renamed from: i */
    private final int f502i;

    /* renamed from: j */
    private boolean f503j;

    /* renamed from: androidx.appcompat.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$a.class */
    public interface AbstractC0190a {
        /* renamed from: a */
        Drawable mo46305a();

        /* renamed from: a */
        void mo46304a(int i);

        /* renamed from: b */
        Context mo46303b();
    }

    /* renamed from: androidx.appcompat.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$b.class */
    public interface AbstractC0191b {
        AbstractC0190a getDrawerToggleDelegate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$c.class */
    public static final class C0192c implements AbstractC0190a {

        /* renamed from: a */
        private final Activity f505a;

        /* renamed from: b */
        private C0194b.C0195a f506b;

        C0192c(Activity activity) {
            this.f505a = activity;
        }

        @Override // androidx.appcompat.app.C0188a.AbstractC0190a
        /* renamed from: a */
        public final Drawable mo46305a() {
            if (Build.VERSION.SDK_INT >= 18) {
                TypedArray obtainStyledAttributes = mo46303b().obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
                Drawable drawable = obtainStyledAttributes.getDrawable(0);
                obtainStyledAttributes.recycle();
                return drawable;
            }
            return C0194b.m46302a(this.f505a);
        }

        @Override // androidx.appcompat.app.C0188a.AbstractC0190a
        /* renamed from: a */
        public final void mo46304a(int i) {
            if (Build.VERSION.SDK_INT < 18) {
                this.f506b = C0194b.m46301a(this.f506b, this.f505a, i);
                return;
            }
            ActionBar actionBar = this.f505a.getActionBar();
            if (actionBar == null) {
                return;
            }
            actionBar.setHomeActionContentDescription(i);
        }

        @Override // androidx.appcompat.app.C0188a.AbstractC0190a
        /* renamed from: b */
        public final Context mo46303b() {
            ActionBar actionBar = this.f505a.getActionBar();
            return actionBar != null ? actionBar.getThemedContext() : this.f505a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$d.class */
    public static final class C0193d implements AbstractC0190a {

        /* renamed from: a */
        final Toolbar f507a;

        /* renamed from: b */
        final Drawable f508b;

        /* renamed from: c */
        final CharSequence f509c;

        C0193d(Toolbar toolbar) {
            this.f507a = toolbar;
            this.f508b = toolbar.m45837e();
            this.f509c = toolbar.m45839d();
        }

        @Override // androidx.appcompat.app.C0188a.AbstractC0190a
        /* renamed from: a */
        public final Drawable mo46305a() {
            return this.f508b;
        }

        @Override // androidx.appcompat.app.C0188a.AbstractC0190a
        /* renamed from: a */
        public final void mo46304a(int i) {
            if (i == 0) {
                this.f507a.setNavigationContentDescription(this.f509c);
            } else {
                this.f507a.setNavigationContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.C0188a.AbstractC0190a
        /* renamed from: b */
        public final Context mo46303b() {
            return this.f507a.getContext();
        }
    }

    C0188a(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, C0233d c0233d, int i, int i2) {
        this.f499f = true;
        this.f495b = true;
        this.f503j = false;
        if (toolbar != null) {
            this.f497d = new C0193d(toolbar);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.app.a.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (!C0188a.this.f495b) {
                        if (C0188a.this.f496c == null) {
                            return;
                        }
                        C0188a.this.f496c.onClick(view);
                        return;
                    }
                    C0188a c0188a = C0188a.this;
                    int m43869a = c0188a.f494a.m43869a(8388611);
                    View m43858b = c0188a.f494a.m43858b(8388611);
                    if ((m43858b != null ? DrawerLayout.m43844f(m43858b) : false) && m43869a != 2) {
                        c0188a.f494a.m43870a();
                    } else if (m43869a == 1) {
                    } else {
                        c0188a.f494a.m43853c(8388611);
                    }
                }
            });
        } else if (activity instanceof AbstractC0191b) {
            this.f497d = ((AbstractC0191b) activity).getDrawerToggleDelegate();
        } else {
            this.f497d = new C0192c(activity);
        }
        this.f494a = drawerLayout;
        this.f501h = i;
        this.f502i = i2;
        if (c0233d == null) {
            this.f498e = new C0233d(this.f497d.mo46303b());
        } else {
            this.f498e = c0233d;
        }
        this.f500g = this.f497d.mo46305a();
    }

    public C0188a(Activity activity, DrawerLayout drawerLayout, int i, int i2) {
        this(activity, null, drawerLayout, null, i, i2);
    }

    public C0188a(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, int i, int i2) {
        this(activity, toolbar, drawerLayout, null, i, i2);
    }

    /* renamed from: a */
    private void m46307a(int i) {
        this.f497d.mo46304a(i);
    }

    /* renamed from: b */
    private void m46306b(float f) {
        if (f == 1.0f) {
            this.f498e.m46181a(true);
        } else if (f == BitmapDescriptorFactory.HUE_RED) {
            this.f498e.m46181a(false);
        }
        this.f498e.m46182a(f);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0988c
    /* renamed from: a */
    public final void mo30555a() {
        m46306b(1.0f);
        if (this.f495b) {
            m46307a(this.f502i);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0988c
    /* renamed from: a */
    public final void mo30554a(float f) {
        if (this.f499f) {
            m46306b(Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, f)));
        } else {
            m46306b(BitmapDescriptorFactory.HUE_RED);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0988c
    /* renamed from: b */
    public final void mo30553b() {
        m46306b(BitmapDescriptorFactory.HUE_RED);
        if (this.f495b) {
            m46307a(this.f501h);
        }
    }
}
