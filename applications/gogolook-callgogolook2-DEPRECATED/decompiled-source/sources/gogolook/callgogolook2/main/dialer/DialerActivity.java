package gogolook.callgogolook2.main.dialer;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import androidx.core.app.NavUtils;
import androidx.core.app.TaskStackBuilder;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.app.WhoscallCompatActivity;
import p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialerActivity.class */
public class DialerActivity extends WhoscallCompatActivity {

    /* renamed from: b */
    public boolean f11125b;

    /* renamed from: c */
    public boolean f11126c;

    /* renamed from: d */
    public View$OnLongClickListenerC11269m f11127d;

    /* renamed from: J */
    public final void m27822J() {
        Intent intent = getIntent();
        if (intent != null) {
            this.f11125b = intent.getBooleanExtra("is_from_dialer_shortcut", false);
            this.f11126c = intent.getBooleanExtra("is_from_dialer_deeplink", false);
            if (this.f11125b || this.f11126c) {
                C14289m.m1895a((Integer) null, (Integer) null, (Integer) null, this.f11125b ? "shortcut" : "deeplink", (String) null);
            } else {
                C14289m.m1895a((Integer) null, (Integer) null, (Integer) null, "calllogpage", (String) null);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f11125b || this.f11126c) {
            Intent parentActivityIntent = NavUtils.getParentActivityIntent(this);
            if ((parentActivityIntent == null || !NavUtils.shouldUpRecreateTask(this, parentActivityIntent)) && !isTaskRoot()) {
                NavUtils.navigateUpTo(this, parentActivityIntent);
            } else {
                TaskStackBuilder.create(this).addNextIntentWithParentStack(parentActivityIntent).startActivities();
            }
            finish();
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        return this.f11127d.onContextItemSelected(menuItem);
    }

    @Override // gogolook.callgogolook2.app.WhoscallCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f11127d = new View$OnLongClickListenerC11269m();
        setContentView(R$layout.activity_fragment_container);
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(R$id.fragment_container, this.f11127d).commit();
        }
        ActionBar F = m28675F();
        if (F != null) {
            F.hide();
        }
        m27822J();
        C14289m.m1870c();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        boolean z = this.f11125b;
        if (z) {
            C14217x3.m2195a(this, z);
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        Uri data;
        super.onStart();
        View$OnLongClickListenerC11269m mVar = this.f11127d;
        if (mVar != null) {
            mVar.m9901d(true);
            String action = getIntent().getAction();
            if (("android.intent.action.DIAL".equals(action) || "android.intent.action.VIEW".equals(action)) && (data = getIntent().getData()) != null && "tel".equals(data.getScheme())) {
                this.f11127d.m9898e(PhoneNumberUtils.convertKeypadLettersToDigits(PhoneNumberUtils.replaceUnicodeDigits(data.getSchemeSpecificPart())));
            }
        }
        m27822J();
    }

    @Override // gogolook.callgogolook2.app.WhoscallCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        int a = C13915b3.m3066a("prefs_dialer_pv", 0) + 1;
        C14289m.m1895a(Integer.valueOf(a), (Integer) null, (Integer) null, (String) null, (String) null);
        C13915b3.m3048d("prefs_dialer_pv", a);
    }
}
