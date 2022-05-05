package com.tmobile.services.nameid.manage;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProviders;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/tmobile/services/nameid/manage/ManageViewModel;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManageFragment$model$2.class */
final class ManageFragment$model$2 extends Lambda implements Function0<ManageViewModel> {

    /* renamed from: f */
    final /* synthetic */ ManageFragment f13523f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManageFragment$model$2(ManageFragment manageFragment) {
        super(0);
        this.f13523f = manageFragment;
    }

    @NotNull
    /* renamed from: b */
    public final ManageViewModel invoke() {
        ViewModel a = ViewModelProviders.m18139a(this.f13523f.requireActivity()).m18145a(ManageViewModel.class);
        Intrinsics.m1831d(a, "ViewModelProviders.of(re…ageViewModel::class.java)");
        return (ManageViewModel) a;
    }
}
