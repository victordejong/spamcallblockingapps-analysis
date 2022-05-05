package com.gogolook.whoscallsdk.core.realm;

import android.content.Context;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import java.io.File;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u0004J\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\n\u0010\u0010\u001a\u0004\u0018\u00010\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u001d\u0010\u0007\u001a\u0004\u0018\u00010\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u0011"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/realm/WCRealmManager;", "", "()V", "REALM_DB_NAME", "", "REALM_DB_VERSION", "", "realmConfig", "Lio/realm/RealmConfiguration;", "getRealmConfig", "()Lio/realm/RealmConfiguration;", "realmConfig$delegate", "Lkotlin/Lazy;", "getDbName", "getRealmDatabase", "Lio/realm/Realm;", "initRealm", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/realm/WCRealmManager.class */
public final class WCRealmManager {
    public static final /* synthetic */ AbstractC14906i[] $$delegatedProperties;
    public static final WCRealmManager INSTANCE = new WCRealmManager();
    public static final String REALM_DB_NAME = REALM_DB_NAME;
    public static final String REALM_DB_NAME = REALM_DB_NAME;
    public static final long REALM_DB_VERSION = 1;
    public static final AbstractC14974f realmConfig$delegate = C14975g.m662a(WCRealmManager$realmConfig$2.INSTANCE);

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(WCRealmManager.class), "realmConfig", "getRealmConfig()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        $$delegatedProperties = new AbstractC14906i[]{sVar};
    }

    public final String getDbName() {
        return REALM_DB_NAME;
    }

    public final RealmConfiguration getRealmConfig() {
        AbstractC14974f fVar = realmConfig$delegate;
        AbstractC14906i iVar = $$delegatedProperties[0];
        return (RealmConfiguration) fVar.getValue();
    }

    public final Realm getRealmDatabase() {
        if (getRealmConfig() != null) {
            return Realm.getInstance(getRealmConfig());
        }
        return null;
    }

    public final RealmConfiguration initRealm() {
        try {
            C6334a s = C6334a.m23211s();
            C15149k.m383a((Object) s, "WCApiManager.getInstance()");
            Context i = s.m23221i();
            Realm.init(i);
            RealmConfiguration.Builder builder = new RealmConfiguration.Builder();
            File databasePath = i.getDatabasePath("db");
            C15149k.m383a((Object) databasePath, "context.getDatabasePath(\"db\")");
            return builder.directory(databasePath.getParentFile()).name(REALM_DB_NAME).schemaVersion(REALM_DB_VERSION).modules(new SdkDbModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).build();
        } catch (Exception e) {
            C6432e.m22605a("RealmError", e.getMessage());
            return null;
        }
    }
}
