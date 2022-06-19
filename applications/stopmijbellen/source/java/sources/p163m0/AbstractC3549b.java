package p163m0;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: m0.b */
/* loaded from: classes-dex2jar.jar:m0/b.class */
public abstract class AbstractC3549b {

    /* renamed from: a */
    public AbstractC3550a f11718a;

    /* renamed from: m0.b$a */
    /* loaded from: classes-dex2jar.jar:m0/b$a.class */
    public interface AbstractC3550a {
    }

    public AbstractC3549b(Context context) {
    }

    /* renamed from: a */
    public boolean mo2190a() {
        return false;
    }

    /* renamed from: b */
    public boolean mo2189b() {
        return true;
    }

    /* renamed from: c */
    public abstract View mo2188c();

    /* renamed from: d */
    public View mo2187d(MenuItem menuItem) {
        return mo2188c();
    }

    /* renamed from: e */
    public boolean mo2186e() {
        return false;
    }

    /* renamed from: f */
    public void mo2185f(SubMenu subMenu) {
    }

    /* renamed from: g */
    public boolean mo2184g() {
        return false;
    }

    /* renamed from: h */
    public void mo2183h(AbstractC3550a abstractC3550a) {
        if (this.f11718a != null) {
            StringBuilder m8752j = C0082b.m8752j("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
            m8752j.append(getClass().getSimpleName());
            m8752j.append(" instance while it is still in use somewhere else?");
            Log.w("ActionProvider(support)", m8752j.toString());
        }
        this.f11718a = abstractC3550a;
    }
}
