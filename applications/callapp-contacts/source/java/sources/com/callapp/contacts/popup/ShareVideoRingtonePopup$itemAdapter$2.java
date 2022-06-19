package com.callapp.contacts.popup;

import com.callapp.contacts.activity.marketplace.videoRingtone.CarouselAdapter;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemDetailsData;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2.class */
public final class ShareVideoRingtonePopup$itemAdapter$2 extends AbstractC18526r implements Function0<CarouselAdapter> {

    /* renamed from: a */
    final /* synthetic */ ShareVideoRingtonePopup f26954a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "item", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.callapp.contacts.popup.ShareVideoRingtonePopup$itemAdapter$2$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2$1.class */
    static final class C76321 extends AbstractC18526r implements Function1<PersonalStoreItemDetailsData, C20128v> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C76321() {
            super(1);
            ShareVideoRingtonePopup$itemAdapter$2.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(PersonalStoreItemDetailsData personalStoreItemDetailsData) {
            PersonalStoreItemDetailsData item = personalStoreItemDetailsData;
            C18524p.m3840d(item, "item");
            ShareVideoRingtonePopup$itemAdapter$2.this.f26954a.setPersonalStoreItemDetailsData(item);
            return C20128v.f66529a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareVideoRingtonePopup$itemAdapter$2(ShareVideoRingtonePopup shareVideoRingtonePopup) {
        super(0);
        this.f26954a = shareVideoRingtonePopup;
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* synthetic */ CarouselAdapter invoke() {
        return new CarouselAdapter(new C76321());
    }
}
