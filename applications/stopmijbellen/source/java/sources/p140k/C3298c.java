package p140k;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: k.c */
/* loaded from: classes-dex2jar.jar:k/c.class */
public class C3298c extends ContextWrapper {

    /* renamed from: a */
    public int f11149a;

    /* renamed from: b */
    public Resources.Theme f11150b;

    /* renamed from: c */
    public LayoutInflater f11151c;

    /* renamed from: d */
    public Configuration f11152d;

    /* renamed from: e */
    public Resources f11153e;

    public C3298c() {
        super(null);
    }

    public C3298c(Context context, int i) {
        super(context);
        this.f11149a = i;
    }

    /* renamed from: a */
    public void m2426a(Configuration configuration) {
        if (this.f11153e == null) {
            if (this.f11152d != null) {
                throw new IllegalStateException("Override configuration has already been set");
            }
            this.f11152d = new Configuration(configuration);
            return;
        }
        throw new IllegalStateException("getResources() or getAssets() has already been called");
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* renamed from: b */
    public final void m2425b() {
        if (this.f11150b == null) {
            this.f11150b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f11150b.setTo(theme);
            }
        }
        this.f11150b.applyStyle(this.f11149a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f11153e == null) {
            Configuration configuration = this.f11152d;
            if (configuration == null) {
                this.f11153e = super.getResources();
            } else {
                this.f11153e = createConfigurationContext(configuration).getResources();
            }
        }
        return this.f11153e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f11151c == null) {
                this.f11151c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f11151c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f11150b;
        if (theme != null) {
            return theme;
        }
        if (this.f11149a == 0) {
            this.f11149a = C3681R.style.Theme_AppCompat_Light;
        }
        m2425b();
        return this.f11150b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f11149a != i) {
            this.f11149a = i;
            m2425b();
        }
    }
}
