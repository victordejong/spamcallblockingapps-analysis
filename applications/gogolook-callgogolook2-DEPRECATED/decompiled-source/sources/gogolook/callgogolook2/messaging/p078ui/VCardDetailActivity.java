package gogolook.callgogolook2.messaging.p078ui;

import android.app.Activity;
import android.app.Fragment;
import android.net.Uri;
import android.os.Bundle;
import android.view.MenuItem;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.VCardDetailActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VCardDetailActivity.class */
public class VCardDetailActivity extends BugleActionBarActivity {
    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        Uri uri;
        if ((fragment instanceof VCardDetailFragment) && (uri = (Uri) getIntent().getParcelableExtra("vcard_uri")) != null) {
            ((VCardDetailFragment) fragment).m27324a(uri);
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.vcard_detail_activity);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeAsUpIndicator(R$drawable.ab_back_btn);
        C12212s0.m6795a((Activity) this, getResources().getColor(2131100157));
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }
}
