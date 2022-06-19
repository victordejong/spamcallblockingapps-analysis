package com.huawei.hms.common.internal;

import com.huawei.hms.common.internal.HuaweiApiManager;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$5.class */
public class HuaweiApiManager$ConnectionManager$5 implements Runnable {
    public final /* synthetic */ HuaweiApiManager.ConnectionManager this$1;
    public final /* synthetic */ int val$cause;

    public HuaweiApiManager$ConnectionManager$5(HuaweiApiManager.ConnectionManager connectionManager, int i) {
        this.this$1 = connectionManager;
        this.val$cause = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        HuaweiApiManager.ConnectionManager.access$800(this.this$1, this.val$cause);
    }
}
