package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.core.C4493b;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p156g.AbstractC4575e;
import com.bytedance.sdk.openadsdk.core.p156g.C4574d;
import com.bytedance.sdk.openadsdk.core.widget.DialogC4770b;
import com.bytedance.sdk.openadsdk.dislike.C4852b;
import com.bytedance.sdk.openadsdk.utils.C5454f;
import com.bytedance.sdk.openadsdk.utils.C5457g;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTDelegateActivity.class */
public class TTDelegateActivity extends Activity {

    /* renamed from: a */
    private Intent f15750a;

    /* renamed from: b */
    private AlertDialog f15751b;

    /* renamed from: c */
    private DialogC4770b f15752c;

    /* renamed from: d */
    private TTAdDislike f15753d;

    /* renamed from: a */
    public static void m35921a() {
        Intent intent = new Intent(C4600n.m34815a(), TTDelegateActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 5);
        if (C4600n.m34815a() != null) {
            C4600n.m34815a().startActivity(intent);
        }
    }

    /* renamed from: a */
    public static void m35919a(C4557i c4557i) {
        Intent intent = new Intent(C4600n.m34815a(), TTDelegateActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 6);
        intent.putExtra("materialmeta", c4557i.m35196ag().toString());
        if (C4600n.m34815a() != null) {
            C4600n.m34815a().startActivity(intent);
        }
    }

    /* renamed from: a */
    private void m35918a(String str) {
        if (str != null && this.f15753d == null) {
            try {
                C4852b c4852b = new C4852b(this, C4493b.m35502a(new JSONObject(str)));
                this.f15753d = c4852b;
                c4852b.setDislikeInteractionCallback(new TTAdDislike.DislikeInteractionCallback() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.1
                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onCancel() {
                        C5478q.m32109c("showDislike", "onCancel->onCancel....");
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onRefuse() {
                        C5478q.m32109c("showDislike", "onRefuse->onRefuse....");
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onSelected(int i, String str2) {
                        C5478q.m32109c("showDislike", "onSelected->position=" + i + ",value=" + str2);
                        TTDelegateActivity.this.finish();
                    }
                });
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        TTAdDislike tTAdDislike = this.f15753d;
        if (tTAdDislike != null) {
            tTAdDislike.showDislikeDialog();
        }
    }

    /* renamed from: a */
    private void m35917a(String str, String str2, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (this.f15751b == null) {
                this.f15751b = new AlertDialog.Builder(this, C5486x.m32064g(this, Build.VERSION.SDK_INT >= 21 ? "Theme.Dialog.TTDownload" : "Theme.Dialog.TTDownloadOld")).create();
            }
            this.f15751b.setTitle(String.valueOf(str));
            this.f15751b.setMessage(String.valueOf(str2));
            this.f15751b.setButton(-1, C5486x.m32071a(this, "tt_label_ok"), onClickListener);
            this.f15751b.setButton(-2, C5486x.m32071a(this, "tt_label_cancel"), onClickListener2);
            this.f15751b.setOnCancelListener(onCancelListener);
            if (this.f15751b.isShowing()) {
                return;
            }
            this.f15751b.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m35916a(final String str, String str2, String str3) {
        String str4 = str2;
        if (TextUtils.isEmpty(str2)) {
            str4 = C5486x.m32071a(this, "tt_tip");
        }
        String str5 = str3;
        if (TextUtils.isEmpty(str3)) {
            str5 = "";
        }
        m35917a(str4, str5, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C5454f.m32183a(str);
                TTDelegateActivity.this.finish();
            }
        }, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C5454f.m32180b(str);
                TTDelegateActivity.this.finish();
            }
        }, new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.7
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                C5454f.m32179c(str);
                TTDelegateActivity.this.finish();
            }
        });
    }

    /* renamed from: a */
    private void m35915a(final String str, String[] strArr) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            finish();
        } else if (Build.VERSION.SDK_INT < 23) {
            C5478q.m32112b(TTAdConstant.TAG, "已经有权限");
            finish();
        } else {
            try {
                C4574d.m34981a().m34980a(this, strArr, new AbstractC4575e() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.4
                    @Override // com.bytedance.sdk.openadsdk.core.p156g.AbstractC4575e
                    /* renamed from: a */
                    public void mo34970a() {
                        C5457g.m32173a(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.p156g.AbstractC4575e
                    /* renamed from: a */
                    public void mo34969a(String str2) {
                        C5457g.m32172a(str, str2);
                        TTDelegateActivity.this.finish();
                    }
                });
            } catch (Exception e) {
                finish();
            }
        }
    }

    /* renamed from: b */
    private void m35914b() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = BitmapDescriptorFactory.HUE_RED;
        window.setAttributes(attributes);
    }

    /* renamed from: c */
    private void m35913c() {
        int intExtra = this.f15750a.getIntExtra("type", 0);
        String stringExtra = this.f15750a.getStringExtra("app_download_url");
        this.f15750a.getStringExtra("app_name");
        if (intExtra != 1) {
            if (intExtra == 3) {
                m35916a(stringExtra, this.f15750a.getStringExtra("dialog_title_key"), this.f15750a.getStringExtra("dialog_content_key"));
            } else if (intExtra == 4) {
                m35915a(this.f15750a.getStringExtra("permission_id_key"), this.f15750a.getStringArrayExtra("permission_content_key"));
            } else if (intExtra == 5) {
                m35912d();
            } else if (intExtra != 6) {
                finish();
            } else {
                m35918a(this.f15750a.getStringExtra("materialmeta"));
            }
        }
    }

    /* renamed from: d */
    private void m35912d() {
        if (this.f15752c == null) {
            DialogC4770b dialogC4770b = new DialogC4770b(this);
            this.f15752c = dialogC4770b;
            dialogC4770b.m34048a(C5486x.m32071a(this, "no_thank_you"), new DialogC4770b.AbstractC4774b() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.3
                @Override // com.bytedance.sdk.openadsdk.core.widget.DialogC4770b.AbstractC4774b
                /* renamed from: a */
                public void mo34043a() {
                    C4570g.m35020b().m35019b(0);
                    if (TTDelegateActivity.this.f15752c.isShowing()) {
                        TTDelegateActivity.this.f15752c.dismiss();
                    }
                    TTDelegateActivity.this.finish();
                }
            }).m34047a(C5486x.m32071a(this, "yes_i_agree"), new DialogC4770b.AbstractC4775c() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.2
                @Override // com.bytedance.sdk.openadsdk.core.widget.DialogC4770b.AbstractC4775c
                /* renamed from: a */
                public void mo34042a() {
                    C4570g.m35020b().m35019b(1);
                    if (TTDelegateActivity.this.f15752c.isShowing()) {
                        TTDelegateActivity.this.f15752c.dismiss();
                    }
                    TTDelegateActivity.this.finish();
                }
            });
        }
        if (!this.f15752c.isShowing()) {
            this.f15752c.show();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m35914b();
        this.f15750a = getIntent();
        if (C4600n.m34815a() == null) {
            C4600n.m34814a(this);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            AlertDialog alertDialog = this.f15751b;
            if (alertDialog != null && alertDialog.isShowing()) {
                this.f15751b.dismiss();
            }
            DialogC4770b dialogC4770b = this.f15752c;
            if (dialogC4770b != null && dialogC4770b.isShowing()) {
                this.f15752c.dismiss();
            }
        } catch (Throwable th) {
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (C4600n.m34815a() == null) {
            C4600n.m34814a(this);
        }
        setIntent(intent);
        this.f15750a = intent;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        C4574d.m34981a().m34979a(this, strArr, iArr);
        finish();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (getIntent() != null) {
            m35913c();
        }
    }
}
