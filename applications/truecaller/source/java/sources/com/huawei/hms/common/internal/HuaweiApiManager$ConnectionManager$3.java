package com.huawei.hms.common.internal;

import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.common.internal.HuaweiApiManager;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3.class */
public class HuaweiApiManager$ConnectionManager$3 implements Runnable {
    public final /* synthetic */ HuaweiApiManager.ConnectionManager this$1;
    public final /* synthetic */ ConnectionResult val$result;

    public HuaweiApiManager$ConnectionManager$3(HuaweiApiManager.ConnectionManager connectionManager, ConnectionResult connectionResult) {
        this.this$1 = connectionManager;
        this.val$result = connectionResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        HuaweiApiManager.ConnectionManager.access$600(this.this$1, this.val$result);
    }
}
