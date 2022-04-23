package com.callapp.contacts.activity.marketplace.videoRingtone;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.popup.ShareVideoRingtonePopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.video.CallAppTransformation;
import com.callapp.contacts.util.video.VideoOverlayData;
import com.callapp.framework.util.StringUtils;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006¸\u0006��"}, d2 = {"com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$1$1", "Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;", "onContactSelected", "", "personalStoreItemDetailsData", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.class */
public final class PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1 implements ShareVideoRingtonePopup.ShareVideoRingtonePopUpInterface {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ PersonalStoreItemFragment f13366a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ PersonalStoreItemUrlData f13367b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1(PersonalStoreItemFragment personalStoreItemFragment, PersonalStoreItemUrlData personalStoreItemUrlData) {
        this.f13366a = personalStoreItemFragment;
        this.f13367b = personalStoreItemUrlData;
    }

    @Override // com.callapp.contacts.popup.ShareVideoRingtonePopup.ShareVideoRingtonePopUpInterface
    public final void a(final PersonalStoreItemDetailsData personalStoreItemDetailsData) {
        p.d(personalStoreItemDetailsData, "personalStoreItemDetailsData");
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.1
            @Override // java.lang.Runnable
            public final void run() {
                AnalyticsManager.get().a(Constants.PERSONAL_STORE_ITEM, "ClickShareInDialog", PersonalStoreItemHelper.a(PersonalStoreItemFragment.a(PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f13366a)));
                String photoUrl = StringUtils.b((CharSequence) personalStoreItemDetailsData.getPhotoUrl()) ? personalStoreItemDetailsData.getPhotoUrl() : ImageUtils.getResourceUri(2131232147);
                final VideoOverlayData.VideoOverlayBuilder videoOverlayBuilder = new VideoOverlayData.VideoOverlayBuilder(PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f13366a.getContext());
                float length = personalStoreItemDetailsData.getName().length();
                VideoOverlayData.VideoOverlayBuilder a2 = videoOverlayBuilder.a(2131232135, false, 0.5f, 0.74f, Float.valueOf(0.82f)).a(2131232133, true, 0.67f, 0.15f, Float.valueOf(0.26f));
                a2.f16343b.add(new VideoOverlayData(a2.f16342a, photoUrl, false, 0.5f, 0.2f, 0.18f, Float.valueOf(0.1f)));
                a2.a(personalStoreItemDetailsData.getName(), true, 0.28f, length / 33.0f, Float.valueOf(0.04f)).a(Activities.getString(2131887044), false, 0.4f, 0.3f, Float.valueOf(0.04f));
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onShareClicked$.inlined.let.lambda.1.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PersonalStoreItemFragment personalStoreItemFragment = PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f13366a;
                        CallAppTransformation.TransformationBuilder transformationBuilder = new CallAppTransformation.TransformationBuilder(PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f13366a.getContext(), PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f13366a.getSelectedItemUri(), PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f13366a.getShareVideoTempFile(), UUID.randomUUID().toString(), PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f13366a);
                        transformationBuilder.f16316b = 0.68f;
                        transformationBuilder.f16317c = 0.78f;
                        transformationBuilder.f16318d = videoOverlayBuilder;
                        personalStoreItemFragment.setTransformationBuilder(transformationBuilder);
                        CallAppTransformation.TransformationBuilder transformationBuilder2 = PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f13366a.getTransformationBuilder();
                        if (transformationBuilder2 != null) {
                            transformationBuilder2.a();
                        }
                    }
                });
            }
        });
    }
}
