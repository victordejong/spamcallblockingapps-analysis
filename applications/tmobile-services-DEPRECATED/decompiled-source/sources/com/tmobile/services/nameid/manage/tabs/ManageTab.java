package com.tmobile.services.nameid.manage.tabs;

import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.UserPreference;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��:\u0003\u0003\u0004\u0005B\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/manage/tabs/ManageTab;", "<init>", "()V", "Model", "Presenter", "View", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/ManageTab.class */
public final class ManageTab {

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/tmobile/services/nameid/manage/tabs/ManageTab$Model;", "Lkotlin/Any;", "", "e164Number", "Lcom/tmobile/services/nameid/model/Caller;", "findMostRecentCallerWithName", "(Ljava/lang/String;)Lcom/tmobile/services/nameid/model/Caller;", "", "isActive", "()Z", "Lcom/tmobile/services/nameid/model/Contact;", "lookupContact", "(Ljava/lang/String;)Lcom/tmobile/services/nameid/model/Contact;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/ManageTab$Model.class */
    public interface Model {
        @Nullable
        /* renamed from: a */
        Contact mo6478a(@NotNull String str);

        boolean isActive();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H&¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H&¢\u0006\u0004\b\u000b\u0010\n¨\u0006\f"}, d2 = {"Lcom/tmobile/services/nameid/manage/tabs/ManageTab$Presenter;", "Lkotlin/Any;", "Lcom/tmobile/services/nameid/model/UserPreference;", "item", "", "onItemClick", "(Lcom/tmobile/services/nameid/model/UserPreference;)V", "", "sortedPnbList", "onSortedListUpdated", "(Ljava/util/List;)V", "onViewCreated", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/ManageTab$Presenter.class */
    public interface Presenter {
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H&¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH&¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H&¢\u0006\u0004\b\u0011\u0010\u000bJ\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0012\u0010\u0006J\u001d\u0010\u0013\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH&¢\u0006\u0004\b\u0013\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/tmobile/services/nameid/manage/tabs/ManageTab$View;", "Lkotlin/Any;", "", "e164Number", "", "doLookup", "(Ljava/lang/String;)V", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getManageAction", "()Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "hideEmptyListView", "()V", "", "Lcom/tmobile/services/nameid/model/UserPreference;", "list", "setupList", "(Ljava/util/List;)V", "showEmptyListView", "startCallDetailsActivity", "updateList", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/ManageTab$View.class */
    public interface View {
        /* renamed from: B0 */
        void mo6500B0(@NotNull List<? extends UserPreference> list);

        /* renamed from: F */
        void mo6499F();

        /* renamed from: W */
        void mo6493W(@NotNull List<? extends UserPreference> list);

        @NotNull
        /* renamed from: b0 */
        CallerSetting.Action mo6492b0();

        /* renamed from: o */
        void mo6491o();

        /* renamed from: w */
        void mo6490w(@NotNull String str);

        /* renamed from: y0 */
        void mo6489y0(@NotNull String str);
    }
}
