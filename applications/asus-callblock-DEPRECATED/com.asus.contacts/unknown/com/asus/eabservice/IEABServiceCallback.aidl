package com.asus.eabservice;

import com.asus.eabservice.UserCapInfo;

interface IEABServiceCallback {
    void onPublishCompleted(String number, int supportType);
    void onSubscribeCompleted(in Map presInfo);
    void onSubscribeAllCompleted(in List<UserCapInfo> userCapList);
    void onVtGroupQueryCompleted(in List<UserCapInfo> userCapList);
}