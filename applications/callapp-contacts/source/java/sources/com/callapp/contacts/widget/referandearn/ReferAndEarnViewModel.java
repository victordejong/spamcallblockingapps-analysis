package com.callapp.contacts.widget.referandearn;

import androidx.lifecycle.AbstractC1231aa;
import com.callapp.contacts.model.invites.ReferAndEarnData;
import io.objectbox.C17944a;
import io.objectbox.p501a.C17945a;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "referAndEarnLiveData", "Lio/objectbox/android/ObjectBoxLiveData;", "Lcom/callapp/contacts/model/invites/ReferAndEarnData;", "getReferAndEarnLiveData", "referAndEarnDataBox", "Lio/objectbox/Box;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnViewModel.class */
public final class ReferAndEarnViewModel extends AbstractC1231aa {

    /* renamed from: a */
    private C17945a<ReferAndEarnData> f29409a;

    /* renamed from: a */
    public final C17945a<ReferAndEarnData> m26324a(C17944a<ReferAndEarnData> referAndEarnDataBox) {
        C18524p.m3840d(referAndEarnDataBox, "referAndEarnDataBox");
        if (this.f29409a == null) {
            this.f29409a = new C17945a<>(referAndEarnDataBox.m4700e().m4618a());
        }
        C17945a<ReferAndEarnData> c17945a = this.f29409a;
        Objects.requireNonNull(c17945a, "null cannot be cast to non-null type io.objectbox.android.ObjectBoxLiveData<com.callapp.contacts.model.invites.ReferAndEarnData>");
        return c17945a;
    }
}
