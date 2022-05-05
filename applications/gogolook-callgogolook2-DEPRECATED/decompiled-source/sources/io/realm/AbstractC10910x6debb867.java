package io.realm;

import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteListRealmObjectRealmProxyInterface */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_favorite_FavoriteListRealmObjectRealmProxyInterface.class */
public interface AbstractC10910x6debb867 {
    Integer realmGet$_auto_cate();

    Integer realmGet$_count();

    long realmGet$_createtime();

    String realmGet$_e164();

    String realmGet$_parentid();

    Integer realmGet$_source();

    Integer realmGet$_status();

    Integer realmGet$_transaction();

    long realmGet$_updatetime();

    RealmList<FavoriteGroupRealmObject> realmGet$favoriteGroupRealmObjects();

    long realmGet$id();

    void realmSet$_auto_cate(Integer num);

    void realmSet$_count(Integer num);

    void realmSet$_createtime(long j);

    void realmSet$_e164(String str);

    void realmSet$_parentid(String str);

    void realmSet$_source(Integer num);

    void realmSet$_status(Integer num);

    void realmSet$_transaction(Integer num);

    void realmSet$_updatetime(long j);

    void realmSet$favoriteGroupRealmObjects(RealmList<FavoriteGroupRealmObject> realmList);

    void realmSet$id(long j);
}
