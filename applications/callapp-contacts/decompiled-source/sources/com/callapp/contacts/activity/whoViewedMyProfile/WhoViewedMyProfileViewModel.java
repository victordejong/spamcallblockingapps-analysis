package com.callapp.contacts.activity.whoViewedMyProfile;

import androidx.lifecycle.aa;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import io.objectbox.a.a;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "whoViewedMyProfileLiveData", "Lio/objectbox/android/ObjectBoxLiveData;", "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;", "getWhoViewedMyProfileLiveData", "whoViewedMyProfileDataBox", "Lio/objectbox/Box;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel.class */
public final class WhoViewedMyProfileViewModel extends aa {

    /* renamed from: a  reason: collision with root package name */
    private a<ProfileViewedData> f14028a;

    public final a<ProfileViewedData> a(io.objectbox.a<ProfileViewedData> whoViewedMyProfileDataBox) {
        p.d(whoViewedMyProfileDataBox, "whoViewedMyProfileDataBox");
        if (this.f14028a == null) {
            this.f14028a = new a<>(whoViewedMyProfileDataBox.e().a());
        }
        a<ProfileViewedData> aVar = this.f14028a;
        if (aVar == null) {
            p.a("whoViewedMyProfileLiveData");
        }
        return aVar;
    }
}
