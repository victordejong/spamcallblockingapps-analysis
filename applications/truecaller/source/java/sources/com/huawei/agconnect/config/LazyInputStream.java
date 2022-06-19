package com.huawei.agconnect.config;

import android.content.Context;
import com.huawei.agconnect.config.p076a.C2211j;
import java.io.InputStream;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/config/LazyInputStream.class */
public abstract class LazyInputStream {
    private final Context mContext;
    private InputStream mInput;

    public LazyInputStream(Context context) {
        this.mContext = context;
    }

    public final void close() {
        C2211j.m38278a(this.mInput);
    }

    public abstract InputStream get(Context context);

    public InputStream loadInputStream() {
        if (this.mInput == null) {
            this.mInput = get(this.mContext);
        }
        return this.mInput;
    }
}
