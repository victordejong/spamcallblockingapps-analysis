package com.huawei.hms.api;

import com.huawei.hms.api.Api.ApiOptions;
import com.huawei.hms.common.api.ConnectionPostProcessor;
import com.huawei.hms.support.api.entity.auth.PermissionInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/Api.class */
public class Api<O extends ApiOptions> {

    /* renamed from: a */
    private final String f7261a;

    /* renamed from: b */
    private final Options<O> f7262b;
    public List<ConnectionPostProcessor> mConnetctPostList;

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/Api$ApiOptions.class */
    public interface ApiOptions {
    }

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/Api$Options.class */
    public static abstract class Options<O> {
        public List<PermissionInfo> getPermissionInfoList(O o) {
            return Collections.emptyList();
        }

        public List<Scope> getScopeList(O o) {
            return Collections.emptyList();
        }
    }

    public Api(String str) {
        this.f7261a = str;
        this.f7262b = null;
    }

    public Api(String str, Options<O> options) {
        this.f7261a = str;
        this.f7262b = options;
    }

    public String getApiName() {
        return this.f7261a;
    }

    public Options<O> getOptions() {
        return this.f7262b;
    }

    public List<ConnectionPostProcessor> getmConnetctPostList() {
        return this.mConnetctPostList;
    }

    public void setmConnetctPostList(List<ConnectionPostProcessor> list) {
        this.mConnetctPostList = list;
    }
}
