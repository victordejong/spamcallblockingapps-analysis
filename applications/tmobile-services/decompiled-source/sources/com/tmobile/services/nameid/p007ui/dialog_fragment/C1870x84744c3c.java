package com.tmobile.services.nameid.p007ui.dialog_fragment;

import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "", "invoke", "com/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder$Templates$getNoNetwork$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDDialogBuilder$Templates$getNoNetwork$$inlined$apply$lambda$1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder$Templates$getNoNetwork$$inlined$apply$lambda$1.class */
final class C1870x84744c3c extends Lambda implements Function0<Unit> {

    /* renamed from: f */
    final /* synthetic */ Context f13956f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1870x84744c3c(Context context) {
        super(0);
        this.f13956f = context;
    }

    /* renamed from: b */
    public final void m6145b() {
        Intent intent = new Intent("android.settings.SETTINGS");
        Context context = this.f13956f;
        if (context != null) {
            context.startActivity(intent);
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        m6145b();
        return Unit.f20447a;
    }
}
