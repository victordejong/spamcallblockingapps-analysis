package com.callapp.contacts.activity.whoViewedMyProfile;

import androidx.lifecycle.AbstractC1231aa;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import io.objectbox.C17944a;
import io.objectbox.p501a.C17945a;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "whoViewedMyProfileLiveData", "Lio/objectbox/android/ObjectBoxLiveData;", "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;", "getWhoViewedMyProfileLiveData", "whoViewedMyProfileDataBox", "Lio/objectbox/Box;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel.class */
public final class WhoViewedMyProfileViewModel extends AbstractC1231aa {

    /* renamed from: a */
    private C17945a<ProfileViewedData> f24667a;

    /* renamed from: a */
    public final C17945a<ProfileViewedData> m29325a(C17944a<ProfileViewedData> whoViewedMyProfileDataBox) {
        C18524p.m3840d(whoViewedMyProfileDataBox, "whoViewedMyProfileDataBox");
        if (this.f24667a == null) {
            this.f24667a = new C17945a<>(whoViewedMyProfileDataBox.m4700e().m4618a());
        }
        C17945a<ProfileViewedData> c17945a = this.f24667a;
        if (c17945a == null) {
            C18524p.m3848a("whoViewedMyProfileLiveData");
        }
        return c17945a;
    }
}
