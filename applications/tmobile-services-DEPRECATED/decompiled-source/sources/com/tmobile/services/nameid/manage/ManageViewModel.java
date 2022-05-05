package com.tmobile.services.nameid.manage;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.nameid.model.UserPreference;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\t\u0010\nR\"\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/tmobile/services/nameid/manage/ManageViewModel;", "Landroidx/lifecycle/ViewModel;", "Landroidx/lifecycle/LiveData;", "", "Lcom/tmobile/services/nameid/model/UserPreference;", "getSortedPNBList", "()Landroidx/lifecycle/LiveData;", FirebaseAnalytics.Param.ITEMS, "", "updateSortedPNBList", "(Ljava/util/List;)V", "Landroidx/lifecycle/MutableLiveData;", "sortedPNBList", "Landroidx/lifecycle/MutableLiveData;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManageViewModel.class */
public final class ManageViewModel extends ViewModel {

    /* renamed from: c */
    private final MutableLiveData<List<UserPreference>> f13546c = new MutableLiveData<>();

    @NotNull
    /* renamed from: f */
    public final LiveData<List<UserPreference>> m6516f() {
        return this.f13546c;
    }

    /* renamed from: g */
    public final void m6515g(@NotNull List<? extends UserPreference> items) {
        Intrinsics.m1830e(items, "items");
        this.f13546c.mo18188l(items);
    }
}
