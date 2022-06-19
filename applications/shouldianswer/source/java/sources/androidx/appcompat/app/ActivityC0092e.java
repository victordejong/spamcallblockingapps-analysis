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
import androidx.appcompat.app.C0082b;
import androidx.appcompat.view.AbstractC0155b;
import androidx.appcompat.widget.C0320ax;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0427a;
import androidx.core.app.C0443f;
import androidx.core.app.C0458m;
import androidx.fragment.app.ActivityC0711c;
/* renamed from: androidx.appcompat.app.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/e.class */
public class ActivityC0092e extends ActivityC0711c implements C0082b.AbstractC0085b, AbstractC0093f, C0458m.AbstractC0459a {

    /* renamed from: k */
    private AbstractC0094g f262k;

    /* renamed from: l */
    private Resources f263l;

    /* renamed from: a */
    private boolean m7907a(int i, KeyEvent keyEvent) {
        Window window;
        return Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // androidx.appcompat.app.C0082b.AbstractC0085b
    /* renamed from: a */
    public C0082b.AbstractC0084a mo7909a() {
        return m7897h().mo7831h();
    }

    /* renamed from: a */
    public void m7905a(Toolbar toolbar) {
        m7897h().mo7858a(toolbar);
    }

    /* renamed from: a */
    public void m7904a(C0458m c0458m) {
        c0458m.m6557a((Activity) this);
    }

    /* renamed from: a */
    public boolean m7908a(int i) {
        return m7897h().mo7839d(i);
    }

    /* renamed from: a */
    public boolean m7906a(Intent intent) {
        return C0443f.m6653a(this, intent);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m7897h().mo7850b(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        m7897h().mo7876a(context);
    }

    /* renamed from: b */
    public void m7903b(int i) {
    }

    /* renamed from: b */
    public void m7902b(Intent intent) {
        C0443f.m6650b(this, intent);
    }

    /* renamed from: b */
    public void m7901b(C0458m c0458m) {
    }

    /* renamed from: c */
    public AbstractC0078a m7900c() {
        return m7897h().mo7881a();
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        AbstractC0078a m7900c = m7900c();
        if (getWindow().hasFeature(0)) {
            if (m7900c != null && m7900c.mo7782d()) {
                return;
            }
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.fragment.app.ActivityC0711c
    /* renamed from: d */
    public void mo5668d() {
        m7897h().mo7835f();
    }

    @Override // androidx.core.app.ActivityC0438d, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC0078a m7900c = m7900c();
        if (keyCode != 82 || m7900c == null || !m7900c.mo7784a(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* renamed from: e */
    public boolean m7899e() {
        Intent mo6551f = mo6551f();
        if (mo6551f != null) {
            if (!m7906a(mo6551f)) {
                m7902b(mo6551f);
                return true;
            }
            C0458m m6555a = C0458m.m6555a((Context) this);
            m7904a(m6555a);
            m7901b(m6555a);
            m6555a.m6560a();
            try {
                C0427a.m6678a((Activity) this);
                return true;
            } catch (IllegalStateException e) {
                finish();
                return true;
            }
        }
        return false;
    }

    @Override // androidx.core.app.C0458m.AbstractC0459a
    /* renamed from: f */
    public Intent mo6551f() {
        return C0443f.m6654a(this);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) m7897h().mo7854b(i);
    }

    @Deprecated
    /* renamed from: g */
    public void m7898g() {
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return m7897h().mo7855b();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f263l == null && C0320ax.m7118a()) {
            this.f263l = new C0320ax(this, super.getResources());
        }
        Resources resources = this.f263l;
        Resources resources2 = resources;
        if (resources == null) {
            resources2 = super.getResources();
        }
        return resources2;
    }

    /* renamed from: h */
    public AbstractC0094g m7897h() {
        if (this.f262k == null) {
            this.f262k = AbstractC0094g.m7896a(this, this);
        }
        return this.f262k;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        m7897h().mo7835f();
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f263l != null) {
            this.f263l.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        m7897h().mo7875a(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        m7898g();
    }

    @Override // androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        AbstractC0094g m7897h = m7897h();
        m7897h.mo7829i();
        m7897h.mo7874a(bundle);
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m7897h().mo7833g();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (m7907a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        AbstractC0078a m7900c = m7900c();
        if (menuItem.getItemId() == 16908332 && m7900c != null && (m7900c.mo7768a() & 4) != 0) {
            return m7899e();
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        m7897h().mo7851b(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m7897h().mo7837e();
    }

    @Override // androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m7897h().mo7842c(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onStart() {
        super.onStart();
        m7897h().mo7846c();
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onStop() {
        super.onStop();
        m7897h().mo7840d();
    }

    @Override // androidx.appcompat.app.AbstractC0093f
    public void onSupportActionModeFinished(AbstractC0155b abstractC0155b) {
    }

    @Override // androidx.appcompat.app.AbstractC0093f
    public void onSupportActionModeStarted(AbstractC0155b abstractC0155b) {
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        m7897h().mo7857a(charSequence);
    }

    @Override // androidx.appcompat.app.AbstractC0093f
    public AbstractC0155b onWindowStartingSupportActionMode(AbstractC0155b.AbstractC0156a abstractC0156a) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        AbstractC0078a m7900c = m7900c();
        if (getWindow().hasFeature(0)) {
            if (m7900c != null && m7900c.mo7783c()) {
                return;
            }
            super.openOptionsMenu();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        m7897h().mo7845c(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        m7897h().mo7871a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m7897h().mo7870a(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        m7897h().mo7880a(i);
    }
}
