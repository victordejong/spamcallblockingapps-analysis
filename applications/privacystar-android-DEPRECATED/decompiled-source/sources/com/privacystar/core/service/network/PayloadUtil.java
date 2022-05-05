package com.privacystar.core.service.network;

import com.privacystar.core.BuildConfig;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.call.call_event.LogItem;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.model.component.BasePayload;
import com.privacystar.core.service.network.model.component.CallLogObject;
import com.privacystar.core.service.network.model.component.UserObject;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.Text;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/PayloadUtil.class */
public class PayloadUtil {
    public static void applyBasePayload(BasePayload basePayload) {
        applyBasePayload(basePayload, System.currentTimeMillis());
    }

    public static void applyBasePayload(BasePayload basePayload, long j) {
        basePayload.setDeviceTimestamp(Long.valueOf(j));
        basePayload.setDeviceTimeZone(InformationUtil.getTimeZoneTZ());
        basePayload.setIsDstActive(Boolean.valueOf(InformationUtil.getDtsActive()));
    }

    public static UserObject generateUserPayload() {
        UserObject userObject = new UserObject();
        userObject.setToken(PreferenceUtil.getUserToken());
        userObject.setPackageName(PSApplication.context().getPackageName());
        userObject.setDeviceId(InformationUtil.getDevicePinOrNothing(PSApplication.context()));
        userObject.setApkVersion(Text.formatVersionNumber(BuildConfig.VERSION_NAME));
        return userObject;
    }

    public static List<CallLogObject> getCallHistory(String str, Long l) {
        String str2 = str;
        if (str == null) {
            str2 = PreferenceUtil.getLastComplaintNumber();
            l = Long.valueOf(PreferenceUtil.getLastComplaintTimestamp());
        }
        ArrayList arrayList = new ArrayList();
        for (LogItem logItem : CallHistoryHelper.getInstance().getCallHistory(str2)) {
            CallLogObject callLogObject = new CallLogObject();
            callLogObject.setTimestamp(Long.valueOf(logItem.getDate()));
            callLogObject.setDuration(Long.valueOf(logItem.getDuration()));
            callLogObject.setInitiatedComplaint(Boolean.valueOf(l.longValue() == logItem.getDate()));
            callLogObject.setCallType(logItem.getDirection().getValue());
            arrayList.add(callLogObject);
        }
        return arrayList;
    }

    public static boolean validateUserObject(UserObject userObject) {
        return userObject != null && !Text.isBlank(userObject.getToken()) && !Text.isBlank(userObject.getPackageName()) && !Text.isBlank(userObject.getDeviceId()) && !Text.isBlank(userObject.getApkVersion());
    }
}
