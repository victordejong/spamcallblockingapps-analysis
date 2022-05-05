package com.tmobile.services.nameid.p007ui.dialog_fragment;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.MyAccountHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDSubscribeDialog$Companion$show$2 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDSubscribeDialog$Companion$show$2.class */
public final class NameIDSubscribeDialog$Companion$show$2 extends Lambda implements Function0<Unit> {

    /* renamed from: f */
    final /* synthetic */ FragmentActivity f13995f;

    /* renamed from: g */
    final /* synthetic */ FragmentManager f13996g;

    /* renamed from: h */
    final /* synthetic */ NameIDSubscribeDialog f13997h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NameIDSubscribeDialog$Companion$show$2(FragmentActivity fragmentActivity, FragmentManager fragmentManager, NameIDSubscribeDialog nameIDSubscribeDialog) {
        super(0);
        this.f13995f = fragmentActivity;
        this.f13996g = fragmentManager;
        this.f13997h = nameIDSubscribeDialog;
    }

    /* renamed from: b */
    public final void m6107b() {
        MainApplication.m7553C("app_trial", new String[]{"result"}, new String[]{"accept_submodal"});
        AnalyticsWrapper.m5883E(MainApplication.m7526n(), "start_trial");
        MyAccountHelper.m5483e(this.f13995f, this.f13996g, true, TmoApiWrapper.AccountType.TRIAL, true, true);
        this.f13997h.dismiss();
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        m6107b();
        return Unit.f20447a;
    }
}
