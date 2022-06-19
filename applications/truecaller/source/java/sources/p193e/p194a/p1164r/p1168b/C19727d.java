package p193e.p194a.p1164r.p1168b;

import com.truecaller.common.network.optout.OptOutRestAdapter;
import com.truecaller.wizard.adschoices.AdsChoiceOptOutStatus;
/* renamed from: e.a.r.b.d */
/* loaded from: classes16-dex2jar.jar:e/a/r/b/d.class */
public final class C19727d {
    /* renamed from: a */
    public static final AdsChoiceOptOutStatus m12943a(OptOutRestAdapter.OptOutsDto optOutsDto, String str) {
        return optOutsDto.getOptOuts().contains(str) ? AdsChoiceOptOutStatus.OPTED_OUT : optOutsDto.getOptIns().contains(str) ? AdsChoiceOptOutStatus.OPTED_IN : AdsChoiceOptOutStatus.UNKNOWN;
    }
}
