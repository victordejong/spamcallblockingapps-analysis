package com.yanzhenjie.nohttp.cookie;

import com.yanzhenjie.nohttp.cookie.BasicStore;
import java.net.CookieStore;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cookie/BasicStore.class */
public abstract class BasicStore<T extends BasicStore<T>> implements CookieStore {
    private boolean mEnable = true;

    public boolean isEnable() {
        return this.mEnable;
    }

    public T setEnable(boolean z) {
        this.mEnable = z;
        return this;
    }
}
