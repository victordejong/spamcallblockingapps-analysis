package com.tmobile.services.nameid.manage;

import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.model.CallerSetting;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lcom/tmobile/services/nameid/manage/RealmManageModel;", "com/tmobile/services/nameid/manage/Manage$Model", "", "action", "getCountFor", "(I)I", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/RealmManageModel.class */
public final class RealmManageModel implements Manage.Model {
    @Override // com.tmobile.services.nameid.manage.Manage.Model
    /* renamed from: a */
    public int mo6514a(int i) {
        RealmQuery Q0 = Realm.m3064G0().m3053Q0(CallerSetting.class);
        Q0.m2885q("action", Integer.valueOf(i));
        RealmResults E = Q0.m2918E();
        Intrinsics.m1831d(E, "Realm.getDefaultInstance…               .findAll()");
        return E.size();
    }
}
