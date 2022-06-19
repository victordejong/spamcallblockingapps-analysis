package androidx.appcompat.app;

import android.app.Activity;
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
import androidx.appcompat.view.AbstractC0172b;
import androidx.appcompat.widget.C0326au;
import androidx.core.app.C0456a;
import androidx.core.app.C0470f;
import androidx.core.app.C0481m;
import androidx.fragment.app.ActivityC0664d;
/* renamed from: androidx.appcompat.app.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c.class */
public class ActivityC0116c extends ActivityC0664d implements AbstractC0117d, C0481m.AbstractC0482a {

    /* renamed from: k */
    private AbstractC0118e f331k;

    /* renamed from: l */
    private Resources f332l;

    /* renamed from: a */
    private boolean m22223a(int i, KeyEvent keyEvent) {
        Window window;
        return Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // androidx.appcompat.app.AbstractC0117d
    /* renamed from: a */
    public AbstractC0172b mo22114a(AbstractC0172b.AbstractC0173a abstractC0173a) {
        return null;
    }

    /* renamed from: a */
    public void m22224a(int i) {
    }

    @Override // androidx.appcompat.app.AbstractC0117d
    /* renamed from: a */
    public void mo22113a(AbstractC0172b abstractC0172b) {
    }

    /* renamed from: a */
    public void m22221a(C0481m c0481m) {
        c0481m.m20737a((Activity) this);
    }

    /* renamed from: a */
    public boolean m22222a(Intent intent) {
        return C0470f.m20800a(this, intent);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m22215k().mo22173b(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        m22215k().mo22197a(context);
    }

    /* renamed from: b */
    public void m22220b(Intent intent) {
        C0470f.m20797b(this, intent);
    }

    @Override // androidx.appcompat.app.AbstractC0117d
    /* renamed from: b */
    public void mo22111b(AbstractC0172b abstractC0172b) {
    }

    /* renamed from: b */
    public void m22219b(C0481m c0481m) {
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        AbstractC0110a m22218f = m22218f();
        if (getWindow().hasFeature(0)) {
            if (m22218f != null && m22218f.mo22103d()) {
                return;
            }
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.core.app.ActivityC0469e, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC0110a m22218f = m22218f();
        return (keyCode != 82 || m22218f == null || !m22218f.mo22105a(keyEvent)) ? super.dispatchKeyEvent(keyEvent) : true;
    }

    /* renamed from: f */
    public AbstractC0110a m22218f() {
        return m22215k().mo22202a();
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) m22215k().mo22177b(i);
    }

    @Override // androidx.fragment.app.ActivityC0664d
    /* renamed from: g */
    public void mo19876g() {
        m22215k().mo22156f();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return m22215k().mo22178b();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f332l == null && C0326au.m21392a()) {
            this.f332l = new C0326au(this, super.getResources());
        }
        return this.f332l == null ? super.getResources() : this.f332l;
    }

    /* renamed from: h */
    public boolean m22217h() {
        boolean z;
        Intent mo20732i = mo20732i();
        if (mo20732i != null) {
            if (m22222a(mo20732i)) {
                C0481m m20735a = C0481m.m20735a((Context) this);
                m22221a(m20735a);
                m22219b(m20735a);
                m20735a.m20738a();
                try {
                    C0456a.m20823a((Activity) this);
                } catch (IllegalStateException e) {
                    finish();
                }
            } else {
                m22220b(mo20732i);
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // androidx.core.app.C0481m.AbstractC0482a
    /* renamed from: i */
    public Intent mo20732i() {
        return C0470f.m20801a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        m22215k().mo22156f();
    }

    @Deprecated
    /* renamed from: j */
    public void m22216j() {
    }

    /* renamed from: k */
    public AbstractC0118e m22215k() {
        if (this.f331k == null) {
            this.f331k = AbstractC0118e.m22214a(this, this);
        }
        return this.f331k;
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f332l != null) {
            this.f332l.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        m22215k().mo22196a(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        m22216j();
    }

    @Override // androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        AbstractC0118e m22215k = m22215k();
        m22215k.mo22152h();
        m22215k.mo22195a(bundle);
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m22215k().mo22154g();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return m22223a(i, keyEvent) ? true : super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        boolean m22217h;
        if (super.onMenuItemSelected(i, menuItem)) {
            m22217h = true;
        } else {
            AbstractC0110a m22218f = m22218f();
            m22217h = (menuItem.getItemId() != 16908332 || m22218f == null || (m22218f.mo22091a() & 4) == 0) ? false : m22217h();
        }
        return m22217h;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        m22215k().mo22174b(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m22215k().mo22159e();
    }

    @Override // androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m22215k().mo22164c(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onStart() {
        super.onStart();
        m22215k().mo22168c();
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onStop() {
        super.onStop();
        m22215k().mo22162d();
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        m22215k().mo22180a(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        AbstractC0110a m22218f = m22218f();
        if (getWindow().hasFeature(0)) {
            if (m22218f != null && m22218f.mo22104c()) {
                return;
            }
            super.openOptionsMenu();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        m22215k().mo22167c(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        m22215k().mo22192a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m22215k().mo22191a(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        m22215k().mo22201a(i);
    }
}
