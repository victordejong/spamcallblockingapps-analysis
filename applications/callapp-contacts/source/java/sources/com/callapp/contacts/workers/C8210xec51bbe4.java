package com.callapp.contacts.workers;

import com.callapp.contacts.util.ads.AdUtils;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "type", "getAdLayoutResourceId"}, m4297k = 3, m4296mv = {1, 4, 2})
/* renamed from: com.callapp.contacts.workers.MissedCallSummaryDailyWorker$Companion$openMissedCallSummary$2$getAdSettings$1 */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion$openMissedCallSummary$2$getAdSettings$1.class */
final class C8210xec51bbe4 implements AdUtils.NativeAdLayoutGetter {

    /* renamed from: a */
    public static final C8210xec51bbe4 f29598a = new C8210xec51bbe4();

    C8210xec51bbe4() {
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.NativeAdLayoutGetter
    public final int getAdLayoutResourceId(int i) {
        return AdUtils.getSmallCardAdLayoutResourceId(i);
    }
}
