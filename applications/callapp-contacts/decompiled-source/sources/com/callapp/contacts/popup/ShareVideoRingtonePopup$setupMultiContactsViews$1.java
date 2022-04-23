package com.callapp.contacts.popup;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.videoRingtone.CarouselAdapter;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemDetailsData;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.Activities;
import java.util.List;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1", "Lcom/callapp/contacts/manager/task/Task;", "doTask", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1.class */
public final class ShareVideoRingtonePopup$setupMultiContactsViews$1 extends Task {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ShareVideoRingtonePopup f15381a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f15382b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShareVideoRingtonePopup$setupMultiContactsViews$1(ShareVideoRingtonePopup shareVideoRingtonePopup, int i) {
        this.f15381a = shareVideoRingtonePopup;
        this.f15382b = i;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public final void doTask() {
        this.f15381a.setVideoUrlDetailsData(ShareVideoRingtonePopup.a());
        List<PersonalStoreItemDetailsData> videoUrlDetailsData = this.f15381a.getVideoUrlDetailsData();
        if (!(videoUrlDetailsData == null || videoUrlDetailsData.isEmpty())) {
            CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.popup.ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1
                @Override // java.lang.Runnable
                public final void run() {
                    CarouselAdapter itemAdapter;
                    ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f15381a.getProgress().setVisibility(8);
                    ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f15381a.setPersonalStoreItemDetailsData(ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f15381a.getVideoUrlDetailsData().get(ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f15382b));
                    itemAdapter = ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f15381a.getItemAdapter();
                    itemAdapter.a(ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f15381a.getVideoUrlDetailsData(), Integer.valueOf(ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f15382b));
                    ShareVideoRingtonePopup$setupMultiContactsViews$1.this.f15381a.getRightShareButtonFrame().setVisibility(0);
                }
            });
            return;
        }
        FeedbackManager.get().a(Activities.getString(2131887670), (Integer) null);
        this.f15381a.dismiss();
    }
}
