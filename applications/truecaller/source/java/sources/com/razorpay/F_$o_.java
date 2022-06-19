package com.razorpay;

import android.app.Activity;
import com.razorpay.Y_;
/* loaded from: classes3-dex2jar.jar:com/razorpay/F_$o_.class */
public final class F_$o_ {

    /* renamed from: b */
    public static String f9386b = "magic_version";

    /* renamed from: a */
    public Activity f9387a;

    /* renamed from: c */
    private String f9388c;

    public F_$o_(Activity activity) {
        this.f9387a = activity;
    }

    /* renamed from: a */
    public final String m36103a() {
        if (this.f9388c == null) {
            if (BaseUtils.getLocalVersion(this.f9387a, f9386b).equals(BaseUtils.getVersionFromJsonString(BaseConfig.getVersionJSON(), f9386b))) {
                this.f9388c = BaseConfig.getMagicJs();
            } else {
                try {
                    this.f9388c = BaseUtils.getFileFromInternal(this.f9387a, Y_.H_.a().getMagicJsFileName(), f9386b);
                } catch (Exception e) {
                    this.f9388c = BaseConfig.getMagicJs();
                }
            }
        }
        return this.f9388c;
    }
}
