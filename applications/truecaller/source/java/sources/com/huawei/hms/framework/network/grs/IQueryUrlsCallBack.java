package com.huawei.hms.framework.network.grs;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/IQueryUrlsCallBack.class */
public interface IQueryUrlsCallBack {
    void onCallBackFail(int i);

    void onCallBackSuccess(Map<String, String> map);
}
