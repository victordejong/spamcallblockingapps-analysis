package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/MetroSubscribeObject.class */
public class MetroSubscribeObject {
    public static final String LOG_TAG = "MetroSubscribeObject#";
    @SerializedName("payload")
    @Expose
    private MetroSubscribePayload payload;
    @SerializedName("user")
    @Expose
    private MetroUser user;

    /* JADX WARN: Removed duplicated region for block: B:14:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.MetroSubscribeObject create(@javax.annotation.Nullable android.content.Context r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.model.MetroSubscribeObject.create(android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):com.tmobile.services.nameid.model.MetroSubscribeObject");
    }

    public MetroSubscribePayload getPayload() {
        return this.payload;
    }

    public MetroUser getUser() {
        return this.user;
    }

    public void setPayload(MetroSubscribePayload metroSubscribePayload) {
        this.payload = metroSubscribePayload;
    }

    public void setUser(MetroUser metroUser) {
        this.user = metroUser;
    }
}
