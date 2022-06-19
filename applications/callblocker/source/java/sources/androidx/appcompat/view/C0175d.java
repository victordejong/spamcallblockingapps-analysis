package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.C0083a;
/* renamed from: androidx.appcompat.view.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/d.class */
public class C0175d extends ContextWrapper {

    /* renamed from: a */
    private int f579a;

    /* renamed from: b */
    private Resources.Theme f580b;

    /* renamed from: c */
    private LayoutInflater f581c;

    /* renamed from: d */
    private Configuration f582d;

    /* renamed from: e */
    private Resources f583e;

    public C0175d() {
        super(null);
    }

    public C0175d(Context context, int i) {
        super(context);
        this.f579a = i;
    }

    public C0175d(Context context, Resources.Theme theme) {
        super(context);
        this.f580b = theme;
    }

    /* renamed from: b */
    private Resources m21981b() {
        if (this.f583e == null) {
            if (this.f582d == null) {
                this.f583e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f583e = createConfigurationContext(this.f582d).getResources();
            }
        }
        return this.f583e;
    }

    /* renamed from: c */
    private void m21980c() {
        boolean z = this.f580b == null;
        if (z) {
            this.f580b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f580b.setTo(theme);
            }
        }
        m21982a(this.f580b, this.f579a, z);
    }

    /* renamed from: a */
    public int m21983a() {
        return this.f579a;
    }

    /* renamed from: a */
    protected void m21982a(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return m21981b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        LayoutInflater systemService;
        if ("layout_inflater".equals(str)) {
            if (this.f581c == null) {
                this.f581c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            systemService = this.f581c;
        } else {
            systemService = getBaseContext().getSystemService(str);
        }
        return systemService;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme;
        if (this.f580b != null) {
            theme = this.f580b;
        } else {
            if (this.f579a == 0) {
                this.f579a = C0083a.C0092i.Theme_AppCompat_Light;
            }
            m21980c();
            theme = this.f580b;
        }
        return theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f579a != i) {
            this.f579a = i;
            m21980c();
        }
    }
}
