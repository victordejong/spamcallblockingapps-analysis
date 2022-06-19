package androidx.appcompat.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.app.C0088c;
import androidx.appcompat.p008b.p009a.C0147d;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.appcompat.app.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b.class */
public class C0082b implements DrawerLayout.AbstractC0658c {

    /* renamed from: a */
    boolean f238a;

    /* renamed from: b */
    View.OnClickListener f239b;

    /* renamed from: c */
    private final AbstractC0084a f240c;

    /* renamed from: d */
    private final DrawerLayout f241d;

    /* renamed from: e */
    private C0147d f242e;

    /* renamed from: f */
    private boolean f243f;

    /* renamed from: g */
    private Drawable f244g;

    /* renamed from: h */
    private boolean f245h;

    /* renamed from: i */
    private final int f246i;

    /* renamed from: j */
    private final int f247j;

    /* renamed from: k */
    private boolean f248k;

    /* renamed from: androidx.appcompat.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b$a.class */
    public interface AbstractC0084a {
        /* renamed from: a */
        Drawable mo7806a();

        /* renamed from: a */
        void mo7805a(int i);

        /* renamed from: a */
        void mo7804a(Drawable drawable, int i);

        /* renamed from: b */
        Context mo7803b();

        /* renamed from: c */
        boolean mo7802c();
    }

    /* renamed from: androidx.appcompat.app.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b$b.class */
    public interface AbstractC0085b {
        /* renamed from: a */
        AbstractC0084a mo7909a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b$c.class */
    public static class C0086c implements AbstractC0084a {

        /* renamed from: a */
        private final Activity f250a;

        /* renamed from: b */
        private C0088c.C0089a f251b;

        C0086c(Activity activity) {
            this.f250a = activity;
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: a */
        public Drawable mo7806a() {
            if (Build.VERSION.SDK_INT >= 18) {
                TypedArray obtainStyledAttributes = mo7803b().obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
                Drawable drawable = obtainStyledAttributes.getDrawable(0);
                obtainStyledAttributes.recycle();
                return drawable;
            }
            return C0088c.m7934a(this.f250a);
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: a */
        public void mo7805a(int i) {
            if (Build.VERSION.SDK_INT < 18) {
                this.f251b = C0088c.m7932a(this.f251b, this.f250a, i);
                return;
            }
            ActionBar actionBar = this.f250a.getActionBar();
            if (actionBar == null) {
                return;
            }
            actionBar.setHomeActionContentDescription(i);
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: a */
        public void mo7804a(Drawable drawable, int i) {
            ActionBar actionBar = this.f250a.getActionBar();
            if (actionBar != null) {
                if (Build.VERSION.SDK_INT >= 18) {
                    actionBar.setHomeAsUpIndicator(drawable);
                    actionBar.setHomeActionContentDescription(i);
                    return;
                }
                actionBar.setDisplayShowHomeEnabled(true);
                this.f251b = C0088c.m7933a(this.f250a, drawable, i);
                actionBar.setDisplayShowHomeEnabled(false);
            }
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: b */
        public Context mo7803b() {
            ActionBar actionBar = this.f250a.getActionBar();
            return actionBar != null ? actionBar.getThemedContext() : this.f250a;
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: c */
        public boolean mo7802c() {
            ActionBar actionBar = this.f250a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b$d.class */
    public static class C0087d implements AbstractC0084a {

        /* renamed from: a */
        final Toolbar f252a;

        /* renamed from: b */
        final Drawable f253b;

        /* renamed from: c */
        final CharSequence f254c;

        C0087d(Toolbar toolbar) {
            this.f252a = toolbar;
            this.f253b = toolbar.getNavigationIcon();
            this.f254c = toolbar.getNavigationContentDescription();
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: a */
        public Drawable mo7806a() {
            return this.f253b;
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: a */
        public void mo7805a(int i) {
            if (i == 0) {
                this.f252a.setNavigationContentDescription(this.f254c);
            } else {
                this.f252a.setNavigationContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: a */
        public void mo7804a(Drawable drawable, int i) {
            this.f252a.setNavigationIcon(drawable);
            mo7805a(i);
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: b */
        public Context mo7803b() {
            return this.f252a.getContext();
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: c */
        public boolean mo7802c() {
            return true;
        }
    }

    C0082b(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, C0147d c0147d, int i, int i2) {
        this.f243f = true;
        this.f238a = true;
        this.f248k = false;
        if (toolbar != null) {
            this.f240c = new C0087d(toolbar);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.app.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (C0082b.this.f238a) {
                        C0082b.this.m7937b();
                    } else if (C0082b.this.f239b == null) {
                    } else {
                        C0082b.this.f239b.onClick(view);
                    }
                }
            });
        } else if (activity instanceof AbstractC0085b) {
            this.f240c = ((AbstractC0085b) activity).mo7909a();
        } else {
            this.f240c = new C0086c(activity);
        }
        this.f241d = drawerLayout;
        this.f246i = i;
        this.f247j = i2;
        if (c0147d == null) {
            this.f242e = new C0147d(this.f240c.mo7803b());
        } else {
            this.f242e = c0147d;
        }
        this.f244g = m7935c();
    }

    public C0082b(Activity activity, DrawerLayout drawerLayout, int i, int i2) {
        this(activity, null, drawerLayout, null, i, i2);
    }

    /* renamed from: a */
    private void m7941a(float f) {
        if (f == 1.0f) {
            this.f242e.m7676b(true);
        } else if (f == FlexItem.FLEX_GROW_DEFAULT) {
            this.f242e.m7676b(false);
        }
        this.f242e.m7675c(f);
    }

    /* renamed from: a */
    public void m7942a() {
        if (this.f241d.m5795g(8388611)) {
            m7941a(1.0f);
        } else {
            m7941a(FlexItem.FLEX_GROW_DEFAULT);
        }
        if (this.f238a) {
            m7939a(this.f242e, this.f241d.m5795g(8388611) ? this.f247j : this.f246i);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0658c
    /* renamed from: a */
    public void mo5779a(int i) {
    }

    /* renamed from: a */
    public void m7940a(Configuration configuration) {
        if (!this.f245h) {
            this.f244g = m7935c();
        }
        m7942a();
    }

    /* renamed from: a */
    void m7939a(Drawable drawable, int i) {
        if (!this.f248k && !this.f240c.mo7802c()) {
            Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
            this.f248k = true;
        }
        this.f240c.mo7804a(drawable, i);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0658c
    /* renamed from: a */
    public void mo750a(View view) {
        m7941a(1.0f);
        if (this.f238a) {
            m7936b(this.f247j);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0658c
    /* renamed from: a */
    public void mo5778a(View view, float f) {
        if (this.f243f) {
            m7941a(Math.min(1.0f, Math.max((float) FlexItem.FLEX_GROW_DEFAULT, f)));
        } else {
            m7941a(FlexItem.FLEX_GROW_DEFAULT);
        }
    }

    /* renamed from: a */
    public boolean m7938a(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.f238a) {
            return false;
        }
        m7937b();
        return true;
    }

    /* renamed from: b */
    void m7937b() {
        int m5831a = this.f241d.m5831a(8388611);
        if (this.f241d.m5792h(8388611) && m5831a != 2) {
            this.f241d.m5798f(8388611);
        } else if (m5831a == 1) {
        } else {
            this.f241d.m5801e(8388611);
        }
    }

    /* renamed from: b */
    void m7936b(int i) {
        this.f240c.mo7805a(i);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0658c
    /* renamed from: b */
    public void mo749b(View view) {
        m7941a(FlexItem.FLEX_GROW_DEFAULT);
        if (this.f238a) {
            m7936b(this.f246i);
        }
    }

    /* renamed from: c */
    Drawable m7935c() {
        return this.f240c.mo7806a();
    }
}
