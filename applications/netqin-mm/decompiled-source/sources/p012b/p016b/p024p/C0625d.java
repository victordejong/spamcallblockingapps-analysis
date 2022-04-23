package p012b.p016b.p024p;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import p012b.p016b.C0582i;
/* renamed from: b.b.p.d */
/* loaded from: classes-dex2jar.jar:b/b/p/d.class */
public class C0625d extends ContextWrapper {

    /* renamed from: a */
    public int f3076a;

    /* renamed from: b */
    public Resources.Theme f3077b;

    /* renamed from: c */
    public LayoutInflater f3078c;

    /* renamed from: d */
    public Configuration f3079d;

    /* renamed from: e */
    public Resources f3080e;

    public C0625d() {
        super(null);
    }

    public C0625d(Context context, int i) {
        super(context);
        this.f3076a = i;
    }

    public C0625d(Context context, Resources.Theme theme) {
        super(context);
        this.f3077b = theme;
    }

    /* renamed from: a */
    public final Resources m36700a() {
        if (this.f3080e == null) {
            Configuration configuration = this.f3079d;
            if (configuration == null) {
                this.f3080e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f3080e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f3079d);
                this.f3080e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.f3080e;
    }

    /* renamed from: a */
    public void m36699a(Configuration configuration) {
        if (this.f3080e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        } else if (this.f3079d == null) {
            this.f3079d = new Configuration(configuration);
        } else {
            throw new IllegalStateException("Override configuration has already been set");
        }
    }

    /* renamed from: a */
    public void m36698a(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* renamed from: b */
    public int m36697b() {
        return this.f3076a;
    }

    /* renamed from: c */
    public final void m36696c() {
        boolean z = this.f3077b == null;
        if (z) {
            this.f3077b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f3077b.setTo(theme);
            }
        }
        m36698a(this.f3077b, this.f3076a, z);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return m36700a();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f3078c == null) {
            this.f3078c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f3078c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f3077b;
        if (theme != null) {
            return theme;
        }
        if (this.f3076a == 0) {
            this.f3076a = C0582i.Theme_AppCompat_Light;
        }
        m36696c();
        return this.f3077b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f3076a != i) {
            this.f3076a = i;
            m36696c();
        }
    }
}
