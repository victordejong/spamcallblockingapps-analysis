package com.callapp.contacts.widget.referandearn;

import androidx.lifecycle.aa;
import com.callapp.contacts.model.invites.ReferAndEarnData;
import io.objectbox.a.a;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "referAndEarnLiveData", "Lio/objectbox/android/ObjectBoxLiveData;", "Lcom/callapp/contacts/model/invites/ReferAndEarnData;", "getReferAndEarnLiveData", "referAndEarnDataBox", "Lio/objectbox/Box;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnViewModel.class */
public final class ReferAndEarnViewModel extends aa {

    /* renamed from: a  reason: collision with root package name */
    private a<ReferAndEarnData> f16917a;

    public final a<ReferAndEarnData> a(io.objectbox.a<ReferAndEarnData> referAndEarnDataBox) {
        p.d(referAndEarnDataBox, "referAndEarnDataBox");
        if (this.f16917a == null) {
            this.f16917a = new a<>(referAndEarnDataBox.e().a());
        }
        a<ReferAndEarnData> aVar = this.f16917a;
        Objects.requireNonNull(aVar, "null cannot be cast to non-null type io.objectbox.android.ObjectBoxLiveData<com.callapp.contacts.model.invites.ReferAndEarnData>");
        return aVar;
    }
}
