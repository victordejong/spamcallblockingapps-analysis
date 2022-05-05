package com.tmobile.services.nameid.activity;

import io.realm.RealmChangeListener;
import io.realm.RealmResults;
/* renamed from: com.tmobile.services.nameid.activity.a */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/a.class */
public final /* synthetic */ class C1629a implements RealmChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CallDetailsPresenter f13166a;

    public /* synthetic */ C1629a(CallDetailsPresenter callDetailsPresenter) {
        this.f13166a = callDetailsPresenter;
    }

    @Override // io.realm.RealmChangeListener
    /* renamed from: a */
    public final void mo2506a(Object obj) {
        this.f13166a.m7016J((RealmResults) obj);
    }
}
