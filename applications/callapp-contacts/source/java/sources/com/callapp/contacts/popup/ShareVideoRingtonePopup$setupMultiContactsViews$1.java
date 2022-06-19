package com.callapp.contacts.popup;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.videoRingtone.CarouselAdapter;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemDetailsData;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.Activities;
import java.util.List;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m4298d2 = {"com/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1", "Lcom/callapp/contacts/manager/task/Task;", "doTask", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1.class */
public final class ShareVideoRingtonePopup$setupMultiContactsViews$1 extends Task {

    /* renamed from: a */
    final /* synthetic */ ShareVideoRingtonePopup f26956a;

    /* renamed from: b */
    final /* synthetic */ int f26957b;

    public ShareVideoRingtonePopup$setupMultiContactsViews$1(ShareVideoRingtonePopup shareVideoRingtonePopup, int i) {
        this.f26956a = shareVideoRingtonePopup;
        this.f26957b = i;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public final void doTask() {
        this.f26956a.setVideoUrlDetailsData(ShareVideoRingtonePopup.m28029a());
        List<PersonalStoreItemDetailsData> videoUrlDetailsData = this.f26956a.getVideoUrlDetailsData();
        if (!(videoUrlDetailsData == null || videoUrlDetailsData.isEmpty())) {
            CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.popup.ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1
                @Override // java.lang.Runnable
                public final void run() {
                    CarouselAdapter itemAdapter;
                    ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f26956a.getProgress().setVisibility(8);
                    ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f26956a.setPersonalStoreItemDetailsData(ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f26956a.getVideoUrlDetailsData().get(ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f26957b));
                    itemAdapter = ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f26956a.getItemAdapter();
                    itemAdapter.m29894a(ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f26956a.getVideoUrlDetailsData(), Integer.valueOf(ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f26957b));
                    ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f26956a.getRightShareButtonFrame().setVisibility(0);
                }
            });
            return;
        }
        FeedbackManager.get().m28669a(Activities.getString(2131887670), (Integer) null);
        this.f26956a.dismiss();
    }
}
