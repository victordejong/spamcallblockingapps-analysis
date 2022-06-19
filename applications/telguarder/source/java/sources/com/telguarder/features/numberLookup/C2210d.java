package com.telguarder.features.numberLookup;

import io.realm.RealmObject;
import io.realm.com_telguarder_features_numberLookup_dRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
/* renamed from: com.telguarder.features.numberLookup.d */
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/d.class */
public class C2210d extends RealmObject implements com_telguarder_features_numberLookup_dRealmProxyInterface {

    /* renamed from: b */
    private Long f1289b;

    /* renamed from: c */
    private Long f1290c;

    public C2210d() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Long getB() {
        return realmGet$b();
    }

    public Long getC() {
        return realmGet$c();
    }

    @Override // io.realm.com_telguarder_features_numberLookup_dRealmProxyInterface
    public Long realmGet$b() {
        return this.f1289b;
    }

    @Override // io.realm.com_telguarder_features_numberLookup_dRealmProxyInterface
    public Long realmGet$c() {
        return this.f1290c;
    }

    @Override // io.realm.com_telguarder_features_numberLookup_dRealmProxyInterface
    public void realmSet$b(Long l) {
        this.f1289b = l;
    }

    @Override // io.realm.com_telguarder_features_numberLookup_dRealmProxyInterface
    public void realmSet$c(Long l) {
        this.f1290c = l;
    }

    public void setB(Long l) {
        realmSet$b(l);
    }

    public void setC(Long l) {
        realmSet$c(l);
    }
}
