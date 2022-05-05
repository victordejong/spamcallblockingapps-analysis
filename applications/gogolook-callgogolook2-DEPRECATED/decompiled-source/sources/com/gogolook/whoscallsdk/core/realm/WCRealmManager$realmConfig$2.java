package com.gogolook.whoscallsdk.core.realm;

import io.realm.RealmConfiguration;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/realm/WCRealmManager$realmConfig$2.class */
public final class WCRealmManager$realmConfig$2 extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {
    public static final WCRealmManager$realmConfig$2 INSTANCE = new WCRealmManager$realmConfig$2();

    public WCRealmManager$realmConfig$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p626l.p641z.p642c.AbstractC15107a
    public final RealmConfiguration invoke() {
        RealmConfiguration initRealm;
        initRealm = WCRealmManager.INSTANCE.initRealm();
        return initRealm;
    }
}
