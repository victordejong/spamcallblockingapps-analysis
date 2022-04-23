package io.realm;

import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteGroupRealmObjectRealmProxyInterface */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_favorite_FavoriteGroupRealmObjectRealmProxyInterface.class */
public interface AbstractC10908xfcfb846e {
    long realmGet$_createtime();

    Integer realmGet$_label_id();

    String realmGet$_name();

    String realmGet$_parentid();

    Integer realmGet$_pinned();

    Integer realmGet$_status();

    Integer realmGet$_transaction();

    long realmGet$_updatetime();

    RealmList<FavoriteListRealmObject> realmGet$favoriteListRealmObjects();

    long realmGet$id();

    void realmSet$_createtime(long j);

    void realmSet$_label_id(Integer num);

    void realmSet$_name(String str);

    void realmSet$_parentid(String str);

    void realmSet$_pinned(Integer num);

    void realmSet$_status(Integer num);

    void realmSet$_transaction(Integer num);

    void realmSet$_updatetime(long j);

    void realmSet$favoriteListRealmObjects(RealmList<FavoriteListRealmObject> realmList);

    void realmSet$id(long j);
}
