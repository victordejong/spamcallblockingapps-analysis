package com.privacystar.core.data.model;

import io.realm.AbstractC1915x989a2d17;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/LicenseFeature.class */
public class LicenseFeature extends RealmObject implements AbstractC1915x989a2d17 {
    private int feature;

    public LicenseFeature() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public int getFeature() {
        return realmGet$feature();
    }

    @Override // io.realm.AbstractC1915x989a2d17
    public int realmGet$feature() {
        return this.feature;
    }

    @Override // io.realm.AbstractC1915x989a2d17
    public void realmSet$feature(int i) {
        this.feature = i;
    }

    public void setFeature(int i) {
        realmSet$feature(i);
    }
}
