package gogolook.callgogolook2.about;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/VersionActivity.class */
public class VersionActivity extends WhoscallActivity {

    /* renamed from: e */
    public Context f10646e;

    /* renamed from: f */
    public TextView f10647f;

    /* renamed from: g */
    public TextView f10648g;

    /* renamed from: h */
    public String f10649h;

    /* renamed from: o */
    public final void m28876o() {
        setContentView(R$layout.about_version_activity);
        this.f10646e = this;
        C12484b i = m28683i();
        i.m6043a(true);
        i.m6032c(false);
        i.m6028d(true);
        i.m6038b(WhoscallActivity.m28686b(R$string.aboutus_page_version));
        try {
            this.f10649h = this.f10646e.getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
        }
        this.f10647f = (TextView) findViewById(R$id.tv_version);
        this.f10648g = (TextView) findViewById(R$id.tv_version_info);
        this.f10647f.setText(String.format(WhoscallActivity.m28686b(R$string.aboutus_version_current), this.f10649h));
        this.f10648g.setText(WhoscallActivity.m28686b(R$string.version_message).replace("\n", "\n\n"));
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m28876o();
        m28875p();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        C14217x3.m2167b((Activity) this);
        return true;
    }

    /* renamed from: p */
    public final void m28875p() {
    }
}
