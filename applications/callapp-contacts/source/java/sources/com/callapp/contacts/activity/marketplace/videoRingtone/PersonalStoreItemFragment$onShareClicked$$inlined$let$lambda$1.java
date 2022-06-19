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
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006¸\u0006��"}, m4298d2 = {"com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$1$1", "Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;", "onContactSelected", "", "personalStoreItemDetailsData", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.class */
public final class PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1 implements ShareVideoRingtonePopup.ShareVideoRingtonePopUpInterface {

    /* renamed from: a */
    final /* synthetic */ PersonalStoreItemFragment f23774a;

    /* renamed from: b */
    final /* synthetic */ PersonalStoreItemUrlData f23775b;

    public PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1(PersonalStoreItemFragment personalStoreItemFragment, PersonalStoreItemUrlData personalStoreItemUrlData) {
        this.f23774a = personalStoreItemFragment;
        this.f23775b = personalStoreItemUrlData;
    }

    @Override // com.callapp.contacts.popup.ShareVideoRingtonePopup.ShareVideoRingtonePopUpInterface
    /* renamed from: a */
    public final void mo28026a(final PersonalStoreItemDetailsData personalStoreItemDetailsData) {
        C18524p.m3840d(personalStoreItemDetailsData, "personalStoreItemDetailsData");
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.1
            @Override // java.lang.Runnable
            public final void run() {
                AnalyticsManager.get().m28449a(Constants.PERSONAL_STORE_ITEM, "ClickShareInDialog", PersonalStoreItemHelper.m30047a(PersonalStoreItemFragment.m29881a(PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f23774a)));
                String photoUrl = StringUtils.m26045b((CharSequence) personalStoreItemDetailsData.getPhotoUrl()) ? personalStoreItemDetailsData.getPhotoUrl() : ImageUtils.getResourceUri(2131232147);
                final VideoOverlayData.VideoOverlayBuilder videoOverlayBuilder = new VideoOverlayData.VideoOverlayBuilder(PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f23774a.getContext());
                float length = personalStoreItemDetailsData.getName().length();
                VideoOverlayData.VideoOverlayBuilder m26891a = videoOverlayBuilder.m26891a(2131232135, false, 0.5f, 0.74f, Float.valueOf(0.82f)).m26891a(2131232133, true, 0.67f, 0.15f, Float.valueOf(0.26f));
                m26891a.f28462b.add(new VideoOverlayData(m26891a.f28461a, photoUrl, false, 0.5f, 0.2f, 0.18f, Float.valueOf(0.1f)));
                m26891a.m26888a(personalStoreItemDetailsData.getName(), true, 0.28f, length / 33.0f, Float.valueOf(0.04f)).m26888a(Activities.getString(2131887044), false, 0.4f, 0.3f, Float.valueOf(0.04f));
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onShareClicked$.inlined.let.lambda.1.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PersonalStoreItemFragment personalStoreItemFragment = PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f23774a;
                        CallAppTransformation.TransformationBuilder transformationBuilder = new CallAppTransformation.TransformationBuilder(PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f23774a.getContext(), PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f23774a.getSelectedItemUri(), PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f23774a.getShareVideoTempFile(), UUID.randomUUID().toString(), PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f23774a);
                        transformationBuilder.f28417b = 0.68f;
                        transformationBuilder.f28418c = 0.78f;
                        transformationBuilder.f28419d = videoOverlayBuilder;
                        personalStoreItemFragment.setTransformationBuilder(transformationBuilder);
                        CallAppTransformation.TransformationBuilder transformationBuilder2 = PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1.this.f23774a.getTransformationBuilder();
                        if (transformationBuilder2 != null) {
                            transformationBuilder2.m26896a();
                        }
                    }
                });
            }
        });
    }
}
