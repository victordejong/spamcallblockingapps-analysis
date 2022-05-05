package com.tmobile.services.nameid.Settings.callerIdPrefs;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefsPresenter;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefsFragment$presenter$2.class */
final class CallerIdPrefsFragment$presenter$2 extends Lambda implements Function0<CallerIdPrefsPresenter> {

    /* renamed from: f */
    final /* synthetic */ CallerIdPrefsFragment f12851f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallerIdPrefsFragment$presenter$2(CallerIdPrefsFragment callerIdPrefsFragment) {
        super(0);
        this.f12851f = callerIdPrefsFragment;
    }

    @NotNull
    /* renamed from: b */
    public final CallerIdPrefsPresenter invoke() {
        return new CallerIdPrefsPresenter(this.f12851f, new RealmCallerIdPrefsModel(null, 1, null));
    }
}
