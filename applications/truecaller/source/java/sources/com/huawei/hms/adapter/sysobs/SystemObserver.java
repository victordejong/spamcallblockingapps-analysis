package com.huawei.hms.adapter.sysobs;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/adapter/sysobs/SystemObserver.class */
public interface SystemObserver {
    boolean onNoticeResult(int i);

    boolean onSolutionResult(Intent intent, String str);

    boolean onUpdateResult(int i);
}
