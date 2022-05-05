package com.privacystar.core.service.network.util;

import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.CallerId;
import com.privacystar.core.data.model.Offender;
import com.privacystar.core.data.model.helper.CallerIdRealm;
import com.privacystar.core.data.model.helper.OffenderRealm;
import com.privacystar.core.service.network.model.component.CallerIdObject;
import com.privacystar.core.service.network.model.response.LookupResponse;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/util/ObjectCreator.class */
public class ObjectCreator {
    public static List<CallerIdObject> createCallerIdObjectsFromNumbers(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new CallerIdObject().withCallerId(str));
        }
        return arrayList;
    }

    public static List<String> createNumbersFromCallerIdObjects(List<CallerIdObject> list) {
        ArrayList arrayList = new ArrayList();
        for (CallerIdObject callerIdObject : list) {
            arrayList.add(callerIdObject.getCallerId());
        }
        return arrayList;
    }

    public static CallerId storeCallerIdFromLookupResponse(Realm realm, LookupResponse lookupResponse, String str) {
        Long parseLong;
        CallerId callerId = new CallerId();
        if (lookupResponse.getSpamScore() == null) {
            Timber.m37d("Processing lookup response %s: this caller is a non-offender.", str);
            if (!Text.equalsIgnoreCase("Not found", lookupResponse.getName())) {
                callerId.setName(lookupResponse.getName());
            }
        } else {
            Timber.m37d("Processing lookup response %s: this caller is an offender.", str);
            callerId.setName(lookupResponse.getOffenderName());
            callerId.setCategoryId(lookupResponse.getCategoryId());
            callerId.setCategoryName(lookupResponse.getCategory());
            callerId.setSpamScore(lookupResponse.getSpamScore().intValue());
            callerId.setNumberOfBlocks(lookupResponse.getNumberOfBlocks().intValue());
            callerId.setNumberOfLookups(lookupResponse.getNumberOfBlocks().intValue());
            callerId.setNumberOfComplaints(lookupResponse.getNumberOfComplaints().intValue());
        }
        callerId.setExpiration(new Date(System.currentTimeMillis() + 7776000000L));
        callerId.setNumber(str);
        callerId.setCity(lookupResponse.getCity());
        callerId.setState(lookupResponse.getState());
        if (callerId.getCategoryId() > 0 && (parseLong = NumbersUtil.parseLong(callerId.getNumber())) != null) {
            Offender offender = new Offender();
            offender.setNumber(parseLong);
            offender.setCategoryId(Integer.valueOf(callerId.getCategoryId()));
            offender.setSpamScore(Integer.valueOf(callerId.getSpamScore()));
            offender.setOffenderFlags(Integer.valueOf(callerId.getOffenderFlags()));
            Timber.m28v("Propagating new caller id [%s] offender to offender realm.", str);
            OffenderRealm.addOrUpdateOffender(realm, offender);
        }
        CallerIdRealm.storeCallerId(realm, callerId);
        CallerFactory.getInstance().getCaller(str).updateCallerId(callerId);
        return callerId;
    }
}
