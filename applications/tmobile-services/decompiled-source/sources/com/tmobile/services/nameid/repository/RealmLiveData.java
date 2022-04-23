package com.tmobile.services.nameid.repository;

import androidx.lifecycle.LiveData;
import io.realm.RealmChangeListener;
import io.realm.RealmModel;
import io.realm.RealmResults;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��*\b\b��\u0010\u0002*\u00020\u00012\u00020\u0003B\u0015\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0006R\"\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\t0\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/tmobile/services/nameid/repository/RealmLiveData;", "Lio/realm/RealmModel;", "T", "Landroidx/lifecycle/LiveData;", "", "onActive", "()V", "onInactive", "Lio/realm/RealmChangeListener;", "Lio/realm/RealmResults;", "listener", "Lio/realm/RealmChangeListener;", "results", "Lio/realm/RealmResults;", "<init>", "(Lio/realm/RealmResults;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/repository/RealmLiveData.class */
public final class RealmLiveData<T extends RealmModel> extends LiveData<RealmResults<T>> {

    /* renamed from: k */
    private final RealmChangeListener<RealmResults<T>> f13735k;

    /* renamed from: l */
    private final RealmResults<T> f13736l;

    @Override // androidx.lifecycle.LiveData
    /* renamed from: j */
    protected void mo6383j() {
        this.f13736l.m2865v(this.f13735k);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: k */
    protected void mo6382k() {
        this.f13736l.m2868D(this.f13735k);
    }
}
