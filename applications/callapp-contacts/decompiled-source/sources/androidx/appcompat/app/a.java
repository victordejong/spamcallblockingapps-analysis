package androidx.appcompat.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.appcompat.app.b;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a.class */
public final class a implements DrawerLayout.c {

    /* renamed from: a  reason: collision with root package name */
    final DrawerLayout f634a;

    /* renamed from: b  reason: collision with root package name */
    boolean f635b;

    /* renamed from: c  reason: collision with root package name */
    View.OnClickListener f636c;

    /* renamed from: d  reason: collision with root package name */
    private final AbstractC0020a f637d;
    private androidx.appcompat.b.a.d e;
    private boolean f;
    private Drawable g;
    private final int h;
    private final int i;
    private boolean j;

    /* renamed from: androidx.appcompat.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$a.class */
    public interface AbstractC0020a {
        Drawable a();

        void a(int i);

        Context b();
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$b.class */
    public interface b {
        AbstractC0020a getDrawerToggleDelegate();
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$c.class */
    static final class c implements AbstractC0020a {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f639a;

        /* renamed from: b  reason: collision with root package name */
        private b.a f640b;

        c(Activity activity) {
            this.f639a = activity;
        }

        @Override // androidx.appcompat.app.a.AbstractC0020a
        public final Drawable a() {
            if (Build.VERSION.SDK_INT < 18) {
                return androidx.appcompat.app.b.a(this.f639a);
            }
            TypedArray obtainStyledAttributes = b().obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // androidx.appcompat.app.a.AbstractC0020a
        public final void a(int i) {
            if (Build.VERSION.SDK_INT >= 18) {
                ActionBar actionBar = this.f639a.getActionBar();
                if (actionBar != null) {
                    actionBar.setHomeActionContentDescription(i);
                    return;
                }
                return;
            }
            this.f640b = androidx.appcompat.app.b.a(this.f640b, this.f639a, i);
        }

        @Override // androidx.appcompat.app.a.AbstractC0020a
        public final Context b() {
            ActionBar actionBar = this.f639a.getActionBar();
            return actionBar != null ? actionBar.getThemedContext() : this.f639a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$d.class */
    static final class d implements AbstractC0020a {

        /* renamed from: a  reason: collision with root package name */
        final Toolbar f641a;

        /* renamed from: b  reason: collision with root package name */
        final Drawable f642b;

        /* renamed from: c  reason: collision with root package name */
        final CharSequence f643c;

        d(Toolbar toolbar) {
            this.f641a = toolbar;
            this.f642b = toolbar.e();
            this.f643c = toolbar.d();
        }

        @Override // androidx.appcompat.app.a.AbstractC0020a
        public final Drawable a() {
            return this.f642b;
        }

        @Override // androidx.appcompat.app.a.AbstractC0020a
        public final void a(int i) {
            if (i == 0) {
                this.f641a.setNavigationContentDescription(this.f643c);
            } else {
                this.f641a.setNavigationContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.a.AbstractC0020a
        public final Context b() {
            return this.f641a.getContext();
        }
    }

    a(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, androidx.appcompat.b.a.d dVar, int i, int i2) {
        this.f = true;
        this.f635b = true;
        this.j = false;
        if (toolbar != null) {
            this.f637d = new d(toolbar);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.app.a.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (a.this.f635b) {
                        a aVar = a.this;
                        int a2 = aVar.f634a.a(8388611);
                        View b2 = aVar.f634a.b(8388611);
                        if ((b2 != null ? DrawerLayout.f(b2) : false) && a2 != 2) {
                            aVar.f634a.a();
                        } else if (a2 != 1) {
                            aVar.f634a.c(8388611);
                        }
                    } else if (a.this.f636c != null) {
                        a.this.f636c.onClick(view);
                    }
                }
            });
        } else if (activity instanceof b) {
            this.f637d = ((b) activity).getDrawerToggleDelegate();
        } else {
            this.f637d = new c(activity);
        }
        this.f634a = drawerLayout;
        this.h = i;
        this.i = i2;
        if (dVar == null) {
            this.e = new androidx.appcompat.b.a.d(this.f637d.b());
        } else {
            this.e = dVar;
        }
        this.g = this.f637d.a();
    }

    public a(Activity activity, DrawerLayout drawerLayout, int i, int i2) {
        this(activity, null, drawerLayout, null, i, i2);
    }

    public a(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, int i, int i2) {
        this(activity, toolbar, drawerLayout, null, i, i2);
    }

    private void a(int i) {
        this.f637d.a(i);
    }

    private void b(float f) {
        if (f == 1.0f) {
            this.e.a(true);
        } else if (f == BitmapDescriptorFactory.HUE_RED) {
            this.e.a(false);
        }
        this.e.a(f);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.c
    public final void a() {
        b(1.0f);
        if (this.f635b) {
            a(this.i);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.c
    public final void a(float f) {
        if (this.f) {
            b(Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, f)));
        } else {
            b(BitmapDescriptorFactory.HUE_RED);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.c
    public final void b() {
        b(BitmapDescriptorFactory.HUE_RED);
        if (this.f635b) {
            a(this.h);
        }
    }
}
