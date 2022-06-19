package com.huawei.hms.common.internal;

import com.huawei.hms.common.internal.HuaweiApiManager;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1$1.class */
public class HuaweiApiManager$ConnectionManager$1$1 implements Runnable {
    public final /* synthetic */ HuaweiApiManager.ConnectionManager.1 this$2;

    public HuaweiApiManager$ConnectionManager$1$1(HuaweiApiManager.ConnectionManager.1 r4) {
        this.this$2 = r4;
    }

    @Override // java.lang.Runnable
    public void run() {
        HuaweiApiManager.ConnectionManager.access$200(this.this$2.this$1).remove(this.this$2.val$callbackWrapper);
    }
}
