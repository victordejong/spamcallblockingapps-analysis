package com.huawei.hms.push.task;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.push.utils.PushBiUtil;
import com.huawei.hms.support.api.entity.push.PushNaming;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/task/IntentCallable.class */
public class IntentCallable implements Callable<Void> {

    /* renamed from: a */
    public Context f7771a;

    /* renamed from: b */
    public Intent f7772b;

    /* renamed from: c */
    public String f7773c;

    public IntentCallable(Context context, Intent intent, String str) {
        this.f7771a = context;
        this.f7772b = intent;
        this.f7773c = str;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.f7771a.sendBroadcast(this.f7772b);
        PushBiUtil.reportExit(this.f7771a, PushNaming.SET_NOTIFY_FLAG, this.f7773c, ErrorEnum.SUCCESS);
        return null;
    }
}
