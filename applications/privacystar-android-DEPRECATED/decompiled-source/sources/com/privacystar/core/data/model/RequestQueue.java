package com.privacystar.core.data.model;

import io.realm.RealmObject;
import io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/RequestQueue.class */
public class RequestQueue extends RealmObject implements com_privacystar_core_data_model_RequestQueueRealmProxyInterface {
    private String callBack;
    private String dependency;
    private String execution;
    private String options;

    public RequestQueue() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getCallBack() {
        return realmGet$callBack();
    }

    public String getDependency() {
        return realmGet$dependency();
    }

    public String getExecution() {
        return realmGet$execution();
    }

    public String getOptions() {
        return realmGet$options();
    }

    @Override // io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public String realmGet$callBack() {
        return this.callBack;
    }

    @Override // io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public String realmGet$dependency() {
        return this.dependency;
    }

    @Override // io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public String realmGet$execution() {
        return this.execution;
    }

    @Override // io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public String realmGet$options() {
        return this.options;
    }

    @Override // io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public void realmSet$callBack(String str) {
        this.callBack = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public void realmSet$dependency(String str) {
        this.dependency = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public void realmSet$execution(String str) {
        this.execution = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public void realmSet$options(String str) {
        this.options = str;
    }

    public void setCallBack(String str) {
        realmSet$callBack(str);
    }

    public void setDependency(String str) {
        realmSet$dependency(str);
    }

    public void setExecution(String str) {
        realmSet$execution(str);
    }

    public void setOptions(String str) {
        realmSet$options(str);
    }
}
