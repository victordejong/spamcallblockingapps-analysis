package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.data.model.helper.CallStatsRealm;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.blocking.CallBlockingUtil;
import com.privacystar.core.util.OffenderUtil;
import io.realm.Realm;
import java.util.Date;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/debug/actions/AddYearBlockStats;", "Lcom/privacystar/core/ui/debug/DebugAction;", "()V", "getTitle", "", "onPerformAction", "", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.actions.AddYearBlockStats */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/AddYearBlockStats.class */
public final class AddYearBlockStats extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getTitle() {
        return "Add year of block call stats";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Toast.makeText(context, "Adding dummy block data", 0).show();
        long currentTimeMillis = System.currentTimeMillis();
        long currentTimeMillis2 = System.currentTimeMillis();
        Integer[] numArr = {0, Integer.valueOf(OffenderUtil.EOffenderCategory.SCAM_LIKELY.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.NUISANCE.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.NON_PROFIT.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.TELEMARKETER.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.DEBT_COLLECTOR.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.PRISON.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.GENERAL_SURVEY.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.POLITICAL.getValue())};
        for (int i = 0; i <= 250; i++) {
            int nextInt = new Random(System.currentTimeMillis()).nextInt(numArr.length);
            Date date = new Date(ThreadLocalRandom.current().nextLong(currentTimeMillis - 31536000000L, currentTimeMillis2));
            PSActivity activity = getActivity();
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.PSActivity");
            }
            Realm realm = activity.getRealm();
            CallStatsRealm callStatsRealm = CallStatsRealm.INSTANCE;
            Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
            callStatsRealm.addCallStat(realm, numArr[nextInt].intValue(), "15015551234", date);
            CallBlockingUtil.handleCallBlockMilestoneMessage(realm);
        }
    }
}
