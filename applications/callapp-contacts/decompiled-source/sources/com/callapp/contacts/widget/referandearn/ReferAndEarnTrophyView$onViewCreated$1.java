package com.callapp.contacts.widget.referandearn;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.task.Task;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1", "Lcom/callapp/contacts/manager/task/Task;", "doTask", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1.class */
public final class ReferAndEarnTrophyView$onViewCreated$1 extends Task {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ReferAndEarnTrophyView f16915a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReferAndEarnTrophyView$onViewCreated$1(ReferAndEarnTrophyView referAndEarnTrophyView) {
        this.f16915a = referAndEarnTrophyView;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public final void doTask() {
        this.f16915a.f16909d = JSONReferAndEarnRewardsObject.Companion.getJSONReferAndEarnRewardsData();
        CallAppApplication.get().d(new ReferAndEarnTrophyView$onViewCreated$1$doTask$1(this));
    }
}
