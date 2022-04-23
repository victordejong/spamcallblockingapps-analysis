package com.callapp.contacts.popup;

import com.callapp.contacts.activity.marketplace.videoRingtone.CarouselAdapter;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemDetailsData;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;", "invoke"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2.class */
final class ShareVideoRingtonePopup$itemAdapter$2 extends r implements Function0<CarouselAdapter> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ShareVideoRingtonePopup f15379a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "item", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.callapp.contacts.popup.ShareVideoRingtonePopup$itemAdapter$2$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2$1.class */
    static final class AnonymousClass1 extends r implements Function1<PersonalStoreItemDetailsData, v> {
        AnonymousClass1() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(PersonalStoreItemDetailsData personalStoreItemDetailsData) {
            PersonalStoreItemDetailsData item = personalStoreItemDetailsData;
            p.d(item, "item");
            ShareVideoRingtonePopup$itemAdapter$2.this.f15379a.setPersonalStoreItemDetailsData(item);
            return v.f38654a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareVideoRingtonePopup$itemAdapter$2(ShareVideoRingtonePopup shareVideoRingtonePopup) {
        super(0);
        this.f15379a = shareVideoRingtonePopup;
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* synthetic */ CarouselAdapter invoke() {
        return new CarouselAdapter(new AnonymousClass1());
    }
}
