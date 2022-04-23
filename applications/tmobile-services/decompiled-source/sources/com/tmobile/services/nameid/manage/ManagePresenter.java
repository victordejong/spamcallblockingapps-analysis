package com.tmobile.services.nameid.manage;

import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.domain.usecase.manage.SortPNBListUseCase;
import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� @2\u00020\u0001:\u0001@B/\u0012\u0006\u0010:\u001a\u000207\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010(\u001a\u00020\u0007\u0012\u0006\u0010;\u001a\u00020\u0007\u0012\u0006\u0010=\u001a\u00020<¢\u0006\u0004\b>\u0010?J\u000f\u0010\u0003\u001a\u00020\u0002H\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0012\u0010\u000fJ\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u0015J\u0019\u0010\u001d\u001a\u00020\r2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010!\u001a\u00020\r2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\nH\u0002¢\u0006\u0004\b!\u0010\u000fJ\u000f\u0010\"\u001a\u00020\rH\u0002¢\u0006\u0004\b\"\u0010 J\u000f\u0010#\u001a\u00020\rH\u0002¢\u0006\u0004\b#\u0010 R\u0016\u0010$\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0019\u0010(\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b(\u0010'\u001a\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010'R\u0019\u0010,\u001a\u00020+8\u0006@\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0016\u00101\u001a\u0002008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00104\u001a\u0002038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u001c\u00108\u001a\b\u0012\u0004\u0012\u000207068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109¨\u0006A"}, d2 = {"Lcom/tmobile/services/nameid/manage/ManagePresenter;", "com/tmobile/services/nameid/manage/Manage$Presenter", "", "getHeaderText", "()I", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "tab", "", "isEmptyList", "(Lcom/tmobile/services/nameid/manage/Manage$PNBTab;)Z", "", "Lcom/tmobile/services/nameid/model/CallerSetting;", "callerSettings", "", "onCallerSettingsUpdate", "(Ljava/util/List;)V", "Lcom/tmobile/services/nameid/model/UserPreference;", "list", "onContactUpdate", "tabPosition", "onFabClicked", "(I)V", "Lcom/tmobile/services/nameid/model/LicenseResponseItem;", "licenseResponse", "onMetroUserStatusUpdate", "(Lcom/tmobile/services/nameid/model/LicenseResponseItem;)V", "onTabSelected", "Lcom/tmobile/services/nameid/model/TmoUserStatus;", "userStatus", "onUserStatusUpdate", "(Lcom/tmobile/services/nameid/model/TmoUserStatus;)V", "onViewCreated", "()V", "sortListAndPublish", "updateCurrentTab", "updateFab", "currentTab", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "ignoreTabChange", "Z", "isMetro", "()Z", "isUserActive", "Lcom/tmobile/services/nameid/manage/Manage$Model;", "model", "Lcom/tmobile/services/nameid/manage/Manage$Model;", "getModel", "()Lcom/tmobile/services/nameid/manage/Manage$Model;", "Lkotlin/coroutines/CoroutineContext;", "presenterJob", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "Ljava/lang/ref/WeakReference;", "Lcom/tmobile/services/nameid/manage/Manage$View;", "viewRef", "Ljava/lang/ref/WeakReference;", "view", "isActive", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "lastTab", "<init>", "(Lcom/tmobile/services/nameid/manage/Manage$View;Lcom/tmobile/services/nameid/manage/Manage$Model;ZZLcom/tmobile/services/nameid/NameIDPage$ManageTab;)V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManagePresenter.class */
public final class ManagePresenter implements Manage.Presenter {

    /* renamed from: i */
    private static final Map<NameIDPage.ManageTab, Manage.PNBTab> f13529i;

    /* renamed from: j */
    private static final Companion f13530j = new Companion(null);

    /* renamed from: a */
    private final CoroutineContext f13531a;

    /* renamed from: b */
    private final CoroutineScope f13532b;

    /* renamed from: c */
    private boolean f13533c;

    /* renamed from: d */
    private final WeakReference<Manage.View> f13534d;

    /* renamed from: e */
    private Manage.PNBTab f13535e;

    /* renamed from: f */
    private boolean f13536f;
    @NotNull

    /* renamed from: g */
    private final Manage.Model f13537g;

    /* renamed from: h */
    private final boolean f13538h;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\"\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/tmobile/services/nameid/manage/ManagePresenter$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "tabsMap", "Ljava/util/Map;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManagePresenter$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        Map<NameIDPage.ManageTab, Manage.PNBTab> h;
        h = MapsKt__MapsKt.m2083h(TuplesKt.m2469a(NameIDPage.ManageTab.BlockTab.f12678b, Manage.PNBTab.Block.f13504e), TuplesKt.m2469a(NameIDPage.ManageTab.VoicemailTab.f12680b, Manage.PNBTab.Voicemail.f13506e), TuplesKt.m2469a(NameIDPage.ManageTab.FavoritesTab.f12679b, Manage.PNBTab.Favorite.f13505e));
        f13529i = h;
    }

    public ManagePresenter(@NotNull Manage.View view, @NotNull Manage.Model model, boolean z, boolean z2, @NotNull NameIDPage.ManageTab lastTab) {
        CompletableJob b;
        Intrinsics.m1830e(view, "view");
        Intrinsics.m1830e(model, "model");
        Intrinsics.m1830e(lastTab, "lastTab");
        this.f13537g = model;
        this.f13538h = z;
        b = JobKt__JobKt.m1208b(null, 1, null);
        this.f13531a = b;
        this.f13532b = CoroutineScopeKt.m1312a(b.plus(Dispatchers.m1267b()));
        this.f13533c = z2;
        this.f13534d = new WeakReference<>(view);
        Manage.PNBTab pNBTab = f13529i.get(lastTab);
        this.f13535e = pNBTab == null ? Manage.PNBTab.Block.f13504e : pNBTab;
    }

    @StringRes
    /* renamed from: l */
    private final int m6525l() {
        int i;
        Manage.PNBTab pNBTab = this.f13535e;
        if (Intrinsics.m1834a(pNBTab, Manage.PNBTab.Block.f13504e)) {
            i = C1517R.string.manage_header_block;
        } else if (Intrinsics.m1834a(pNBTab, Manage.PNBTab.Voicemail.f13506e)) {
            i = C1517R.string.manage_header_vm;
        } else if (Intrinsics.m1834a(pNBTab, Manage.PNBTab.Favorite.f13505e)) {
            i = C1517R.string.manage_header_favorite;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return i;
    }

    /* renamed from: m */
    private final boolean m6524m(Manage.PNBTab pNBTab) {
        int i;
        boolean z = true;
        if (!this.f13533c && (!Intrinsics.m1834a(pNBTab, Manage.PNBTab.Favorite.f13505e))) {
            return true;
        }
        if (Intrinsics.m1834a(pNBTab, Manage.PNBTab.Block.f13504e)) {
            i = CallerSetting.Action.BLOCKED.getValue();
        } else if (Intrinsics.m1834a(pNBTab, Manage.PNBTab.Voicemail.f13506e)) {
            i = CallerSetting.Action.VOICEMAIL.getValue();
        } else if (Intrinsics.m1834a(pNBTab, Manage.PNBTab.Favorite.f13505e)) {
            i = CallerSetting.Action.APPROVED.getValue();
        } else {
            throw new NoWhenBranchMatchedException();
        }
        if (this.f13537g.mo6514a(i) > 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: n */
    private final void m6523n(List<? extends UserPreference> list) {
        Manage.View view = this.f13534d.get();
        if (view != null) {
            view.mo6550h(new SortPNBListUseCase(new ArrayList(list)).m6575a().m6583a());
        }
    }

    /* renamed from: o */
    private final void m6522o() {
        Manage.View view = this.f13534d.get();
        Manage.PNBTab pNBTab = f13529i.get(view != null ? view.mo6551f0() : null);
        if (pNBTab == null) {
            pNBTab = Manage.PNBTab.Block.f13504e;
        }
        this.f13535e = pNBTab;
    }

    /* renamed from: p */
    private final void m6521p() {
        if (this.f13533c || Intrinsics.m1834a(this.f13535e, Manage.PNBTab.Favorite.f13505e)) {
            Manage.View view = this.f13534d.get();
            if (view != null) {
                view.mo6547n();
                return;
            }
            return;
        }
        Manage.View view2 = this.f13534d.get();
        if (view2 != null) {
            view2.mo6548l0();
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.Presenter
    /* renamed from: a */
    public void mo6536a(@Nullable LicenseResponseItem licenseResponseItem) {
        if (licenseResponseItem != null && licenseResponseItem.isValid()) {
            if (this.f13538h) {
                this.f13533c = SubscriptionHelper.m5315m(SubscriptionHelper.m5326b(licenseResponseItem));
                m6521p();
            }
            LogUtil.m5643d("ManagePresenteronMetroUserStatusUpdate", "active? " + this.f13533c);
        } else if (this.f13538h) {
            this.f13533c = false;
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.Presenter
    /* renamed from: b */
    public void mo6535b(@Nullable TmoUserStatus tmoUserStatus) {
        if (tmoUserStatus == null || !tmoUserStatus.isValid()) {
            if (!this.f13538h) {
                this.f13533c = false;
            }
            LogUtil.m5632o("ManagePresenter", "User status is invalid or empty, treating user an INACTIVE");
            return;
        }
        SubscriptionHelper.State state = SubscriptionHelper.State.NONE;
        if (tmoUserStatus.isValid()) {
            state = SubscriptionHelper.m5322f(tmoUserStatus);
            Intrinsics.m1831d(state, "SubscriptionHelper.getSt…IgnorePending(userStatus)");
        }
        if (!this.f13538h) {
            this.f13533c = SubscriptionHelper.m5315m(state);
            m6521p();
        }
        if (m6524m(this.f13535e)) {
            Manage.View view = this.f13534d.get();
            if (view != null) {
                view.mo6567G();
            }
        } else {
            Manage.View view2 = this.f13534d.get();
            if (view2 != null) {
                view2.mo6563J();
            }
        }
        LogUtil.m5632o("ManagePresenteronUserStatusUpdate", "activeSubscription? " + this.f13533c);
    }

    @Override // com.tmobile.services.nameid.manage.Manage.Presenter
    /* renamed from: c */
    public void mo6534c(int i) {
        Manage.PNBTab pNBTab = i == Manage.PNBTab.Favorite.f13505e.m6569d() ? Manage.PNBTab.Favorite.f13505e : i == Manage.PNBTab.Voicemail.f13506e.m6569d() ? Manage.PNBTab.Voicemail.f13506e : Manage.PNBTab.Block.f13504e;
        if (this.f13533c || !(!Intrinsics.m1834a(pNBTab, Manage.PNBTab.Favorite.f13505e))) {
            LogUtil.m5643d("ManagePresenter#onFabClicked", "Fab clicked at tab position [" + i + "] - showing search for " + pNBTab.m6571b());
            Manage.View view = this.f13534d.get();
            if (view != null) {
                view.mo6545s(pNBTab);
                return;
            }
            return;
        }
        Manage.View view2 = this.f13534d.get();
        if (view2 != null) {
            view2.mo6549i0();
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.Presenter
    /* renamed from: d */
    public void mo6533d(@NotNull List<? extends CallerSetting> callerSettings) {
        Intrinsics.m1830e(callerSettings, "callerSettings");
        LogUtil.m5643d("ManagePresenteronCallerSettingsUpdate", "Got caller settings list");
        LogUtil.m5643d("ManagePresenteronCallerSettingsUpdate", "caller setting size: " + callerSettings.size());
        m6523n(callerSettings);
        if (m6524m(this.f13535e)) {
            Manage.View view = this.f13534d.get();
            if (view != null) {
                view.mo6567G();
                return;
            }
            return;
        }
        Manage.View view2 = this.f13534d.get();
        if (view2 != null) {
            view2.mo6563J();
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.Presenter
    /* renamed from: e */
    public void mo6532e(int i) {
        if (!this.f13536f) {
            this.f13535e = Manage.PNBTab.f13500d.m6568a(i);
            int l = m6525l();
            NameIDPage.ManageTab c = this.f13535e.m6570c();
            Manage.View view = this.f13534d.get();
            if (view != null) {
                view.mo6552X(l);
                view.mo6556O(this.f13535e);
                view.mo6546q(c);
            }
            if (m6524m(this.f13535e)) {
                Manage.View view2 = this.f13534d.get();
                if (view2 != null) {
                    view2.mo6567G();
                }
            } else {
                Manage.View view3 = this.f13534d.get();
                if (view3 != null) {
                    view3.mo6563J();
                }
            }
            m6521p();
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.Presenter
    /* renamed from: f */
    public void mo6531f() {
        LogUtil.m5643d("ManagePresenter", "onViewCreated");
        m6521p();
        m6522o();
        this.f13536f = true;
        LogUtil.m5643d("ManagePresenter", "onViewCreated, tab = " + this.f13535e.m6571b());
        BuildersKt__Builders_commonKt.m1370b(this.f13532b, null, null, new ManagePresenter$onViewCreated$1(this, null), 3, null);
        int l = m6525l();
        Manage.View view = this.f13534d.get();
        if (view != null) {
            view.mo6552X(l);
        }
        if (m6524m(this.f13535e)) {
            Manage.View view2 = this.f13534d.get();
            if (view2 != null) {
                view2.mo6567G();
                return;
            }
            return;
        }
        Manage.View view3 = this.f13534d.get();
        if (view3 != null) {
            view3.mo6563J();
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.Presenter
    /* renamed from: g */
    public void mo6530g(@Nullable List<? extends UserPreference> list) {
        LogUtil.m5643d("ManagePresenter#onContactUpdate", "received contact update - resorting list");
        if (list == null) {
            list = CollectionsKt__CollectionsKt.m2175f();
        }
        m6523n(list);
    }
}
