package gogolook.callgogolook2.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.util.control.VersionManager;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p518j.p519e.C12479a;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p518j.p520f.C12487c;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13937c3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p590x4.C14260e;
import p459j.p460a.p613z0.p617p.DialogC14676d;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/app/WhoscallActivity.class */
public class WhoscallActivity extends Activity implements AbstractC12474a {

    /* renamed from: a */
    public Context f10650a;

    /* renamed from: b */
    public C12487c f10651b;

    /* renamed from: c */
    public Menu f10652c;

    /* renamed from: d */
    public DialogC14676d.C14680c f10653d;

    /* renamed from: gogolook.callgogolook2.app.WhoscallActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/app/WhoscallActivity$a.class */
    public class View$OnClickListenerC4420a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Dialog f10654a;

        public View$OnClickListenerC4420a(WhoscallActivity whoscallActivity, Dialog dialog) {
            this.f10654a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f10654a.dismiss();
        }
    }

    /* renamed from: a */
    public static String m28687a(int i, Object... objArr) {
        return C14206w4.m2224a(i, objArr);
    }

    /* renamed from: b */
    public static String m28686b(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public View m28689a(int i) {
        return m28683i().m6049a(i);
    }

    /* renamed from: a */
    public void m28688a(int i, int i2) {
        m28683i().m6048a(i, i2);
    }

    /* renamed from: f */
    public final void m28685f() {
        this.f10651b = new C12487c(this, m28682j());
        super.setContentView(this.f10651b);
    }

    /* renamed from: g */
    public void m28684g() {
        C13937c3.m3014a(this);
        finish();
    }

    /* renamed from: h */
    public int mo27893h() {
        return m28683i().m6036c() <= 0 ? C14123p4.m2448a(m28683i().m6036c(), 0.9f) : getResources().getColor(2131100101);
    }

    /* renamed from: i */
    public C12484b m28683i() {
        C12487c cVar = this.f10651b;
        if (cVar != null) {
            return cVar.f28158b;
        }
        return null;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        Menu menu = this.f10652c;
        if (menu != null) {
            onPrepareOptionsMenu(menu);
            this.f10653d.m878b();
        }
    }

    /* renamed from: j */
    public boolean m28682j() {
        return false;
    }

    /* renamed from: k */
    public final void m28681k() {
        if (this.f10652c == null) {
            this.f10652c = C12479a.m6058a();
        }
        onCreateOptionsMenu(this.f10652c);
    }

    /* renamed from: l */
    public void m28680l() {
        if (C14017g4.m2805s()) {
            m28683i().setElevation(0.0f);
        }
        m28683i().setBackgroundColor(-1);
        m28683i().m6026e(Color.parseColor("#222222"));
        m28683i().m6041b(R$drawable.actionbar_back_gray_btn);
        C14123p4.m2442a(getWindow(), C14123p4.m2448a(m28683i().m6036c(), 0.8f));
    }

    /* renamed from: m */
    public boolean mo28679m() {
        return VersionManager.m25991e(4) || C13878a3.m3257E();
    }

    /* renamed from: n */
    public void m28678n() {
        Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.setContentView(R$layout.intro_force_dialog);
        dialog.getWindow().setLayout(getResources().getDimensionPixelSize(R$dimen.force_login_dialog_width), -2);
        dialog.findViewById(R$id.tv_confirm_dialog).setOnClickListener(new View$OnClickListenerC4420a(this, dialog));
        dialog.show();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m28681k();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f10650a = this;
        if (Build.VERSION.SDK_INT >= 11 && getActionBar() != null) {
            getActionBar().hide();
        }
        m28685f();
        m28683i().m6043a(true);
        m28683i().m6032c(false);
        C14123p4.m2442a(getWindow(), mo27893h());
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (menu != null) {
            m28683i().m6050a();
            for (int i = 0; i < menu.size(); i++) {
                m28683i().m6046a(menu.getItem(i));
            }
            this.f10653d = new DialogC14676d.C14680c(this, menu);
            this.f10653d.m880a();
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
        DialogC14676d.C14680c cVar = this.f10653d;
        if (cVar == null || (i2 = cVar.f32784a) == 0) {
            return true;
        }
        cVar.m879a(this.f10652c.findItem(i2));
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        DialogC14676d.C14680c cVar = this.f10653d;
        if (cVar != null) {
            cVar.m879a(menuItem);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        m28683i().m6047a(menu);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (mo28679m()) {
            m28684g();
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        C14260e.m2001a(this, getClass());
        C14260e.m1993d(this);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        C14260e.m1995c(this);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        this.f10651b.m6020a(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        this.f10651b.m6019a(view);
    }
}
