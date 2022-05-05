package com.privacystar.core.data.model;

import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/GroupBlock.class */
public class GroupBlock extends RealmObject implements com_privacystar_core_data_model_GroupBlockRealmProxyInterface {
    private boolean blockActive;
    private boolean blockOffline;
    private Operation mOperation;
    private String name;
    @PrimaryKey
    private String number;

    public GroupBlock() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getName() {
        return realmGet$name();
    }

    public String getNumber() {
        return realmGet$number();
    }

    public Operation getOperation() {
        return realmGet$mOperation();
    }

    public boolean isBlockActive() {
        return realmGet$blockActive();
    }

    public boolean isBlockOffline() {
        return realmGet$blockOffline();
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public boolean realmGet$blockActive() {
        return this.blockActive;
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public boolean realmGet$blockOffline() {
        return this.blockOffline;
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public Operation realmGet$mOperation() {
        return this.mOperation;
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public void realmSet$blockActive(boolean z) {
        this.blockActive = z;
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public void realmSet$blockOffline(boolean z) {
        this.blockOffline = z;
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public void realmSet$mOperation(Operation operation) {
        this.mOperation = operation;
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public void realmSet$number(String str) {
        this.number = str;
    }

    public void setBlockActive(boolean z) {
        realmSet$blockActive(z);
    }

    public void setBlockOffline(boolean z) {
        realmSet$blockOffline(z);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setNumber(String str) {
        realmSet$number(str);
    }

    public void setOperation(Operation operation) {
        realmSet$mOperation(operation);
    }
}
