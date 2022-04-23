package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/d.class */
public final class d extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    public int f732a;

    /* renamed from: b  reason: collision with root package name */
    private Resources.Theme f733b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f734c;

    /* renamed from: d  reason: collision with root package name */
    private Configuration f735d;
    private Resources e;

    public d() {
        super(null);
    }

    public d(Context context, int i) {
        super(context);
        this.f732a = i;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f733b = theme;
    }

    private void a() {
        if (this.f733b == null) {
            this.f733b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f733b.setTo(theme);
            }
        }
        this.f733b.applyStyle(this.f732a, true);
    }

    public final void a(Configuration configuration) {
        if (this.e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        } else if (this.f735d == null) {
            this.f735d = new Configuration(configuration);
        } else {
            throw new IllegalStateException("Override configuration has already been set");
        }
    }

    @Override // android.content.ContextWrapper
    protected final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (this.e == null) {
            if (this.f735d == null) {
                this.e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.e = createConfigurationContext(this.f735d).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration = new Configuration(resources.getConfiguration());
                configuration.updateFrom(this.f735d);
                this.e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration);
            }
        }
        return this.e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f734c == null) {
            this.f734c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f734c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f733b;
        if (theme != null) {
            return theme;
        }
        if (this.f732a == 0) {
            this.f732a = a.i.Theme_AppCompat_Light;
        }
        a();
        return this.f733b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        if (this.f732a != i) {
            this.f732a = i;
            a();
        }
    }
}
