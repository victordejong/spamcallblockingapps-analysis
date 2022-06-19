package com.huawei.hms.common.internal;

import com.huawei.hms.common.internal.HuaweiApiManager;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2$1.class */
public class HuaweiApiManager$ConnectionManager$2$1 implements Runnable {
    public final /* synthetic */ HuaweiApiManager.ConnectionManager.2 this$2;

    public HuaweiApiManager$ConnectionManager$2$1(HuaweiApiManager.ConnectionManager.2 r4) {
        this.this$2 = r4;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$2.this$1.disconnect();
    }
}
