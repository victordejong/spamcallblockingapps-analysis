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
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.g.d;
import com.bytedance.sdk.openadsdk.core.g.e;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.widget.b;
import com.bytedance.sdk.openadsdk.utils.f;
import com.bytedance.sdk.openadsdk.utils.g;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTDelegateActivity.class */
public class TTDelegateActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private Intent f8449a;

    /* renamed from: b  reason: collision with root package name */
    private AlertDialog f8450b;

    /* renamed from: c  reason: collision with root package name */
    private b f8451c;

    /* renamed from: d  reason: collision with root package name */
    private TTAdDislike f8452d;

    public static void a() {
        Intent intent = new Intent(n.a(), TTDelegateActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 5);
        if (n.a() != null) {
            n.a().startActivity(intent);
        }
    }

    public static void a(i iVar) {
        Intent intent = new Intent(n.a(), TTDelegateActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 6);
        intent.putExtra("materialmeta", iVar.ag().toString());
        if (n.a() != null) {
            n.a().startActivity(intent);
        }
    }

    private void a(String str) {
        if (str != null && this.f8452d == null) {
            try {
                com.bytedance.sdk.openadsdk.dislike.b bVar = new com.bytedance.sdk.openadsdk.dislike.b(this, com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(str)));
                this.f8452d = bVar;
                bVar.setDislikeInteractionCallback(new TTAdDislike.DislikeInteractionCallback() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.1
                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onCancel() {
                        q.c("showDislike", "onCancel->onCancel....");
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onRefuse() {
                        q.c("showDislike", "onRefuse->onRefuse....");
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onSelected(int i, String str2) {
                        q.c("showDislike", "onSelected->position=" + i + ",value=" + str2);
                        TTDelegateActivity.this.finish();
                    }
                });
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        TTAdDislike tTAdDislike = this.f8452d;
        if (tTAdDislike != null) {
            tTAdDislike.showDislikeDialog();
        }
    }

    private void a(String str, String str2, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (this.f8450b == null) {
                this.f8450b = new AlertDialog.Builder(this, x.g(this, Build.VERSION.SDK_INT >= 21 ? "Theme.Dialog.TTDownload" : "Theme.Dialog.TTDownloadOld")).create();
            }
            this.f8450b.setTitle(String.valueOf(str));
            this.f8450b.setMessage(String.valueOf(str2));
            this.f8450b.setButton(-1, x.a(this, "tt_label_ok"), onClickListener);
            this.f8450b.setButton(-2, x.a(this, "tt_label_cancel"), onClickListener2);
            this.f8450b.setOnCancelListener(onCancelListener);
            if (!this.f8450b.isShowing()) {
                this.f8450b.show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void a(final String str, String str2, String str3) {
        String str4 = str2;
        if (TextUtils.isEmpty(str2)) {
            str4 = x.a(this, "tt_tip");
        }
        String str5 = str3;
        if (TextUtils.isEmpty(str3)) {
            str5 = "";
        }
        a(str4, str5, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                f.a(str);
                TTDelegateActivity.this.finish();
            }
        }, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                f.b(str);
                TTDelegateActivity.this.finish();
            }
        }, new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.7
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                f.c(str);
                TTDelegateActivity.this.finish();
            }
        });
    }

    private void a(final String str, String[] strArr) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            finish();
        } else if (Build.VERSION.SDK_INT >= 23) {
            try {
                d.a().a(this, strArr, new e() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.4
                    @Override // com.bytedance.sdk.openadsdk.core.g.e
                    public void a() {
                        g.a(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.g.e
                    public void a(String str2) {
                        g.a(str, str2);
                        TTDelegateActivity.this.finish();
                    }
                });
            } catch (Exception e) {
                finish();
            }
        } else {
            q.b(TTAdConstant.TAG, "已经有权限");
            finish();
        }
    }

    private void b() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = BitmapDescriptorFactory.HUE_RED;
        window.setAttributes(attributes);
    }

    private void c() {
        int intExtra = this.f8449a.getIntExtra("type", 0);
        String stringExtra = this.f8449a.getStringExtra("app_download_url");
        this.f8449a.getStringExtra("app_name");
        if (intExtra == 1) {
            return;
        }
        if (intExtra == 3) {
            a(stringExtra, this.f8449a.getStringExtra("dialog_title_key"), this.f8449a.getStringExtra("dialog_content_key"));
        } else if (intExtra == 4) {
            a(this.f8449a.getStringExtra("permission_id_key"), this.f8449a.getStringArrayExtra("permission_content_key"));
        } else if (intExtra == 5) {
            d();
        } else if (intExtra != 6) {
            finish();
        } else {
            a(this.f8449a.getStringExtra("materialmeta"));
        }
    }

    private void d() {
        if (this.f8451c == null) {
            b bVar = new b(this);
            this.f8451c = bVar;
            bVar.a(x.a(this, "no_thank_you"), new b.AbstractC0171b() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.3
                @Override // com.bytedance.sdk.openadsdk.core.widget.b.AbstractC0171b
                public void a() {
                    com.bytedance.sdk.openadsdk.core.g.b().b(0);
                    if (TTDelegateActivity.this.f8451c.isShowing()) {
                        TTDelegateActivity.this.f8451c.dismiss();
                    }
                    TTDelegateActivity.this.finish();
                }
            }).a(x.a(this, "yes_i_agree"), new b.c() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.2
                @Override // com.bytedance.sdk.openadsdk.core.widget.b.c
                public void a() {
                    com.bytedance.sdk.openadsdk.core.g.b().b(1);
                    if (TTDelegateActivity.this.f8451c.isShowing()) {
                        TTDelegateActivity.this.f8451c.dismiss();
                    }
                    TTDelegateActivity.this.finish();
                }
            });
        }
        if (!this.f8451c.isShowing()) {
            this.f8451c.show();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b();
        this.f8449a = getIntent();
        if (n.a() == null) {
            n.a(this);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            AlertDialog alertDialog = this.f8450b;
            if (alertDialog != null && alertDialog.isShowing()) {
                this.f8450b.dismiss();
            }
            b bVar = this.f8451c;
            if (bVar != null && bVar.isShowing()) {
                this.f8451c.dismiss();
            }
        } catch (Throwable th) {
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (n.a() == null) {
            n.a(this);
        }
        setIntent(intent);
        this.f8449a = intent;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        d.a().a(this, strArr, iArr);
        finish();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (getIntent() != null) {
            c();
        }
    }
}
