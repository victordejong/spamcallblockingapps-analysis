package com.tmobile.services.nameid.manage.tabs;

import com.tmobile.services.nameid.manage.tabs.ManageTab;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/tmobile/services/nameid/manage/tabs/RealmManageTabModel;", "com/tmobile/services/nameid/manage/tabs/ManageTab$Model", "", "e164Number", "Lcom/tmobile/services/nameid/model/Caller;", "findMostRecentCallerWithName", "(Ljava/lang/String;)Lcom/tmobile/services/nameid/model/Caller;", "", "isActive", "()Z", "Lcom/tmobile/services/nameid/model/Contact;", "lookupContact", "(Ljava/lang/String;)Lcom/tmobile/services/nameid/model/Contact;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/RealmManageTabModel.class */
public final class RealmManageTabModel implements ManageTab.Model {
    @Override // com.tmobile.services.nameid.manage.tabs.ManageTab.Model
    @Nullable
    /* renamed from: a */
    public Contact mo6478a(@NotNull String e164Number) {
        Intrinsics.m1830e(e164Number, "e164Number");
        return ContactLookup.m5824d().m5823e(e164Number);
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTab.Model
    public boolean isActive() {
        return SubscriptionHelper.m5317k();
    }
}
