package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.model.CallerSetting;
import io.realm.Realm;
/* renamed from: com.tmobile.services.nameid.utility.p0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/p0.class */
public final /* synthetic */ class C1973p0 implements Realm.Transaction {

    /* renamed from: a */
    public static final /* synthetic */ C1973p0 f14582a = new C1973p0();

    private /* synthetic */ C1973p0() {
    }

    @Override // io.realm.Realm.Transaction
    /* renamed from: a */
    public final void mo3037a(Realm realm) {
        realm.m3053Q0(CallerSetting.class).m2918E().m3099d();
    }
}
