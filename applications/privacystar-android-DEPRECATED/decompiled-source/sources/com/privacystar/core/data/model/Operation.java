package com.privacystar.core.data.model;

import com.privacystar.core.data.blocking.BlockFlags;
import io.realm.RealmObject;
import io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/Operation.class */
public class Operation extends RealmObject implements com_privacystar_core_data_model_OperationRealmProxyInterface {
    private int actionCode;
    private int eventCode;
    private String label;
    private String matchValue;
    private int priority;

    public Operation() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockFlags.ActionCode getActionCode() {
        return BlockFlags.ActionCode.createFromInt(realmGet$actionCode());
    }

    public BlockFlags.EventCode getEventCode() {
        return BlockFlags.EventCode.createFromInt(realmGet$eventCode());
    }

    public BlockFlags.MatchValue getFilterMatchValue() {
        return realmGet$matchValue() != null ? BlockFlags.MatchValue.createFromString(realmGet$matchValue()) : null;
    }

    public String getLabel() {
        return realmGet$label();
    }

    public String getMatchValue() {
        return realmGet$matchValue();
    }

    public int getPriority() {
        return realmGet$priority();
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public int realmGet$actionCode() {
        return this.actionCode;
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public int realmGet$eventCode() {
        return this.eventCode;
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public String realmGet$label() {
        return this.label;
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public String realmGet$matchValue() {
        return this.matchValue;
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public int realmGet$priority() {
        return this.priority;
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$actionCode(int i) {
        this.actionCode = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$eventCode(int i) {
        this.eventCode = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$label(String str) {
        this.label = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$matchValue(String str) {
        this.matchValue = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$priority(int i) {
        this.priority = i;
    }

    public void setActionCode(BlockFlags.ActionCode actionCode) {
        realmSet$actionCode(actionCode.getValue());
    }

    public void setEventCode(BlockFlags.EventCode eventCode) {
        realmSet$eventCode(eventCode.getValue());
    }

    public void setLabel(String str) {
        realmSet$label(str);
    }

    public void setMatchValue(BlockFlags.MatchValue matchValue) {
        realmSet$matchValue(matchValue.getValue());
    }

    public void setMatchValue(String str) {
        realmSet$matchValue(str);
    }

    public void setPriority(int i) {
        realmSet$priority(i);
    }
}
