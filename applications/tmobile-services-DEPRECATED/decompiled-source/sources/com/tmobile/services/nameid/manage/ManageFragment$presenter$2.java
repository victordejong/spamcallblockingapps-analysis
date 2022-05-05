package com.tmobile.services.nameid.manage;

import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/tmobile/services/nameid/manage/ManagePresenter;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManageFragment$presenter$2.class */
final class ManageFragment$presenter$2 extends Lambda implements Function0<ManagePresenter> {

    /* renamed from: f */
    final /* synthetic */ ManageFragment f13528f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManageFragment$presenter$2(ManageFragment manageFragment) {
        super(0);
        this.f13528f = manageFragment;
    }

    @NotNull
    /* renamed from: b */
    public final ManagePresenter invoke() {
        return new ManagePresenter(this.f13528f, new RealmManageModel(), BuildUtils.m5850d(), SubscriptionHelper.m5317k(), this.f13528f.mo6551f0());
    }
}
