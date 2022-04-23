package io.realm;

import gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_IapPlanRealmObjectRealmProxyInterface */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_IapPlanRealmObjectRealmProxyInterface.class */
public interface AbstractC10912x119a1184 {
    String realmGet$desc();

    RealmList<PlanFeatureRealmObject> realmGet$features();

    int realmGet$level();

    String realmGet$name();

    String realmGet$planId();

    RealmList<PlanProductRealmObject> realmGet$products();

    void realmSet$desc(String str);

    void realmSet$features(RealmList<PlanFeatureRealmObject> realmList);

    void realmSet$level(int i);

    void realmSet$name(String str);

    void realmSet$planId(String str);

    void realmSet$products(RealmList<PlanProductRealmObject> realmList);
}
