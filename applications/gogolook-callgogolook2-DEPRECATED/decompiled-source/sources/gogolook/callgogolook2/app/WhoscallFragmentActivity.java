package gogolook.callgogolook2.app;

import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.util.control.VersionManager;
import p081h.p119d.p120a.p142t.C6039n;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p518j.p519e.C12479a;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p518j.p520f.C12487c;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13937c3;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p590x4.C14260e;
import p459j.p460a.p613z0.p617p.DialogC14676d;
@Deprecated
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/app/WhoscallFragmentActivity.class */
public class WhoscallFragmentActivity extends FragmentActivity implements AbstractC12474a {

    /* renamed from: a */
    public C12487c f10656a;

    /* renamed from: b */
    public Menu f10657b;

    /* renamed from: c */
    public DialogC14676d.C14680c f10658c;

    /* renamed from: d */
    public Fragment f10659d;

    /* renamed from: e */
    public static String m28663e(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: D */
    public final void m28671D() {
        this.f10656a = new C12487c(this, m28667H());
        this.f10656a.setId(R$id.base_layout);
        super.setContentView(this.f10656a);
    }

    /* renamed from: E */
    public void m28670E() {
        C13937c3.m3014a(this);
        finish();
    }

    /* renamed from: F */
    public int m28669F() {
        return m28668G().m6036c() <= 0 ? C14123p4.m2448a(m28668G().m6036c(), 0.9f) : getResources().getColor(2131100101);
    }

    /* renamed from: G */
    public C12484b m28668G() {
        C12487c cVar = this.f10656a;
        if (cVar != null) {
            return cVar.f28158b;
        }
        return null;
    }

    /* renamed from: H */
    public boolean m28667H() {
        return false;
    }

    /* renamed from: I */
    public final void m28666I() {
        if (this.f10657b == null) {
            this.f10657b = C12479a.m6058a();
        }
        onCreateOptionsMenu(this.f10657b);
    }

    /* renamed from: J */
    public boolean mo28093J() {
        return VersionManager.m25991e(4) || C13878a3.m3257E();
    }

    /* renamed from: a */
    public final void m28665a(Menu menu) {
        this.f10658c = new DialogC14676d.C14680c(this, menu);
        this.f10658c.m880a();
    }

    /* renamed from: a */
    public final void m28664a(Fragment fragment) {
        if (this.f10657b == null) {
            this.f10657b = C12479a.m6058a();
        }
        fragment.onCreateOptionsMenu(this.f10657b, getMenuInflater());
        if (m28668G() != null) {
            m28668G().m6050a();
            for (int i = 0; i < this.f10657b.size(); i++) {
                m28668G().m6046a(this.f10657b.getItem(i));
            }
        }
        this.f10658c = new DialogC14676d.C14680c(this, this.f10657b);
        this.f10658c.m880a();
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        Menu menu = this.f10657b;
        if (menu != null) {
            onPrepareOptionsMenu(menu);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (!(fragment instanceof C6039n)) {
            this.f10659d = fragment;
            m28664a(fragment);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m28666I();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 11 && getActionBar() != null) {
            getActionBar().hide();
        }
        m28671D();
        m28668G().m6043a(true);
        m28668G().m6032c(false);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (menu != null) {
            if (m28668G() != null) {
                m28668G().m6050a();
                for (int i = 0; i < menu.size(); i++) {
                    m28668G().m6046a(menu.getItem(i));
                }
            }
            m28665a(menu);
            invalidateOptionsMenu();
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int i2;
        if (i != 82) {
            return super.onKeyDown(i, keyEvent);
        }
        DialogC14676d.C14680c cVar = this.f10658c;
        if (cVar == null || (i2 = cVar.f32784a) == 0) {
            return true;
        }
        cVar.m879a(this.f10657b.findItem(i2));
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        } else {
            Fragment fragment = this.f10659d;
            if (fragment != null) {
                fragment.onOptionsItemSelected(menuItem);
            }
        }
        DialogC14676d.C14680c cVar = this.f10658c;
        if (cVar != null) {
            cVar.m879a(menuItem);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        if (m28668G() != null) {
            m28668G().m6047a(menu);
        }
        m28665a(menu);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (mo28093J()) {
            m28670E();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        C14123p4.m2442a(getWindow(), m28669F());
        C14260e.m2001a(this, getClass());
        C14260e.m1993d(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        C14260e.m1995c(this);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        this.f10656a.m6020a(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        this.f10656a.m6019a(view);
    }
}
