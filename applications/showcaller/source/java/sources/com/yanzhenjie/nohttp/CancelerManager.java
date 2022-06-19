package com.yanzhenjie.nohttp;

import com.yanzhenjie.nohttp.able.Cancelable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/CancelerManager.class */
public class CancelerManager {
    private final Map<BasicRequest<?>, Cancelable> mCancelMap = new ConcurrentHashMap();

    public void addCancel(BasicRequest<?> basicRequest, Cancelable cancelable) {
        this.mCancelMap.put(basicRequest, cancelable);
    }

    public void cancel(Object obj) {
        for (Map.Entry<BasicRequest<?>, Cancelable> entry : this.mCancelMap.entrySet()) {
            Object cancelSign = entry.getKey().getCancelSign();
            if (obj == cancelSign || (obj != null && obj.equals(cancelSign))) {
                entry.getValue().cancel();
            }
        }
    }

    public void cancelAll() {
        for (Map.Entry<BasicRequest<?>, Cancelable> entry : this.mCancelMap.entrySet()) {
            entry.getValue().cancel();
        }
    }

    public void removeCancel(BasicRequest<?> basicRequest) {
        this.mCancelMap.remove(basicRequest);
    }

    public int size() {
        return this.mCancelMap.size();
    }
}
