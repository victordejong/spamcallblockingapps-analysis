package gogolook.callgogolook2.about;

import android.app.Activity;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.RelativeLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/ServiceActivity.class */
public class ServiceActivity extends WhoscallActivity {
    /* renamed from: o */
    public final void m28878o() {
        C12484b i = m28683i();
        i.m6043a(true);
        i.m6032c(false);
        i.m6028d(true);
        i.m6038b(WhoscallActivity.m28686b(R$string.aboutus_page_service));
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m28878o();
        m28877p();
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
    public final void m28877p() {
        if (C14217x3.m2137h(this)) {
            String str = C14017g4.m2816h().equals("zh") ? "http://whoscall.com/tw/mobile/terms.php" : "http://whoscall.com/en/mobile/terms.php";
            ProgressWebView progressWebView = new ProgressWebView(this, null);
            progressWebView.loadUrl(str);
            setContentView(progressWebView);
            return;
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        TextView textView = new TextView(this);
        textView.setText(WhoscallActivity.m28686b(R$string.aboutus_service_nointernet));
        relativeLayout.setGravity(17);
        relativeLayout.addView(textView);
        setContentView(relativeLayout);
    }
}
