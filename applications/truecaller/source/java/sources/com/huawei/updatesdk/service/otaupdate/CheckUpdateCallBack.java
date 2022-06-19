package com.huawei.updatesdk.service.otaupdate;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack.class */
public interface CheckUpdateCallBack {
    void onMarketInstallInfo(Intent intent);

    void onMarketStoreError(int i);

    void onUpdateInfo(Intent intent);

    void onUpdateStoreError(int i);
}
