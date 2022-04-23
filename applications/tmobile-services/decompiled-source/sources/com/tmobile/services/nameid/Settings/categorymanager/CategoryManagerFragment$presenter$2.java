package com.tmobile.services.nameid.Settings.categorymanager;

import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManagerPresenter;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManagerFragment$presenter$2.class */
final class CategoryManagerFragment$presenter$2 extends Lambda implements Function0<CategoryManagerPresenter> {

    /* renamed from: f */
    final /* synthetic */ CategoryManagerFragment f12920f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CategoryManagerFragment$presenter$2(CategoryManagerFragment categoryManagerFragment) {
        super(0);
        this.f12920f = categoryManagerFragment;
    }

    @NotNull
    /* renamed from: b */
    public final CategoryManagerPresenter invoke() {
        CategoryManagerFragment categoryManagerFragment = this.f12920f;
        boolean d = BuildUtils.m5850d();
        SubscriptionHelper.State c = SubscriptionHelper.m5325c();
        Intrinsics.m1831d(c, "SubscriptionHelper.getState()");
        return new CategoryManagerPresenter(categoryManagerFragment, d, c);
    }
}
