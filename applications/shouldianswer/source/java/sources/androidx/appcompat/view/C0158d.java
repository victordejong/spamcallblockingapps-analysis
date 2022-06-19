package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.C0051a;
/* renamed from: androidx.appcompat.view.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/d.class */
public class C0158d extends ContextWrapper {

    /* renamed from: a */
    private int f527a;

    /* renamed from: b */
    private Resources.Theme f528b;

    /* renamed from: c */
    private LayoutInflater f529c;

    /* renamed from: d */
    private Configuration f530d;

    /* renamed from: e */
    private Resources f531e;

    public C0158d() {
        super(null);
    }

    public C0158d(Context context, int i) {
        super(context);
        this.f527a = i;
    }

    public C0158d(Context context, Resources.Theme theme) {
        super(context);
        this.f528b = theme;
    }

    /* renamed from: b */
    private Resources m7650b() {
        if (this.f531e == null) {
            if (this.f530d == null) {
                this.f531e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f531e = createConfigurationContext(this.f530d).getResources();
            }
        }
        return this.f531e;
    }

    /* renamed from: c */
    private void m7649c() {
        boolean z = this.f528b == null;
        if (z) {
            this.f528b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f528b.setTo(theme);
            }
        }
        m7651a(this.f528b, this.f527a, z);
    }

    /* renamed from: a */
    public int m7652a() {
        return this.f527a;
    }

    /* renamed from: a */
    protected void m7651a(Resources.Theme theme, int i, boolean z) {
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
        return m7650b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f529c == null) {
                this.f529c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f529c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f528b;
        if (theme != null) {
            return theme;
        }
        if (this.f527a == 0) {
            this.f527a = C0051a.C0060i.Theme_AppCompat_Light;
        }
        m7649c();
        return this.f528b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f527a != i) {
            this.f527a = i;
            m7649c();
        }
    }
}
