package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.CallStats;
import com.privacystar.core.data.model.CallStatsFields;
import com.privacystar.core.data.model.LogItemFields;
import com.privacystar.core.data.model.Offender;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0007\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nJ\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ&\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\fJ\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0006J\u001e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\f¨\u0006\u001a"}, m254d2 = {"Lcom/privacystar/core/data/model/helper/CallStatsRealm;", "", "()V", "addCallStat", "", "realm", "Lio/realm/Realm;", "categoryId", "", "number", "", LogItemFields.DATE, "Ljava/util/Date;", "getAllSorted", "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/CallStats;", "sort", "Lio/realm/Sort;", "getCategoryCount", "", "getCategoryCountBetweenDates", "id", "from", "to", "getCount", "getCountBetweenDates", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/CallStatsRealm.class */
public final class CallStatsRealm {
    public static final CallStatsRealm INSTANCE = new CallStatsRealm();

    private CallStatsRealm() {
    }

    public final void addCallStat(@NotNull Realm realm, int i, @NotNull String number) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(number, "number");
        addCallStat(realm, i, number, new Date());
    }

    public final void addCallStat(@NotNull Realm realm, int i, @NotNull String number, @NotNull Date date) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(number, "number");
        Intrinsics.checkParameterIsNotNull(date, "date");
        final CallStats callStats = new CallStats(i, number, date);
        realm.executeTransaction(new Realm.Transaction() { // from class: com.privacystar.core.data.model.helper.CallStatsRealm$addCallStat$1
            @Override // io.realm.Realm.Transaction
            public final void execute(Realm realm2) {
                realm2.copyToRealm((Realm) CallStats.this, new ImportFlag[0]);
            }
        });
    }

    public final void addCallStat(@NotNull Realm realm, @NotNull String number) {
        Integer categoryId;
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(number, "number");
        Offender offender = OffenderRealm.getOffender(realm, number);
        int intValue = (offender == null || (categoryId = offender.getCategoryId()) == null) ? -1 : categoryId.intValue();
        if (BlockListRealm.isCallerBlocked(realm, number)) {
            intValue = 0;
        }
        addCallStat(realm, intValue, number);
    }

    @NotNull
    public final RealmResults<CallStats> getAllSorted(@NotNull Realm realm, @NotNull Sort sort) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(sort, "sort");
        RealmResults<CallStats> sort2 = realm.where(CallStats.class).findAll().sort(CallStatsFields.OCCURRED, sort);
        Intrinsics.checkExpressionValueIsNotNull(sort2, "realm.where(CallStats::c…atsFields.OCCURRED, sort)");
        return sort2;
    }

    public final long getCategoryCount(@NotNull Realm realm, int i) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        return realm.where(CallStats.class).equalTo("categoryId", Integer.valueOf(i)).count();
    }

    public final long getCategoryCountBetweenDates(@NotNull Realm realm, int i, @NotNull Date from, @NotNull Date to) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(from, "from");
        Intrinsics.checkParameterIsNotNull(to, "to");
        return realm.where(CallStats.class).equalTo("categoryId", Integer.valueOf(i)).between(CallStatsFields.OCCURRED, from, to).count();
    }

    public final long getCount(@NotNull Realm realm) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        return realm.where(CallStats.class).count();
    }

    public final long getCountBetweenDates(@NotNull Realm realm, @NotNull Date from, @NotNull Date to) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(from, "from");
        Intrinsics.checkParameterIsNotNull(to, "to");
        return realm.where(CallStats.class).between(CallStatsFields.OCCURRED, from, to).count();
    }
}
