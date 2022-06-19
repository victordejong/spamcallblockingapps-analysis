package com.yanzhenjie.nohttp.cache;

import android.content.Context;
import com.yanzhenjie.nohttp.tools.CacheStore;
import com.yanzhenjie.nohttp.tools.Encryption;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cache/BasicCacheStore.class */
public abstract class BasicCacheStore implements CacheStore<CacheEntity> {
    private Context mContext;

    public BasicCacheStore(Context context) {
        this.mContext = context;
    }

    public String uniqueKey(String str) {
        return Encryption.getMD5ForString(str + this.mContext.getApplicationInfo().packageName);
    }
}
