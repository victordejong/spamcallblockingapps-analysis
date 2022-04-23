package com.callapp.contacts.workers;

import com.callapp.contacts.util.ads.AdUtils;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "type", "getAdLayoutResourceId"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1.class */
final class NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1 implements AdUtils.NativeAdLayoutGetter {

    /* renamed from: a  reason: collision with root package name */
    public static final NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1 f17070a = new NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1();

    NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1() {
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.NativeAdLayoutGetter
    public final int getAdLayoutResourceId(int i) {
        return AdUtils.getSmallCardAdLayoutResourceId(i);
    }
}
