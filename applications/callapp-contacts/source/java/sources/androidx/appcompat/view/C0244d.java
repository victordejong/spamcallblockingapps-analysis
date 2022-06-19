package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.C0142a;
/* renamed from: androidx.appcompat.view.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/d.class */
public final class C0244d extends ContextWrapper {

    /* renamed from: a */
    public int f693a;

    /* renamed from: b */
    private Resources.Theme f694b;

    /* renamed from: c */
    private LayoutInflater f695c;

    /* renamed from: d */
    private Configuration f696d;

    /* renamed from: e */
    private Resources f697e;

    public C0244d() {
        super(null);
    }

    public C0244d(Context context, int i) {
        super(context);
        this.f693a = i;
    }

    public C0244d(Context context, Resources.Theme theme) {
        super(context);
        this.f694b = theme;
    }

    /* renamed from: a */
    private void m46168a() {
        if (this.f694b == null) {
            this.f694b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f694b.setTo(theme);
            }
        }
        this.f694b.applyStyle(this.f693a, true);
    }

    /* renamed from: a */
    public final void m46167a(Configuration configuration) {
        if (this.f697e == null) {
            if (this.f696d != null) {
                throw new IllegalStateException("Override configuration has already been set");
            }
            this.f696d = new Configuration(configuration);
            return;
        }
        throw new IllegalStateException("getResources() or getAssets() has already been called");
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
        if (this.f697e == null) {
            if (this.f696d == null) {
                this.f697e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f697e = createConfigurationContext(this.f696d).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration = new Configuration(resources.getConfiguration());
                configuration.updateFrom(this.f696d);
                this.f697e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration);
            }
        }
        return this.f697e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f695c == null) {
                this.f695c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f695c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f694b;
        if (theme != null) {
            return theme;
        }
        if (this.f693a == 0) {
            this.f693a = C0142a.C0151i.Theme_AppCompat_Light;
        }
        m46168a();
        return this.f694b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        if (this.f693a != i) {
            this.f693a = i;
            m46168a();
        }
    }
}
