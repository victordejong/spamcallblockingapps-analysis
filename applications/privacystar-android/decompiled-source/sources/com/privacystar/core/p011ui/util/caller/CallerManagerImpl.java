package com.privacystar.core.p011ui.util.caller;

import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.util.caller.CallerContract;
import com.privacystar.core.util.OffenderUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/util/caller/CallerManagerImpl;", "Lcom/privacystar/core/ui/util/caller/CallerContract$Manager;", "()V", "getDefaultCallerDrawableId", "", "offenderToCallerDrawableId", "offenderType", "Lcom/privacystar/core/util/OffenderUtil$OffenderTypeUi;", "shouldShowCallerIconBadge", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.util.caller.CallerManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/caller/CallerManagerImpl.class */
public final class CallerManagerImpl implements CallerContract.Manager {
    public static final CallerManagerImpl INSTANCE = new CallerManagerImpl();

    private CallerManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.util.caller.CallerContract.Manager
    public int getDefaultCallerDrawableId() {
        return C1566R.C1568drawable.ic_cat_unknown_grey;
    }

    @Override // com.privacystar.core.p011ui.util.caller.CallerContract.Manager
    public int offenderToCallerDrawableId(@NotNull OffenderUtil.OffenderTypeUi offenderType) {
        int i;
        Intrinsics.checkParameterIsNotNull(offenderType, "offenderType");
        switch (offenderType) {
            case ACCOUNT_SERVICES:
                i = C1566R.C1568drawable.ic_cat_debt_collector;
                break;
            case SCAM:
                i = C1566R.C1568drawable.ic_cat_scam;
                break;
            case CHARITY:
                i = C1566R.C1568drawable.ic_cat_charity;
                break;
            case POLITICAL:
                i = C1566R.C1568drawable.ic_cat_political;
                break;
            case SURVEY:
                i = C1566R.C1568drawable.ic_cat_market_research;
                break;
            case TELEMARKETING:
                i = C1566R.C1568drawable.ic_cat_reported_telemarketer;
                break;
            case NUISANCE:
                i = C1566R.C1568drawable.ic_cat_nuisance_gray;
                break;
            case PRISON:
                i = C1566R.C1568drawable.ic_cat_informational;
                break;
            default:
                i = C1566R.C1568drawable.ic_cat_unknown_grey;
                break;
        }
        return i;
    }

    @Override // com.privacystar.core.p011ui.util.caller.CallerContract.Manager
    public boolean shouldShowCallerIconBadge() {
        return true;
    }
}
