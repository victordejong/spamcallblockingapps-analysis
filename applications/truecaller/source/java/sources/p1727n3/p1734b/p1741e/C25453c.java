package p1727n3.p1734b.p1741e;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import androidx.appcompat.C0032R;
/* renamed from: n3.b.e.c */
/* loaded from: classes-dex2jar.jar:n3/b/e/c.class */
public class C25453c extends ContextWrapper {

    /* renamed from: a */
    public int f71097a;

    /* renamed from: b */
    public Resources.Theme f71098b;

    /* renamed from: c */
    public LayoutInflater f71099c;

    /* renamed from: d */
    public Configuration f71100d;

    /* renamed from: e */
    public Resources f71101e;

    public C25453c() {
        super(null);
    }

    public C25453c(Context context, int i) {
        super(context);
        this.f71097a = i;
    }

    public C25453c(Context context, Resources.Theme theme) {
        super(context);
        this.f71098b = theme;
    }

    /* renamed from: a */
    public void m3521a(Configuration configuration) {
        if (this.f71101e == null) {
            if (this.f71100d != null) {
                throw new IllegalStateException("Override configuration has already been set");
            }
            this.f71100d = new Configuration(configuration);
            return;
        }
        throw new IllegalStateException("getResources() or getAssets() has already been called");
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* renamed from: b */
    public final void m3520b() {
        if (this.f71098b == null) {
            this.f71098b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f71098b.setTo(theme);
            }
        }
        this.f71098b.applyStyle(this.f71097a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f71101e == null) {
            Configuration configuration = this.f71100d;
            if (configuration == null) {
                this.f71101e = super.getResources();
            } else {
                this.f71101e = createConfigurationContext(configuration).getResources();
            }
        }
        return this.f71101e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f71099c == null) {
                this.f71099c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f71099c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f71098b;
        if (theme != null) {
            return theme;
        }
        if (this.f71097a == 0) {
            this.f71097a = C0032R.style.Theme_AppCompat_Light;
        }
        m3520b();
        return this.f71098b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f71097a != i) {
            this.f71097a = i;
            m3520b();
        }
    }
}
