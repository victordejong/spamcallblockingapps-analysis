package com.tmobile.services.nameid.manage.tabs;

import com.tmobile.services.nameid.manage.tabs.ManageTab;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.utility.LogUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \u001d2\u00020\u0001:\u0001\u001dB\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u001b\u0010\u001cJ#\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\r\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¢\u0006\u0004\b\r\u0010\fR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0012\u001a\u00020\u00118\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, d2 = {"Lcom/tmobile/services/nameid/manage/tabs/ManageTabPresenter;", "com/tmobile/services/nameid/manage/tabs/ManageTab$Presenter", "", "Lcom/tmobile/services/nameid/model/UserPreference;", "sortedPnbList", "filter", "(Ljava/util/List;)Ljava/util/List;", "item", "", "onItemClick", "(Lcom/tmobile/services/nameid/model/UserPreference;)V", "onSortedListUpdated", "(Ljava/util/List;)V", "onViewCreated", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "action", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "Lcom/tmobile/services/nameid/manage/tabs/ManageTab$Model;", "model", "Lcom/tmobile/services/nameid/manage/tabs/ManageTab$Model;", "getModel", "()Lcom/tmobile/services/nameid/manage/tabs/ManageTab$Model;", "Ljava/lang/ref/WeakReference;", "Lcom/tmobile/services/nameid/manage/tabs/ManageTab$View;", "viewRef", "Ljava/lang/ref/WeakReference;", "view", "<init>", "(Lcom/tmobile/services/nameid/manage/tabs/ManageTab$View;Lcom/tmobile/services/nameid/manage/tabs/ManageTab$Model;)V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/ManageTabPresenter.class */
public final class ManageTabPresenter implements ManageTab.Presenter {

    /* renamed from: a */
    private final WeakReference<ManageTab.View> f13587a;

    /* renamed from: b */
    private final CallerSetting.Action f13588b;
    @NotNull

    /* renamed from: c */
    private final ManageTab.Model f13589c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/manage/tabs/ManageTabPresenter$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/ManageTabPresenter$Companion.class */
    private static final class Companion {
        private Companion() {
        }
    }

    public ManageTabPresenter(@NotNull ManageTab.View view, @NotNull ManageTab.Model model) {
        Intrinsics.m1830e(view, "view");
        Intrinsics.m1830e(model, "model");
        this.f13589c = model;
        this.f13587a = new WeakReference<>(view);
        this.f13588b = view.mo6492b0();
    }

    /* renamed from: a */
    private final List<UserPreference> m6482a(List<? extends UserPreference> list) {
        List<UserPreference> f;
        if (this.f13589c.isActive() || this.f13588b == CallerSetting.Action.APPROVED) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                UserPreference userPreference = (UserPreference) obj;
                if (userPreference.isValid() && userPreference.getAction() == this.f13588b.getValue()) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }
        f = CollectionsKt__CollectionsKt.m2175f();
        return f;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6481b(@org.jetbrains.annotations.Nullable com.tmobile.services.nameid.model.UserPreference r8) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.manage.tabs.ManageTabPresenter.m6481b(com.tmobile.services.nameid.model.UserPreference):void");
    }

    /* renamed from: c */
    public void m6480c(@NotNull List<? extends UserPreference> sortedPnbList) {
        Intrinsics.m1830e(sortedPnbList, "sortedPnbList");
        List<UserPreference> a = m6482a(sortedPnbList);
        ManageTab.View view = this.f13587a.get();
        if (view != null) {
            view.mo6493W(a);
        }
        if (a.isEmpty()) {
            ManageTab.View view2 = this.f13587a.get();
            if (view2 != null) {
                view2.mo6491o();
                return;
            }
            return;
        }
        ManageTab.View view3 = this.f13587a.get();
        if (view3 != null) {
            view3.mo6499F();
        }
    }

    /* renamed from: d */
    public void m6479d(@NotNull List<? extends UserPreference> sortedPnbList) {
        Intrinsics.m1830e(sortedPnbList, "sortedPnbList");
        LogUtil.m5643d("ManageTabPresenter#onViewCreated", "sortedPnbList size = " + sortedPnbList.size());
        List<UserPreference> a = m6482a(sortedPnbList);
        LogUtil.m5643d("ManageTabPresenter#onViewCreated", "filtered sortedPnbList size = " + sortedPnbList.size());
        ManageTab.View view = this.f13587a.get();
        if (view != null) {
            view.mo6500B0(a);
        }
        if (a.isEmpty()) {
            ManageTab.View view2 = this.f13587a.get();
            if (view2 != null) {
                view2.mo6491o();
                return;
            }
            return;
        }
        ManageTab.View view3 = this.f13587a.get();
        if (view3 != null) {
            view3.mo6499F();
        }
    }
}
