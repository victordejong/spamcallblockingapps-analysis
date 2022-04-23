package gogolook.callgogolook2.messaging.p078ui.attachmentchooser;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.MenuItem;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity;
import gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentChooserFragment;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentChooserActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentChooserActivity.class */
public class AttachmentChooserActivity extends BugleActionBarActivity implements AttachmentChooserFragment.AbstractC4708a {
    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        if (fragment instanceof AttachmentChooserFragment) {
            String stringExtra = getIntent().getStringExtra("conversation_id");
            C12151d.m7000b(stringExtra);
            AttachmentChooserFragment attachmentChooserFragment = (AttachmentChooserFragment) fragment;
            attachmentChooserFragment.m27292a(stringExtra);
            attachmentChooserFragment.m27294a(this);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        setResult(0);
        finish();
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.attachment_chooser_activity);
        getSupportActionBar().setHomeAsUpIndicator(R$drawable.ab_back_btn);
        C12212s0.m6795a((Activity) this, getResources().getColor(2131100157));
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        setResult(0);
        finish();
        return true;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentChooserFragment.AbstractC4708a
    /* renamed from: q */
    public void mo27291q() {
        setResult(-1);
        finish();
    }
}
