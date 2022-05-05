package io.realm;

import io.realm.BaseRealm;
import io.realm.RealmCache;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
/* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm.class */
public class DynamicRealm extends BaseRealm {

    /* renamed from: o */
    private final RealmSchema f19827o = new MutableRealmSchema(this);

    /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm$Callback.class */
    public static abstract class Callback extends BaseRealm.InstanceCallback<DynamicRealm> {
        @Override // io.realm.BaseRealm.InstanceCallback
        /* renamed from: a */
        public void mo3040a(Throwable th) {
            super.mo3040a(th);
            throw null;
        }

        /* renamed from: c */
        public abstract void mo3039b(DynamicRealm dynamicRealm);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm$Transaction.class */
    public interface Transaction {
    }

    private DynamicRealm(final RealmCache realmCache, OsSharedRealm.VersionID versionID) {
        super(realmCache, (OsSchemaInfo) null, versionID);
        RealmCache.m3017o(realmCache.m3021k(), new RealmCache.Callback() { // from class: io.realm.DynamicRealm.1
            @Override // io.realm.RealmCache.Callback
            /* renamed from: a */
            public void mo3012a(int i) {
                if (i <= 0 && !realmCache.m3021k().m2980s() && OsObjectStore.m2743c(DynamicRealm.this.f19809j) == -1) {
                    DynamicRealm.this.f19809j.beginTransaction();
                    if (OsObjectStore.m2743c(DynamicRealm.this.f19809j) == -1) {
                        OsObjectStore.m2741e(DynamicRealm.this.f19809j, -1L);
                    }
                    DynamicRealm.this.f19809j.commitTransaction();
                }
            }
        });
    }

    private DynamicRealm(OsSharedRealm osSharedRealm) {
        super(osSharedRealm);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e0 */
    public static DynamicRealm m3130e0(RealmCache realmCache, OsSharedRealm.VersionID versionID) {
        return new DynamicRealm(realmCache, versionID);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i0 */
    public static DynamicRealm m3129i0(OsSharedRealm osSharedRealm) {
        return new DynamicRealm(osSharedRealm);
    }

    /* renamed from: o0 */
    public static DynamicRealm m3127o0(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            return (DynamicRealm) RealmCache.m3027e(realmConfiguration, DynamicRealm.class);
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }

    @Override // io.realm.BaseRealm
    /* renamed from: L */
    public RealmSchema mo3059L() {
        return this.f19827o;
    }

    /* renamed from: d0 */
    public void m3131d0(RealmChangeListener<DynamicRealm> realmChangeListener) {
        m3155b(realmChangeListener);
    }

    /* renamed from: j0 */
    public DynamicRealm mo3047t() {
        OsSharedRealm.VersionID versionID;
        try {
            versionID = this.f19809j.getVersionID();
        } catch (IllegalStateException e) {
            m3161V();
            versionID = this.f19809j.getVersionID();
        }
        return (DynamicRealm) RealmCache.m3026f(this.f19807h, DynamicRealm.class, versionID);
    }

    /* renamed from: u0 */
    public void m3126u0(RealmChangeListener<DynamicRealm> realmChangeListener) {
        m3157Z(realmChangeListener);
    }

    /* renamed from: v0 */
    public RealmQuery<DynamicRealmObject> m3125v0(String str) {
        m3151h();
        if (this.f19809j.hasTable(Table.m2631v(str))) {
            return RealmQuery.m2895g(this, str);
        }
        throw new IllegalArgumentException("Class does not exist in the Realm and cannot be queried: " + str);
    }
}
