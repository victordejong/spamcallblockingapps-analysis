package com.callapp.contacts.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.callapp.contacts.activity.CorePermissionsNotGrantedActivity;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.PowerUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/CorePermissionsNotGrantedActivity.class */
public class CorePermissionsNotGrantedActivity extends BaseNoTitleActivity {

    /* renamed from: com.callapp.contacts.activity.CorePermissionsNotGrantedActivity$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1.class */
    public class C56541 implements ActivityResult {

        /* renamed from: com.callapp.contacts.activity.CorePermissionsNotGrantedActivity$1$1 */
        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1.class */
        public class C56551 implements Task.DoneListener {
            C56551() {
                C56541.this = r4;
            }

            /* renamed from: a */
            public /* synthetic */ void m31782a() {
                CorePermissionsNotGrantedActivity.this.setResult(-1);
                CorePermissionsNotGrantedActivity.this.finish();
            }

            @Override // com.callapp.contacts.manager.task.Task.DoneListener
            public void onDone() {
                CorePermissionsNotGrantedActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity._$$Lambda$CorePermissionsNotGrantedActivity$1$1$tSKPjDOdp5Lmp5BGUzmi6ar_tUQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        CorePermissionsNotGrantedActivity.C56541.C56551.this.m31782a();
                    }
                });
            }
        }

        C56541() {
            CorePermissionsNotGrantedActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m31785a() {
            if (Build.VERSION.SDK_INT >= 29) {
                Activities.m27691a((Activity) CorePermissionsNotGrantedActivity.this, new ActivityResult() { // from class: com.callapp.contacts.activity._$$Lambda$CorePermissionsNotGrantedActivity$1$p4EppID6ZQ_pvT7fdZO3zZs_frY
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public final void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                        CorePermissionsNotGrantedActivity.C56541.this.m31784a(activity, i, i2, intent);
                    }
                });
            } else {
                FeedbackManager.get().m28671a(CorePermissionsNotGrantedActivity.this.getString(2131886669));
            }
        }

        /* renamed from: a */
        public /* synthetic */ void m31784a(Activity activity, int i, int i2, Intent intent) {
            CorePermissionsNotGrantedActivity.this.m31788b();
        }

        /* renamed from: a */
        public /* synthetic */ void m31783a(String[] strArr, int[] iArr) {
            PowerUtils.m27429a(CorePermissionsNotGrantedActivity.this, new C56551());
        }

        @Override // com.callapp.contacts.manager.popup.ActivityResult
        public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
            AnalyticsManager.get().mo28446a(Constants.PERMISSIONS, "Default dailer from setup", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false", 0.0d);
            AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Default dialer", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false");
            AnalyticsManager.get().mo28434g();
            CorePermissionsNotGrantedActivity.this.getPermissionManager().m28255a(CorePermissionsNotGrantedActivity.this, new PermissionManager.OnCorePermissionGrantedCallback() { // from class: com.callapp.contacts.activity._$$Lambda$CorePermissionsNotGrantedActivity$1$IIb1TcAS4Ynb0TKK_PX7Zz1Vl4w
                @Override // com.callapp.contacts.manager.permission.PermissionManager.OnCorePermissionGrantedCallback
                public final void onCorePermissionsGranted(String[] strArr, int[] iArr) {
                    CorePermissionsNotGrantedActivity.C56541.this.m31783a(strArr, iArr);
                }
            }, new Runnable() { // from class: com.callapp.contacts.activity._$$Lambda$CorePermissionsNotGrantedActivity$1$VyTEjwITCuVqnS6KqYHSUJ_Segg
                @Override // java.lang.Runnable
                public final void run() {
                    CorePermissionsNotGrantedActivity.C56541.this.m31785a();
                }
            });
        }
    }

    /* renamed from: a */
    private void m31794a() {
        if (isRegistrationCompleted()) {
            m31788b();
        } else {
            Activities.m27687a((Activity) this, true, (ActivityResult) new C56541());
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m31793a(Activity activity) {
        m31794a();
    }

    /* renamed from: a */
    public static void m31792a(Context context) {
        Intent intent = new Intent(context, CorePermissionsNotGrantedActivity.class);
        if (!(context instanceof Activity)) {
            context.startActivity(intent);
            return;
        }
        Activity activity = (Activity) context;
        activity.startActivityForResult(intent, 12345);
        activity.overridePendingTransition(17432576, 17432577);
    }

    /* renamed from: a */
    public /* synthetic */ void m31791a(View view) {
        m31794a();
    }

    /* renamed from: a */
    public /* synthetic */ void m31789a(String[] strArr, int[] iArr) {
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity._$$Lambda$CorePermissionsNotGrantedActivity$xrDqXeaVUrhwHp1XyKYzAVc7oTw
            @Override // java.lang.Runnable
            public final void run() {
                CorePermissionsNotGrantedActivity.this.m31786d();
            }
        });
    }

    /* renamed from: b */
    public void m31788b() {
        getPermissionManager().m28255a(this, new PermissionManager.OnCorePermissionGrantedCallback() { // from class: com.callapp.contacts.activity._$$Lambda$CorePermissionsNotGrantedActivity$kn0eZvCPGgfu2afd8Zm1Dk8v7fo
            @Override // com.callapp.contacts.manager.permission.PermissionManager.OnCorePermissionGrantedCallback
            public final void onCorePermissionsGranted(String[] strArr, int[] iArr) {
                CorePermissionsNotGrantedActivity.this.m31789a(strArr, iArr);
            }
        }, new Runnable() { // from class: com.callapp.contacts.activity._$$Lambda$CorePermissionsNotGrantedActivity$J7GzgmASyW3tYTGUcohS_yQ0lBc
            @Override // java.lang.Runnable
            public final void run() {
                CorePermissionsNotGrantedActivity.this.m31787c();
            }
        });
    }

    /* renamed from: c */
    public void m31787c() {
        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131232108, Activities.getString(2131886668), Activities.getString(2131886667), Activities.getString(2131887338), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity._$$Lambda$CorePermissionsNotGrantedActivity$Ut7Ls18kLKkqkLfZaAud4fatP6I
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                CorePermissionsNotGrantedActivity.this.m31793a(activity);
            }
        }, null, -1, null);
        dialogMessageWithTopImage.setCancelable(false);
        PopupManager.get().m28209a(this, dialogMessageWithTopImage);
    }

    /* renamed from: d */
    public /* synthetic */ void m31786d() {
        setResult(-1);
        finish();
    }

    private boolean isRegistrationCompleted() {
        return Prefs.f26246aW.get().booleanValue();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return isRegistrationCompleted() ? 2131558456 : 2131558447;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m31794a();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRegistrationCompleted()) {
            m31787c();
        } else {
            Button button = (Button) findViewById(2131362480);
            TextView textView = (TextView) findViewById(2131362484);
            TextView textView2 = (TextView) findViewById(2131362483);
            if (textView != null) {
                textView.setText(Activities.getString(2131886668));
            }
            if (textView2 != null) {
                textView2.setText(Activities.getString(2131886667));
            }
            if (button != null) {
                button.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity._$$Lambda$CorePermissionsNotGrantedActivity$cfhqpifffxNuuVMPuXWzE5ILUAE
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CorePermissionsNotGrantedActivity.this.m31791a(view);
                    }
                });
                button.setText(Activities.getString(2131886666));
            }
        }
        AnalyticsManager.get().m28439e(Constants.CORE_PERMISSION_NOT_GRANTED_SCREEN);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CORE_PERMISSION_NOT_GRANTED_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
