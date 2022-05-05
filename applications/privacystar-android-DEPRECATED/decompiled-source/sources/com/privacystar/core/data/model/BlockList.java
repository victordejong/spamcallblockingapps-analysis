package com.privacystar.core.data.model;

import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.call.caller.PhoneEventType;
import com.privacystar.core.util.RealmUtil;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/BlockList.class */
public class BlockList extends RealmObject implements com_privacystar_core_data_model_BlockListRealmProxyInterface {
    private Date added;
    private boolean blockActive;
    private boolean blockOffline;
    private String eventType;
    private int groupNameId;
    private int groupNameType;
    private Operation mOperation;
    private String name;
    private boolean namedParent;
    @PrimaryKey
    private String number;
    private int offenderFlags;

    public BlockList() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Date getAdded() {
        return realmGet$added();
    }

    public Caller getCaller() {
        return (!RealmUtil.isSafe((RealmObject) this) || !isValid()) ? null : CallerFactory.getInstance().getCaller(getNumber());
    }

    public PhoneEventType getEventType() {
        return realmGet$eventType() != null ? PhoneEventType.valueOf(realmGet$eventType()) : null;
    }

    public int getGroupNameType() {
        return realmGet$groupNameType();
    }

    public String getName() {
        return realmGet$name();
    }

    public String getNumber() {
        return realmGet$number();
    }

    public int getOffenderFlags() {
        return realmGet$offenderFlags();
    }

    public int getOffenderValue() {
        return realmGet$groupNameId();
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

    public boolean isNamedParent() {
        return realmGet$namedParent();
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public Date realmGet$added() {
        return this.added;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public boolean realmGet$blockActive() {
        return this.blockActive;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public boolean realmGet$blockOffline() {
        return this.blockOffline;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public String realmGet$eventType() {
        return this.eventType;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public int realmGet$groupNameId() {
        return this.groupNameId;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public int realmGet$groupNameType() {
        return this.groupNameType;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public Operation realmGet$mOperation() {
        return this.mOperation;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public boolean realmGet$namedParent() {
        return this.namedParent;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public int realmGet$offenderFlags() {
        return this.offenderFlags;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$added(Date date) {
        this.added = date;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$blockActive(boolean z) {
        this.blockActive = z;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$blockOffline(boolean z) {
        this.blockOffline = z;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$eventType(String str) {
        this.eventType = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$groupNameId(int i) {
        this.groupNameId = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$groupNameType(int i) {
        this.groupNameType = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$mOperation(Operation operation) {
        this.mOperation = operation;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$namedParent(boolean z) {
        this.namedParent = z;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$offenderFlags(int i) {
        this.offenderFlags = i;
    }

    public void setAdded(Date date) {
        realmSet$added(date);
    }

    public void setBlockActive(boolean z) {
        realmSet$blockActive(z);
    }

    public void setBlockOffline(boolean z) {
        realmSet$blockOffline(z);
    }

    public void setEventType(PhoneEventType phoneEventType) {
        realmSet$eventType(phoneEventType.toString());
    }

    public void setGroupNameType(int i) {
        realmSet$groupNameType(i);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setNamedParent(boolean z) {
        realmSet$namedParent(z);
    }

    public void setNumber(String str) {
        realmSet$number(str);
    }

    public void setOffenderFlags(int i) {
        realmSet$offenderFlags(i);
    }

    public void setOffenderValue(int i) {
        realmSet$groupNameId(i);
    }

    public void setOperation(Operation operation) {
        realmSet$mOperation(operation);
    }
}
