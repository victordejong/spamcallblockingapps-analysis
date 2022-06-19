package com.huawei.agconnect;

import android.content.Context;
import com.huawei.agconnect.core.a.a;
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/AGConnectInstance.class */
public abstract class AGConnectInstance {
    public static AGConnectInstance buildInstance(AGConnectOptions aGConnectOptions) {
        return a.a(aGConnectOptions);
    }

    public static AGConnectInstance getInstance() {
        return a.a();
    }

    public static AGConnectInstance getInstance(String str) {
        return a.a(str);
    }

    public static void initialize(Context context) {
        synchronized (AGConnectInstance.class) {
            try {
                a.a(context);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void initialize(Context context, AGConnectOptionsBuilder aGConnectOptionsBuilder) {
        synchronized (AGConnectInstance.class) {
            try {
                a.a(context, aGConnectOptionsBuilder);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract Context getContext();

    public abstract String getIdentifier();

    public abstract AGConnectOptions getOptions();

    public abstract <T> T getService(Class<? super T> cls);
}
