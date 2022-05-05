package com.tmobile.services.nameid.activity;

import io.realm.RealmChangeListener;
import io.realm.RealmResults;
/* renamed from: com.tmobile.services.nameid.activity.d0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/d0.class */
public final /* synthetic */ class C1636d0 implements RealmChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CallDetailsPresenter f13175a;

    public /* synthetic */ C1636d0(CallDetailsPresenter callDetailsPresenter) {
        this.f13175a = callDetailsPresenter;
    }

    @Override // io.realm.RealmChangeListener
    /* renamed from: a */
    public final void mo2506a(Object obj) {
        this.f13175a.m7019G((RealmResults) obj);
    }
}
