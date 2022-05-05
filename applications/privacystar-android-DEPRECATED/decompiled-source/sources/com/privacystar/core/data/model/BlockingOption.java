package com.privacystar.core.data.model;

import io.realm.AbstractC1911xb5a2a162;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/BlockingOption.class */
public class BlockingOption extends RealmObject implements AbstractC1911xb5a2a162 {
    private boolean active;
    private String message;
    private boolean offline;
    private String optionType;

    public BlockingOption() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockingOption(String str, boolean z, String str2, boolean z2) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$optionType(str);
        realmSet$active(z);
        realmSet$message(str2);
        realmSet$offline(z2);
    }

    public String getMessage() {
        return realmGet$message();
    }

    public String getOptionType() {
        return realmGet$optionType();
    }

    public boolean isActive() {
        return realmGet$active();
    }

    public boolean isOffline() {
        return realmGet$offline();
    }

    @Override // io.realm.AbstractC1911xb5a2a162
    public boolean realmGet$active() {
        return this.active;
    }

    @Override // io.realm.AbstractC1911xb5a2a162
    public String realmGet$message() {
        return this.message;
    }

    @Override // io.realm.AbstractC1911xb5a2a162
    public boolean realmGet$offline() {
        return this.offline;
    }

    @Override // io.realm.AbstractC1911xb5a2a162
    public String realmGet$optionType() {
        return this.optionType;
    }

    @Override // io.realm.AbstractC1911xb5a2a162
    public void realmSet$active(boolean z) {
        this.active = z;
    }

    @Override // io.realm.AbstractC1911xb5a2a162
    public void realmSet$message(String str) {
        this.message = str;
    }

    @Override // io.realm.AbstractC1911xb5a2a162
    public void realmSet$offline(boolean z) {
        this.offline = z;
    }

    @Override // io.realm.AbstractC1911xb5a2a162
    public void realmSet$optionType(String str) {
        this.optionType = str;
    }

    public void setActive(boolean z) {
        realmSet$active(z);
    }

    public void setMessage(String str) {
        realmSet$message(str);
    }

    public void setOffline(boolean z) {
        realmSet$offline(z);
    }

    public void setOptionType(String str) {
        realmSet$optionType(str);
    }
}
