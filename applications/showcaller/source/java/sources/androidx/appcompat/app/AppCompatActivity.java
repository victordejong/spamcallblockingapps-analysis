package androidx.appcompat.app;

import android.content.Context;
import android.content.Intent;
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
import androidx.activity.p005d.AbstractC0090b;
import androidx.appcompat.widget.C0303j0;
import androidx.core.app.C0548a;
import androidx.core.app.C0563f;
import androidx.core.app.C0582o;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.C0820v;
import androidx.lifecycle.C0821w;
import androidx.savedstate.C1048d;
import androidx.savedstate.SavedStateRegistry;
import p020b.p021a.p028o.AbstractC1455b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatActivity.class */
public class AppCompatActivity extends FragmentActivity implements AbstractC0148b, C0582o.AbstractC0583a {

    /* renamed from: s */
    private AbstractC0149c f324s;

    /* renamed from: t */
    private Resources f325t;

    /* renamed from: androidx.appcompat.app.AppCompatActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatActivity$a.class */
    public class C0120a implements SavedStateRegistry.AbstractC1044b {
        C0120a() {
            AppCompatActivity.this = r4;
        }

        @Override // androidx.savedstate.SavedStateRegistry.AbstractC1044b
        /* renamed from: a */
        public Bundle mo31185a() {
            Bundle bundle = new Bundle();
            AppCompatActivity.this.m35670J().mo35527w(bundle);
            return bundle;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatActivity$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatActivity$b.class */
    public class C0121b implements AbstractC0090b {
        C0121b() {
            AppCompatActivity.this = r4;
        }

        @Override // androidx.activity.p005d.AbstractC0090b
        /* renamed from: a */
        public void mo32866a(Context context) {
            AbstractC0149c m35670J = AppCompatActivity.this.m35670J();
            m35670J.mo35534p();
            m35670J.mo35531s(AppCompatActivity.this.mo31180r().m31191a("androidx:appcompat"));
        }
    }

    public AppCompatActivity() {
        m35668L();
    }

    /* renamed from: L */
    private void m35668L() {
        mo31180r().m31188d("androidx:appcompat", new C0120a());
        m35764v(new C0121b());
    }

    /* renamed from: S */
    private boolean m35662S(KeyEvent keyEvent) {
        Window window;
        return Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent);
    }

    /* renamed from: x */
    private void m35659x() {
        C0820v.m32343a(getWindow().getDecorView(), this);
        C0821w.m32342a(getWindow().getDecorView(), this);
        C1048d.m31179a(getWindow().getDecorView(), this);
    }

    @Override // androidx.fragment.app.FragmentActivity
    /* renamed from: I */
    public void mo32869I() {
        m35670J().mo35533q();
    }

    /* renamed from: J */
    public AbstractC0149c m35670J() {
        if (this.f324s == null) {
            this.f324s = AbstractC0149c.m35541i(this, this);
        }
        return this.f324s;
    }

    /* renamed from: K */
    public ActionBar m35669K() {
        return m35670J().mo35535o();
    }

    /* renamed from: M */
    public void m35667M(C0582o c0582o) {
        c0582o.m33369d(this);
    }

    /* renamed from: O */
    public void m35666O(int i) {
    }

    /* renamed from: P */
    public void m35665P(C0582o c0582o) {
    }

    @Deprecated
    /* renamed from: Q */
    public void m35664Q() {
    }

    /* renamed from: R */
    public boolean m35663R() {
        Intent mo33364o = mo33364o();
        if (mo33364o != null) {
            if (!m35660U(mo33364o)) {
                m35661T(mo33364o);
                return true;
            }
            C0582o m33367h = C0582o.m33367h(this);
            m35667M(m33367h);
            m35665P(m33367h);
            m33367h.m33366i();
            try {
                C0548a.m33478m(this);
                return true;
            } catch (IllegalStateException e) {
                finish();
                return true;
            }
        }
        return false;
    }

    /* renamed from: T */
    public void m35661T(Intent intent) {
        C0563f.m33453e(this, intent);
    }

    /* renamed from: U */
    public boolean m35660U(Intent intent) {
        return C0563f.m33452f(this, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m35659x();
        m35670J().mo35546d(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(m35670J().mo35542h(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        ActionBar m35669K = m35669K();
        if (getWindow().hasFeature(0)) {
            if (m35669K != null && m35669K.m35711f()) {
                return;
            }
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.appcompat.app.AbstractC0148b
    /* renamed from: d */
    public void mo35520d(AbstractC1455b abstractC1455b) {
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ActionBar m35669K = m35669K();
        if (keyCode != 82 || m35669K == null || !m35669K.m35708o(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0148b
    /* renamed from: e */
    public void mo35519e(AbstractC1455b abstractC1455b) {
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) m35670J().mo35539k(i);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return m35670J().mo35536n();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f325t == null && C0303j0.m34878b()) {
            this.f325t = new C0303j0(this, super.getResources());
        }
        Resources resources = this.f325t;
        Resources resources2 = resources;
        if (resources == null) {
            resources2 = super.getResources();
        }
        return resources2;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        m35670J().mo35533q();
    }

    @Override // androidx.core.app.C0582o.AbstractC0583a
    /* renamed from: o */
    public Intent mo33364o() {
        return C0563f.m33457a(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f325t != null) {
            this.f325t.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        m35670J().mo35532r(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        m35664Q();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m35670J().mo35530t();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (m35662S(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        ActionBar m35669K = m35669K();
        if (menuItem.getItemId() == 16908332 && m35669K != null && (m35669K.mo35468i() & 4) != 0) {
            return m35663R();
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        m35670J().mo35529u(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m35670J().mo35528v();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m35670J().mo35526x();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        m35670J().mo35525y();
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        m35670J().mo35548H(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        ActionBar m35669K = m35669K();
        if (getWindow().hasFeature(0)) {
            if (m35669K != null && m35669K.m35707p()) {
                return;
            }
            super.openOptionsMenu();
        }
    }

    @Override // androidx.appcompat.app.AbstractC0148b
    /* renamed from: q */
    public AbstractC1455b mo35517q(AbstractC1455b.AbstractC1456a abstractC1456a) {
        return null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        m35659x();
        m35670J().mo35553C(i);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        m35659x();
        m35670J().mo35552D(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m35659x();
        m35670J().mo35551E(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        m35670J().mo35549G(i);
    }
}
