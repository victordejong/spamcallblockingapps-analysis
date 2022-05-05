package com.tmobile.services.nameid.activity;

import com.tmobile.services.nameid.model.CallerDetailsData;
import io.realm.RealmChangeListener;
/* renamed from: com.tmobile.services.nameid.activity.r0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/r0.class */
public final /* synthetic */ class C1664r0 implements RealmChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CallDetailsPresenter f13207a;

    public /* synthetic */ C1664r0(CallDetailsPresenter callDetailsPresenter) {
        this.f13207a = callDetailsPresenter;
    }

    @Override // io.realm.RealmChangeListener
    /* renamed from: a */
    public final void mo2506a(Object obj) {
        this.f13207a.m7008R((CallerDetailsData) obj);
    }
}
