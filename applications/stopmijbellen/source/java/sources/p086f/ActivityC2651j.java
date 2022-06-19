package p086f;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.C0231g1;
import androidx.fragment.app.ActivityC0455o;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p026c0.C0774a;
import p026c0.C0802j;
import p066d0.C2134a;
import p086f.C2640c;
import p140k.AbstractC3295a;
import p226s.C4254c;
/* renamed from: f.j */
/* loaded from: classes-dex2jar.jar:f/j.class */
public class ActivityC2651j extends ActivityC0455o implements AbstractC2652k, C2640c.AbstractC2642b {

    /* renamed from: m */
    public AbstractC2653l f9095m;

    public ActivityC2651j() {
        this.f207d.f2565b.m7514b("androidx:appcompat", new C2649h(this));
        m8743l(new C2650i(this));
    }

    /* renamed from: n */
    private void m3368n() {
        getWindow().getDecorView().setTag(2131297208, this);
        getWindow().getDecorView().setTag(2131297210, this);
        getWindow().getDecorView().setTag(2131297209, this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3368n();
        m3366r().mo3335c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(m3366r().mo3334d(context));
    }

    @Override // p086f.AbstractC2652k
    /* renamed from: c */
    public void mo3298c(AbstractC3295a abstractC3295a) {
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        AbstractC2635a m3365s = m3365s();
        if (getWindow().hasFeature(0)) {
            if (m3365s != null && m3365s.mo3285a()) {
                return;
            }
            super.closeOptionsMenu();
        }
    }

    @Override // p026c0.ActivityC0787g, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC2635a m3365s = m3365s();
        if (keyCode != 82 || m3365s == null || !m3365s.mo3282j(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // p086f.C2640c.AbstractC2642b
    /* renamed from: e */
    public C2640c.AbstractC2641a mo3369e() {
        return m3366r().mo3332f();
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) m3366r().mo3333e(i);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return m3366r().mo3330h();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        int i = C0231g1.f947a;
        return super.getResources();
    }

    @Override // p086f.AbstractC2652k
    /* renamed from: h */
    public AbstractC3295a mo3297h(AbstractC3295a.AbstractC3296a abstractC3296a) {
        return null;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        m3366r().mo3327k();
    }

    @Override // p086f.AbstractC2652k
    /* renamed from: j */
    public void mo3296j(AbstractC3295a abstractC3295a) {
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m3366r().mo3326l(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m3366r().mo3324n();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        boolean z = true;
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        AbstractC2635a m3365s = m3365s();
        if (menuItem.getItemId() != 16908332 || m3365s == null || (m3365s.mo3274d() & 4) == 0) {
            return false;
        }
        Intent m7363a = C0802j.m7363a(this);
        if (m7363a == null) {
            z = false;
        } else if (shouldUpRecreateTask(m7363a)) {
            ArrayList arrayList = new ArrayList();
            Intent m3364t = m3364t();
            Intent intent = m3364t;
            if (m3364t == null) {
                intent = C0802j.m7363a(this);
            }
            if (intent != null) {
                ComponentName component = intent.getComponent();
                ComponentName componentName = component;
                if (component == null) {
                    componentName = intent.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent m7362b = C0802j.m7362b(this, componentName);
                    while (m7362b != null) {
                        arrayList.add(size, m7362b);
                        m7362b = C0802j.m7362b(this, m7362b.getComponent());
                    }
                    arrayList.add(intent);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            Object obj = C2134a.f7832a;
            C2134a.C2135a.m3844a(this, intentArr, null);
            try {
                int i2 = C0774a.f2893b;
                finishAffinity();
            } catch (IllegalStateException e2) {
                finish();
            }
        } else {
            navigateUpTo(m7363a);
        }
        return z;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        m3366r().mo3323o(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m3366r().mo3322p();
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onStart() {
        super.onStart();
        m3366r().mo3320r();
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onStop() {
        super.onStop();
        m3366r().mo3319s();
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        m3366r().mo3362A(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        AbstractC2635a m3365s = m3365s();
        if (getWindow().hasFeature(0)) {
            if (m3365s != null && m3365s.mo3281k()) {
                return;
            }
            super.openOptionsMenu();
        }
    }

    @Override // androidx.fragment.app.ActivityC0455o
    /* renamed from: q */
    public void mo3367q() {
        m3366r().mo3327k();
    }

    /* renamed from: r */
    public AbstractC2653l m3366r() {
        if (this.f9095m == null) {
            C4254c<WeakReference<AbstractC2653l>> c4254c = AbstractC2653l.f9096a;
            this.f9095m = new LayoutInflater$Factory2C2654m(this, null, this, this);
        }
        return this.f9095m;
    }

    /* renamed from: s */
    public AbstractC2635a m3365s() {
        return m3366r().mo3329i();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        m3368n();
        m3366r().mo3317v(i);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        m3368n();
        m3366r().mo3316w(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3368n();
        m3366r().mo3315x(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        m3366r().mo3313z(i);
    }

    /* renamed from: t */
    public Intent m3364t() {
        return C0802j.m7363a(this);
    }
}
