package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.availableupdate.i0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/i0.class */
public class C2258i0 {

    /* renamed from: a */
    public AlertDialog.Builder f7321a;

    /* renamed from: b */
    public Activity f7322b;

    /* renamed from: c */
    public AbstractC2266q f7323c;

    /* renamed from: com.huawei.hms.availableupdate.i0$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/i0$a.class */
    public class DialogInterface$OnClickListenerC2259a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC2259a() {
            C2258i0.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            HMSLog.m37193i("ReconfirmInstallDialog", "start fireDoWork...");
            C2258i0.this.f7323c.m38125d();
        }
    }

    /* renamed from: com.huawei.hms.availableupdate.i0$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/i0$b.class */
    public class DialogInterface$OnClickListenerC2260b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC2260b() {
            C2258i0.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            HMSLog.m37193i("ReconfirmInstallDialog", "start cancel...");
            C2258i0.this.f7323c.m38131a();
        }
    }

    public C2258i0(AlertDialog.Builder builder, Activity activity, AbstractC2266q abstractC2266q) {
        this.f7321a = builder;
        this.f7322b = activity;
        this.f7323c = abstractC2266q;
    }

    /* renamed from: a */
    public AlertDialog m38148a() {
        Activity activity;
        try {
            int stringId = ResourceLoaderUtil.getStringId("hms_install_after_cancel");
            int stringId2 = ResourceLoaderUtil.getStringId("hms_cancel_after_cancel");
            int stringId3 = ResourceLoaderUtil.getStringId("hms_cancel_install_message");
            if (this.f7321a != null && (activity = this.f7322b) != null && this.f7323c != null) {
                if (activity.isFinishing()) {
                    HMSLog.m37195e("ReconfirmInstallDialog", "this mActivity is finished.");
                    return null;
                }
                this.f7321a.setMessage(this.f7322b.getString(stringId3));
                this.f7321a.setPositiveButton(stringId, new DialogInterface$OnClickListenerC2259a());
                this.f7321a.setNegativeButton(stringId2, new DialogInterface$OnClickListenerC2260b());
                return this.f7321a.create();
            }
            HMSLog.m37195e("ReconfirmInstallDialog", "error: mBuilder, mActivity or mDialog is null: " + this.f7321a + this.f7322b + this.f7323c);
            return null;
        } catch (Exception e) {
            C22128a.m8735A0(e, C22128a.m8728C("createNewDialog exception: "), "ReconfirmInstallDialog");
            return null;
        }
    }
}
