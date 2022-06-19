package androidx.appcompat.app;

import android.app.Activity;
import android.content.ComponentName;
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
import androidx.appcompat.app.C0188a;
import androidx.appcompat.view.AbstractC0241b;
import androidx.appcompat.widget.C0379ag;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0726a;
import androidx.core.app.C0743e;
import androidx.core.app.C0768o;
import androidx.core.content.C0790b;
import androidx.fragment.app.FragmentActivity;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatActivity.class */
public class AppCompatActivity extends FragmentActivity implements C0188a.AbstractC0191b, AbstractC0198d, C0768o.AbstractC0769a {
    private AbstractC0199e mDelegate;
    private Resources mResources;

    public AppCompatActivity() {
    }

    public AppCompatActivity(int i) {
        super(i);
    }

    private boolean performMenuItemShortcut(KeyEvent keyEvent) {
        Window window;
        return Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().mo46285b(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(getDelegate().mo46295a(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar != null && supportActionBar.mo46253j()) {
                return;
            }
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ActionBar supportActionBar = getSupportActionBar();
        if (keyCode != 82 || supportActionBar == null || !supportActionBar.mo46255a(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) getDelegate().mo46286b(i);
    }

    public AbstractC0199e getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = AbstractC0199e.m46297a(this, this);
        }
        return this.mDelegate;
    }

    @Override // androidx.appcompat.app.C0188a.AbstractC0191b
    public C0188a.AbstractC0190a getDrawerToggleDelegate() {
        return getDelegate().mo46273j();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return getDelegate().mo46287b();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.mResources == null && C0379ag.m45772a()) {
            this.mResources = new C0379ag(this, super.getResources());
        }
        Resources resources = this.mResources;
        Resources resources2 = resources;
        if (resources == null) {
            resources2 = super.getResources();
        }
        return resources2;
    }

    public ActionBar getSupportActionBar() {
        return getDelegate().mo46299a();
    }

    @Override // androidx.core.app.C0768o.AbstractC0769a
    public Intent getSupportParentActivityIntent() {
        return C0743e.m44591a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().mo46275h();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        getDelegate().mo46294a(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        AbstractC0199e delegate = getDelegate();
        delegate.mo46272k();
        delegate.mo46283c();
        super.onCreate(bundle);
    }

    public void onCreateSupportNavigateUpTaskStack(C0768o c0768o) {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        Intent intent = supportParentActivityIntent;
        if (supportParentActivityIntent == null) {
            intent = C0743e.m44591a(this);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = intent.resolveActivity(c0768o.f3428b.getPackageManager());
            }
            c0768o.m44527a(componentName);
            c0768o.m44525a(intent);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().mo46274i();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (performMenuItemShortcut(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() == 16908332 && supportActionBar != null && (supportActionBar.mo46227d() & 4) != 0) {
            return onSupportNavigateUp();
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    public void onNightModeChanged(int i) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().mo46280d();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        getDelegate().mo46276g();
    }

    public void onPrepareSupportNavigateUpTaskStack(C0768o c0768o) {
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        getDelegate();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        getDelegate().mo46278e();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        getDelegate().mo46277f();
    }

    @Override // androidx.appcompat.app.AbstractC0198d
    public void onSupportActionModeFinished(AbstractC0241b abstractC0241b) {
    }

    @Override // androidx.appcompat.app.AbstractC0198d
    public void onSupportActionModeStarted(AbstractC0241b abstractC0241b) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent != null) {
            if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
                supportNavigateUpTo(supportParentActivityIntent);
                return true;
            }
            C0768o m44526a = C0768o.m44526a(this);
            onCreateSupportNavigateUpTaskStack(m44526a);
            onPrepareSupportNavigateUpTaskStack(m44526a);
            if (m44526a.f3427a.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            Intent[] intentArr = (Intent[]) m44526a.f3427a.toArray(new Intent[m44526a.f3427a.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            C0790b.m44497a(m44526a.f3428b, intentArr, (Bundle) null);
            try {
                C0726a.m44618a((Activity) this);
                return true;
            } catch (IllegalStateException e) {
                finish();
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        getDelegate().mo46288a(charSequence);
    }

    @Override // androidx.appcompat.app.AbstractC0198d
    public AbstractC0241b onWindowStartingSupportActionMode(AbstractC0241b.AbstractC0242a abstractC0242a) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar != null && supportActionBar.mo46254i()) {
                return;
            }
            super.openOptionsMenu();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        getDelegate().mo46282c(i);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        getDelegate().mo46293a(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().mo46292a(view, layoutParams);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        getDelegate().mo46289a(toolbar);
    }

    @Deprecated
    public void setSupportProgress(int i) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        getDelegate().mo46298a(i);
    }

    public AbstractC0241b startSupportActionMode(AbstractC0241b.AbstractC0242a abstractC0242a) {
        return getDelegate().mo46290a(abstractC0242a);
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void supportInvalidateOptionsMenu() {
        getDelegate().mo46275h();
    }

    public void supportNavigateUpTo(Intent intent) {
        if (Build.VERSION.SDK_INT >= 16) {
            navigateUpTo(intent);
            return;
        }
        intent.addFlags(67108864);
        startActivity(intent);
        finish();
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().mo46279d(i);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        if (Build.VERSION.SDK_INT >= 16) {
            return shouldUpRecreateTask(intent);
        }
        String action = getIntent().getAction();
        return action != null && !action.equals("android.intent.action.MAIN");
    }
}
