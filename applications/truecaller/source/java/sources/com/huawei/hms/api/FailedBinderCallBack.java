package com.huawei.hms.api;

import com.huawei.hms.support.log.HMSLog;
import java.sql.Timestamp;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/FailedBinderCallBack.class */
public class FailedBinderCallBack {
    public static final String CALLER_ID = "callId";

    /* renamed from: a */
    private static FailedBinderCallBack f7269a;

    /* renamed from: b */
    private static Map<Long, BinderCallBack> f7270b = new ConcurrentHashMap();

    /* renamed from: c */
    private static final Object f7271c = new Object();

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/FailedBinderCallBack$BinderCallBack.class */
    public interface BinderCallBack {
        void binderCallBack(int i);
    }

    private FailedBinderCallBack() {
    }

    /* renamed from: a */
    private void m38171a() {
        long time = new Timestamp(System.currentTimeMillis()).getTime();
        for (Long l : f7270b.keySet()) {
            if (time - 10000 >= l.longValue()) {
                f7270b.remove(l);
            }
        }
    }

    /* renamed from: a */
    private void m38170a(Long l, BinderCallBack binderCallBack) {
        if (f7270b == null) {
            HMSLog.m37195e("FailedBinderCallBack", "binderCallBackMap is null");
            return;
        }
        m38171a();
        f7270b.put(l, binderCallBack);
    }

    public static FailedBinderCallBack getInstance() {
        synchronized (f7271c) {
            if (f7269a == null) {
                f7269a = new FailedBinderCallBack();
            }
        }
        return f7269a;
    }

    public BinderCallBack getCallBack(Long l) {
        Map<Long, BinderCallBack> map = f7270b;
        if (map == null) {
            HMSLog.m37195e("FailedBinderCallBack", "binderCallBackMap is null");
            return null;
        }
        return map.remove(l);
    }

    public void setCallBack(Long l, BinderCallBack binderCallBack) {
        m38170a(l, binderCallBack);
    }
}
