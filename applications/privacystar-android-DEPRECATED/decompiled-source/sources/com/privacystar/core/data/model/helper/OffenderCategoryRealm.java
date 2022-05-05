package com.privacystar.core.data.model.helper;

import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.OffenderCategory;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.Iterator;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/OffenderCategoryRealm.class */
public class OffenderCategoryRealm {
    private static String[] offenderTypeNames = new String[0];
    private static String[] staticOffenderTypeNames = PSApplication.context().getResources().getStringArray(C1566R.array.static_offender_category_names);

    public static void addOffenderCategories(Realm realm, final OffenderCategory[] offenderCategoryArr) {
        realm.executeTransaction(new Realm.Transaction(offenderCategoryArr) { // from class: com.privacystar.core.data.model.helper.OffenderCategoryRealm$$Lambda$1
            private final OffenderCategory[] arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = offenderCategoryArr;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                OffenderCategoryRealm.lambda$addOffenderCategories$1$OffenderCategoryRealm(this.arg$1, realm2);
            }
        });
        cacheOffenderTypeNames(realm);
    }

    public static void addOffenderCategory(Realm realm, final OffenderCategory offenderCategory) {
        realm.executeTransaction(new Realm.Transaction(offenderCategory) { // from class: com.privacystar.core.data.model.helper.OffenderCategoryRealm$$Lambda$0
            private final OffenderCategory arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = offenderCategory;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                OffenderCategoryRealm.addOffenderCategoryImpl(realm2, this.arg$1);
            }
        });
        cacheOffenderTypeNames(realm);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addOffenderCategoryImpl(Realm realm, OffenderCategory offenderCategory) {
        realm.copyToRealmOrUpdate((Realm) offenderCategory, new ImportFlag[0]);
    }

    private static void cacheOffenderTypeNames(Realm realm) {
        RealmResults sort = realm.where(OffenderCategory.class).findAll().sort("categoryId");
        Number max = realm.where(OffenderCategory.class).max("categoryId");
        int intValue = max != null ? max.intValue() : sort.size();
        if (intValue <= 0) {
            Timber.m37d("There seem to be no categories - probable binary offender read issue or unhandled race condition.", new Object[0]);
        }
        String[] strArr = new String[intValue + 1];
        Iterator it = sort.iterator();
        while (it.hasNext()) {
            OffenderCategory offenderCategory = (OffenderCategory) it.next();
            strArr[offenderCategory.getCategoryId().intValue()] = offenderCategory.getCategoryName();
        }
        offenderTypeNames = strArr;
    }

    public static String getOffenderTypeName(Realm realm, int i) {
        if (offenderTypeNames.length < i) {
            cacheOffenderTypeNames(realm);
        }
        return getOffenderTypeNameFromCache(i);
    }

    private static String getOffenderTypeNameFromCache(int i) {
        return (offenderTypeNames.length <= i || i <= 0) ? (i != 0 && staticOffenderTypeNames != null && staticOffenderTypeNames.length > i && i > 0) ? staticOffenderTypeNames[i - 1] : "" : offenderTypeNames[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$addOffenderCategories$1$OffenderCategoryRealm(OffenderCategory[] offenderCategoryArr, Realm realm) {
        for (OffenderCategory offenderCategory : offenderCategoryArr) {
            addOffenderCategoryImpl(realm, offenderCategory);
        }
    }
}
