package p020b.p021a.p028o;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import p020b.p021a.C1431i;
/* renamed from: b.a.o.d */
/* loaded from: classes-dex2jar.jar:b/a/o/d.class */
public class C1458d extends ContextWrapper {

    /* renamed from: a */
    private int f5836a;

    /* renamed from: b */
    private Resources.Theme f5837b;

    /* renamed from: c */
    private LayoutInflater f5838c;

    /* renamed from: d */
    private Configuration f5839d;

    /* renamed from: e */
    private Resources f5840e;

    public C1458d() {
        super(null);
    }

    public C1458d(Context context, int i) {
        super(context);
        this.f5836a = i;
    }

    public C1458d(Context context, Resources.Theme theme) {
        super(context);
        this.f5837b = theme;
    }

    /* renamed from: b */
    private Resources m30040b() {
        if (this.f5840e == null) {
            Configuration configuration = this.f5839d;
            if (configuration == null) {
                this.f5840e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f5840e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f5839d);
                this.f5840e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.f5840e;
    }

    /* renamed from: d */
    private void m30038d() {
        boolean z = this.f5837b == null;
        if (z) {
            this.f5837b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f5837b.setTo(theme);
            }
        }
        m30037e(this.f5837b, this.f5836a, z);
    }

    /* renamed from: a */
    public void m30041a(Configuration configuration) {
        if (this.f5840e == null) {
            if (this.f5839d != null) {
                throw new IllegalStateException("Override configuration has already been set");
            }
            this.f5839d = new Configuration(configuration);
            return;
        }
        throw new IllegalStateException("getResources() or getAssets() has already been called");
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* renamed from: c */
    public int m30039c() {
        return this.f5836a;
    }

    /* renamed from: e */
    protected void m30037e(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return m30040b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f5838c == null) {
                this.f5838c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f5838c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f5837b;
        if (theme != null) {
            return theme;
        }
        if (this.f5836a == 0) {
            this.f5836a = C1431i.Theme_AppCompat_Light;
        }
        m30038d();
        return this.f5837b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f5836a != i) {
            this.f5836a = i;
            m30038d();
        }
    }
}
