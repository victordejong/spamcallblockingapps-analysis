package io.realm;

import gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.SearchIndexRealmObject;
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_CacheIndexRealmObjectRealmProxyInterface */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_CacheIndexRealmObjectRealmProxyInterface.class */
public interface AbstractC10924x84e508b {
    long realmGet$_id();

    long realmGet$contact_id();

    RealmList<DialerIndexRealmObject> realmGet$dialerIndexRealmObjects();

    String realmGet$display_name();

    String realmGet$e164();

    long realmGet$last_update_time();

    String realmGet$number();

    RealmList<NumberIndexRealmObject> realmGet$numberIndexRealmObjects();

    long realmGet$ref_id();

    int realmGet$ref_type();

    RealmList<SearchIndexRealmObject> realmGet$searchIndexRealmObjects();

    void realmSet$_id(long j);

    void realmSet$contact_id(long j);

    void realmSet$dialerIndexRealmObjects(RealmList<DialerIndexRealmObject> realmList);

    void realmSet$display_name(String str);

    void realmSet$e164(String str);

    void realmSet$last_update_time(long j);

    void realmSet$number(String str);

    void realmSet$numberIndexRealmObjects(RealmList<NumberIndexRealmObject> realmList);

    void realmSet$ref_id(long j);

    void realmSet$ref_type(int i);

    void realmSet$searchIndexRealmObjects(RealmList<SearchIndexRealmObject> realmList);
}
