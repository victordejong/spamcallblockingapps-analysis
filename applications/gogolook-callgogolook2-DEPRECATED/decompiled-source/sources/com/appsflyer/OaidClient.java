package com.appsflyer;

import android.content.Context;
import androidx.annotation.Nullable;
import com.appsflyer.oaid.OaidClient;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/appsflyer/OaidClient.class */
public class OaidClient {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/appsflyer/OaidClient$Info.class */
    public static class Info {

        /* renamed from: id */
        public final String f1749id;
        public final Boolean lat;

        @Deprecated
        public Info(String str, Boolean bool) {
            this.f1749id = str;
            this.lat = bool;
        }

        @Deprecated
        public String getId() {
            return this.f1749id;
        }

        @Nullable
        @Deprecated
        public Boolean isLat() {
            return this.lat;
        }
    }

    @Deprecated
    public static Info fetch(Context context) {
        OaidClient.Info fetch = new com.appsflyer.oaid.OaidClient(context).fetch();
        if (fetch != null) {
            return new Info(fetch.getId(), fetch.getLat());
        }
        return null;
    }
}
