package com.callapp.contacts.widget.referandearn;

import com.callapp.common.model.json.JSONInviteReferer;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.util.Activities;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006"}, m4298d2 = {"com/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2", "Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;", "onKeyResult", "", "jsonInviteReferer", "Lcom/callapp/common/model/json/JSONInviteReferer;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2.class */
public final class ShareCallAppDialogFragment$onCreateView$2 implements ReferAndEarnDataManager.ReferAndEarnDataManagerListener {
    final /* synthetic */ ShareCallAppDialogFragment this$0;

    public ShareCallAppDialogFragment$onCreateView$2(ShareCallAppDialogFragment shareCallAppDialogFragment) {
        this.this$0 = shareCallAppDialogFragment;
    }

    @Override // com.callapp.contacts.model.invites.ReferAndEarnDataManager.ReferAndEarnDataManagerListener
    public final void onKeyResult(final JSONInviteReferer jSONInviteReferer) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment$onCreateView$2$onKeyResult$1
            @Override // java.lang.Runnable
            public final void run() {
                if (jSONInviteReferer == null) {
                    FeedbackManager.get().m28671a(Activities.getString(2131888107));
                    return;
                }
                ShareCallAppDialogFragment.m26303a(ShareCallAppDialogFragment$onCreateView$2.this.this$0).setVisibility(8);
                ShareCallAppDialogFragment$onCreateView$2.this.this$0.getViewPager().setVisibility(0);
            }
        });
    }
}
