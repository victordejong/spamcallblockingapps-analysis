package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/ContextThemeWrapper.class */
public class ContextThemeWrapper extends ContextWrapper {

    /* renamed from: a */
    private int f444a;

    /* renamed from: b */
    private Resources.Theme f445b;

    /* renamed from: c */
    private LayoutInflater f446c;

    /* renamed from: d */
    private Configuration f447d;

    /* renamed from: e */
    private Resources f448e;

    public ContextThemeWrapper() {
        super(null);
    }

    public ContextThemeWrapper(Context context, @StyleRes int i) {
        super(context);
        this.f444a = i;
    }

    public ContextThemeWrapper(Context context, Resources.Theme theme) {
        super(context);
        this.f445b = theme;
    }

    /* renamed from: b */
    private Resources m21980b() {
        if (this.f448e == null) {
            Configuration configuration = this.f447d;
            if (configuration == null) {
                this.f448e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f448e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f447d);
                this.f448e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.f448e;
    }

    /* renamed from: d */
    private void m21978d() {
        boolean z = this.f445b == null;
        if (z) {
            this.f445b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f445b.setTo(theme);
            }
        }
        m21977e(this.f445b, this.f444a, z);
    }

    /* renamed from: a */
    public void m21981a(Configuration configuration) {
        if (this.f448e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        } else if (this.f447d == null) {
            this.f447d = new Configuration(configuration);
        } else {
            throw new IllegalStateException("Override configuration has already been set");
        }
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* renamed from: c */
    public int m21979c() {
        return this.f444a;
    }

    /* renamed from: e */
    protected void m21977e(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return m21980b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f446c == null) {
            this.f446c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f446c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f445b;
        if (theme != null) {
            return theme;
        }
        if (this.f444a == 0) {
            this.f444a = C0042R.style.Theme_AppCompat_Light;
        }
        m21978d();
        return this.f445b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f444a != i) {
            this.f444a = i;
            m21978d();
        }
    }
}
