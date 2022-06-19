package com.huawei.hms.support.api.push;

import android.app.Activity;
import android.os.Bundle;
import com.huawei.android.hms.push.C2224R;
import com.huawei.hms.push.C2431i;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/push/TransActivity.class */
public class TransActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2224R.layout.hwpush_trans_activity);
        getWindow().addFlags(67108864);
        C2431i.m37345a(this, getIntent());
        finish();
    }
}
