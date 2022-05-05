package com.privacystar.core.data.model;

import io.realm.AbstractC1923x99c73e41;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/SimpleOffender.class */
public class SimpleOffender extends RealmObject implements AbstractC1923x99c73e41 {
    @PrimaryKey
    private String num;
    private long type;

    public SimpleOffender() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getNum() {
        return realmGet$num();
    }

    public long getType() {
        return realmGet$type();
    }

    @Override // io.realm.AbstractC1923x99c73e41
    public String realmGet$num() {
        return this.num;
    }

    @Override // io.realm.AbstractC1923x99c73e41
    public long realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC1923x99c73e41
    public void realmSet$num(String str) {
        this.num = str;
    }

    @Override // io.realm.AbstractC1923x99c73e41
    public void realmSet$type(long j) {
        this.type = j;
    }

    public void setNum(String str) {
        realmSet$num(str);
    }

    public void setType(long j) {
        realmSet$type(j);
    }
}
