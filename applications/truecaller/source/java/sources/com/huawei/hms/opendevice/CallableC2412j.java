package com.huawei.hms.opendevice;

import android.content.Context;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.entity.AAIDResult;
import java.util.concurrent.Callable;
/* renamed from: com.huawei.hms.opendevice.j */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/j.class */
public class CallableC2412j implements Callable<AAIDResult> {

    /* renamed from: a */
    public Context f7642a;

    public CallableC2412j(Context context) {
        this.f7642a = context;
    }

    @Override // java.util.concurrent.Callable
    public AAIDResult call() throws Exception {
        Context context = this.f7642a;
        if (context != null) {
            String m37402c = C2417o.m37402c(context);
            AAIDResult aAIDResult = new AAIDResult();
            aAIDResult.setId(m37402c);
            return aAIDResult;
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }
}
