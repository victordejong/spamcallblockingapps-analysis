package io.realm;

import io.realm.BaseRealm;
import io.realm.annotations.RealmModule;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import io.realm.sync.Subscription;
import io.realm.sync.permissions.ClassPermissions;
import io.realm.sync.permissions.Permission;
import io.realm.sync.permissions.PermissionUser;
import io.realm.sync.permissions.RealmPermissions;
import io.realm.sync.permissions.Role;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
@RealmModule
/* loaded from: classes2-dex2jar.jar:io/realm/BaseModuleMediator.class */
class BaseModuleMediator extends RealmProxyMediator {

    /* renamed from: a */
    private static final Set<Class<? extends RealmModel>> f19802a;

    static {
        HashSet hashSet = new HashSet(6);
        hashSet.add(PermissionUser.class);
        hashSet.add(RealmPermissions.class);
        hashSet.add(ClassPermissions.class);
        hashSet.add(Permission.class);
        hashSet.add(Role.class);
        hashSet.add(Subscription.class);
        f19802a = Collections.unmodifiableSet(hashSet);
    }

    BaseModuleMediator() {
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: b */
    public <E extends RealmModel> E mo2564b(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(PermissionUser.class)) {
            return (E) ((RealmModel) superclass.cast(io_realm_sync_permissions_PermissionUserRealmProxy.copyOrUpdate(realm, (C2209xf217bf53) realm.mo3059L().m2854g(PermissionUser.class), (PermissionUser) e, z, map, set)));
        }
        if (superclass.equals(RealmPermissions.class)) {
            return (E) ((RealmModel) superclass.cast(io_realm_sync_permissions_RealmPermissionsRealmProxy.copyOrUpdate(realm, (C2211x864ed6b3) realm.mo3059L().m2854g(RealmPermissions.class), (RealmPermissions) e, z, map, set)));
        }
        if (superclass.equals(ClassPermissions.class)) {
            return (E) ((RealmModel) superclass.cast(io_realm_sync_permissions_ClassPermissionsRealmProxy.copyOrUpdate(realm, (C2206xc9bb9c53) realm.mo3059L().m2854g(ClassPermissions.class), (ClassPermissions) e, z, map, set)));
        }
        if (superclass.equals(Permission.class)) {
            return (E) ((RealmModel) superclass.cast(io_realm_sync_permissions_PermissionRealmProxy.copyOrUpdate(realm, (C2207x7a514df3) realm.mo3059L().m2854g(Permission.class), (Permission) e, z, map, set)));
        }
        if (superclass.equals(Role.class)) {
            return (E) ((RealmModel) superclass.cast(io_realm_sync_permissions_RoleRealmProxy.copyOrUpdate(realm, (io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo) realm.mo3059L().m2854g(Role.class), (Role) e, z, map, set)));
        }
        if (superclass.equals(Subscription.class)) {
            return (E) ((RealmModel) superclass.cast(io_realm_sync_SubscriptionRealmProxy.copyOrUpdate(realm, (io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo) realm.mo3059L().m2854g(Subscription.class), (Subscription) e, z, map, set)));
        }
        throw RealmProxyMediator.m2683e(superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: c */
    public ColumnInfo mo2563c(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator.m2684a(cls);
        if (cls.equals(PermissionUser.class)) {
            return io_realm_sync_permissions_PermissionUserRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(RealmPermissions.class)) {
            return io_realm_sync_permissions_RealmPermissionsRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(ClassPermissions.class)) {
            return io_realm_sync_permissions_ClassPermissionsRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Permission.class)) {
            return io_realm_sync_permissions_PermissionRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Role.class)) {
            return io_realm_sync_permissions_RoleRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Subscription.class)) {
            return io_realm_sync_SubscriptionRealmProxy.createColumnInfo(osSchemaInfo);
        }
        throw RealmProxyMediator.m2683e(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: d */
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> mo2562d() {
        HashMap hashMap = new HashMap(6);
        hashMap.put(PermissionUser.class, io_realm_sync_permissions_PermissionUserRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(RealmPermissions.class, io_realm_sync_permissions_RealmPermissionsRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(ClassPermissions.class, io_realm_sync_permissions_ClassPermissionsRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Permission.class, io_realm_sync_permissions_PermissionRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Role.class, io_realm_sync_permissions_RoleRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Subscription.class, io_realm_sync_SubscriptionRealmProxy.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: f */
    public Set<Class<? extends RealmModel>> mo2561f() {
        return f19802a;
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: h */
    public String mo2560h(Class<? extends RealmModel> cls) {
        RealmProxyMediator.m2684a(cls);
        if (cls.equals(PermissionUser.class)) {
            return "__User";
        }
        if (cls.equals(RealmPermissions.class)) {
            return "__Realm";
        }
        if (cls.equals(ClassPermissions.class)) {
            return "__Class";
        }
        if (cls.equals(Permission.class)) {
            return "__Permission";
        }
        if (cls.equals(Role.class)) {
            return "__Role";
        }
        if (cls.equals(Subscription.class)) {
            return "__ResultSets";
        }
        throw RealmProxyMediator.m2683e(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: i */
    public void mo2559i(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(PermissionUser.class)) {
            io_realm_sync_permissions_PermissionUserRealmProxy.insert(realm, (PermissionUser) realmModel, map);
        } else if (superclass.equals(RealmPermissions.class)) {
            io_realm_sync_permissions_RealmPermissionsRealmProxy.insert(realm, (RealmPermissions) realmModel, map);
        } else if (superclass.equals(ClassPermissions.class)) {
            io_realm_sync_permissions_ClassPermissionsRealmProxy.insert(realm, (ClassPermissions) realmModel, map);
        } else if (superclass.equals(Permission.class)) {
            io_realm_sync_permissions_PermissionRealmProxy.insert(realm, (Permission) realmModel, map);
        } else if (superclass.equals(Role.class)) {
            io_realm_sync_permissions_RoleRealmProxy.insert(realm, (Role) realmModel, map);
        } else if (superclass.equals(Subscription.class)) {
            io_realm_sync_SubscriptionRealmProxy.insert(realm, (Subscription) realmModel, map);
        } else {
            throw RealmProxyMediator.m2683e(superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: j */
    public void mo2558j(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(PermissionUser.class)) {
            io_realm_sync_permissions_PermissionUserRealmProxy.insertOrUpdate(realm, (PermissionUser) realmModel, map);
        } else if (superclass.equals(RealmPermissions.class)) {
            io_realm_sync_permissions_RealmPermissionsRealmProxy.insertOrUpdate(realm, (RealmPermissions) realmModel, map);
        } else if (superclass.equals(ClassPermissions.class)) {
            io_realm_sync_permissions_ClassPermissionsRealmProxy.insertOrUpdate(realm, (ClassPermissions) realmModel, map);
        } else if (superclass.equals(Permission.class)) {
            io_realm_sync_permissions_PermissionRealmProxy.insertOrUpdate(realm, (Permission) realmModel, map);
        } else if (superclass.equals(Role.class)) {
            io_realm_sync_permissions_RoleRealmProxy.insertOrUpdate(realm, (Role) realmModel, map);
        } else if (superclass.equals(Subscription.class)) {
            io_realm_sync_SubscriptionRealmProxy.insertOrUpdate(realm, (Subscription) realmModel, map);
        } else {
            throw RealmProxyMediator.m2683e(superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: k */
    public <E extends RealmModel> E mo2557k(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        try {
            realmObjectContext.m3137g((BaseRealm) obj, row, columnInfo, z, list);
            RealmProxyMediator.m2684a(cls);
            if (cls.equals(PermissionUser.class)) {
                return cls.cast(new io_realm_sync_permissions_PermissionUserRealmProxy());
            }
            if (cls.equals(RealmPermissions.class)) {
                return cls.cast(new io_realm_sync_permissions_RealmPermissionsRealmProxy());
            }
            if (cls.equals(ClassPermissions.class)) {
                return cls.cast(new io_realm_sync_permissions_ClassPermissionsRealmProxy());
            }
            if (cls.equals(Permission.class)) {
                return cls.cast(new io_realm_sync_permissions_PermissionRealmProxy());
            }
            if (cls.equals(Role.class)) {
                return cls.cast(new io_realm_sync_permissions_RoleRealmProxy());
            }
            if (cls.equals(Subscription.class)) {
                return cls.cast(new io_realm_sync_SubscriptionRealmProxy());
            }
            throw RealmProxyMediator.m2683e(cls);
        } finally {
            realmObjectContext.m3143a();
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: l */
    public boolean mo2556l() {
        return true;
    }
}
