package com.privacystar.core.data.call.caller;

import com.privacystar.core.data.model.Offender;
import com.privacystar.core.data.model.helper.OffenderRealm;
import com.privacystar.core.util.NumbersUtil;
import hugo.weaving.DebugLog;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/caller/CallerHelper.class */
public class CallerHelper {
    private static CallerHelper instance;

    private CallerHelper() {
    }

    public static CallerHelper getInstance() {
        CallerHelper callerHelper;
        synchronized (CallerHelper.class) {
            try {
                if (instance == null) {
                    instance = new CallerHelper();
                }
                callerHelper = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return callerHelper;
    }

    @DebugLog
    public static void updateAllCallerOffenderCache(Realm realm) {
        Timber.m37d("Updating all managed Caller objects to latest Offender data.", new Object[0]);
        for (Caller caller : CallerFactory.getInstance().getAllCallers()) {
            Timber.m28v("Updating caller: %s", caller.getNumber());
            caller.updateFromLocalOffenderData(realm);
        }
    }

    @DebugLog
    public static void updateAllCallerOffenderCacheBulk(Realm realm) {
        Timber.m37d("Updating all managed Caller objects to latest Offender data in bulk.", new Object[0]);
        ArrayList arrayList = new ArrayList();
        Collection<Caller> allCallers = CallerFactory.getInstance().getAllCallers();
        for (Caller caller : allCallers) {
            Long numericPhoneNumber = NumbersUtil.getNumericPhoneNumber(caller.getNumber());
            if (numericPhoneNumber != null) {
                arrayList.add(numericPhoneNumber);
            }
        }
        RealmResults<Offender> offenders = OffenderRealm.getOffenders(realm, (Long[]) arrayList.toArray(new Long[arrayList.size()]));
        Iterator<Caller> it = allCallers.iterator();
        Iterator it2 = offenders.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Caller next = it.next();
            Timber.m28v("Updating caller: %s", next.getNumber());
            next.updateCachedOffenderData((Offender) it2.next());
        }
    }

    public Caller callerFromNumber(String str) {
        Caller caller = CallerFactory.getInstance().getCaller(str);
        caller.populateLocally();
        return caller;
    }
}
