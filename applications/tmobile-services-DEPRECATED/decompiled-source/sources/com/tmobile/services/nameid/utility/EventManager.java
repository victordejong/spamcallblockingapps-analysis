package com.tmobile.services.nameid.utility;

import android.app.Application;
import android.content.Context;
import com.apptentive.android.sdk.Apptentive;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/EventManager.class */
public class EventManager {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.utility.EventManager$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/EventManager$1.class */
    public static /* synthetic */ class C18971 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14308a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallerSetting.Action.values().length];
            f14308a = iArr;
            try {
                iArr[CallerSetting.Action.BLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14308a[CallerSetting.Action.VOICEMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14308a[CallerSetting.Action.APPROVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14308a[CallerSetting.Action.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private EventManager() {
    }

    /* renamed from: a */
    public static void m5725a(Context context, String str) {
        Apptentive.addCustomDeviceData("devid", DeviceInfoUtils.m5762b(context));
        Apptentive.addCustomDeviceData("npanxx", StringParsingUtils.m5339a(PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN")));
        Apptentive.engage(context, str);
        LogUtil.m5632o("EventManager#fire", "Fired Apptentive event: " + str);
    }

    @NotNull
    /* renamed from: b */
    private static String m5724b() {
        return BuildUtils.m5851c() ? "ANDROID-CALL-MANAGER" : BuildUtils.m5849e() ? "ANDROID-CALL-MANAGER-METRO" : "ANDROID-SCAM-SHIELD-METRO-SIGNED";
    }

    @NotNull
    /* renamed from: c */
    private static String m5723c() {
        return BuildUtils.m5851c() ? "ac8f8bd1f780fc07022c2863a2658f35" : BuildUtils.m5849e() ? "b31c4402e9c6ef7ddba6a48748430332" : "378245ff00563cadfc71b53411efd2f3";
    }

    /* renamed from: d */
    public static void m5722d(Context context, ActivityItem activityItem) {
        if (activityItem.getCaller() == null) {
            return;
        }
        if (m5720f(activityItem.getControlNumber())) {
            LogUtil.m5632o("EventManager#handleCallEvent", "Call event has already been sent");
            return;
        }
        int bucketId = activityItem.getCaller().getBucketId();
        if (ActivityItem.Type.BLOCKED.getValue() == activityItem.getType()) {
            m5725a(context, "Call_Blocked");
        }
        if (CategorySetting.BucketId.NONE.getValue() != bucketId) {
            m5725a(context, "Category_Offender_Called");
            if (ActivityItem.Type.BLOCKED.getValue() == activityItem.getType() && (CategorySetting.BucketId.SCAM.getValue() == bucketId || CategorySetting.BucketId.CALL_BLOCKING.getValue() == bucketId)) {
                m5725a(context, "Scam_ Likely_Blocked");
            }
            if (ActivityItem.Type.BLOCKED.getValue() == activityItem.getType()) {
                MainApplication.m7553C("incoming_call_blocked", new String[]{"call_type"}, new String[]{String.valueOf(Caller.bucketIdToStringRes(bucketId))});
            } else if (ActivityItem.Type.VOICEMAIL.getValue() == activityItem.getType()) {
                MainApplication.m7553C("incoming_call_senttovm", new String[]{"call_type"}, new String[]{String.valueOf(Caller.bucketIdToStringRes(bucketId))});
            }
        } else if (ActivityItem.Type.BLOCKED.getValue() == activityItem.getType()) {
            m5725a(context, "User_Number_Blocked");
            MainApplication.m7553C("incoming_call_blocked", new String[]{"call_type"}, new String[]{"pnb"});
        } else if (ActivityItem.Type.VOICEMAIL.getValue() == activityItem.getType()) {
            m5725a(context, "User_Number_Sent_To_VM");
            MainApplication.m7553C("incoming_call_senttovm", new String[]{"call_type"}, new String[]{"pnb"});
        } else if (ActivityItem.Type.APPROVED.getValue() == activityItem.getType()) {
            m5725a(context, "User_Number_Allowed");
        }
        m5718h(activityItem.getControlNumber());
    }

    /* renamed from: e */
    public static void m5721e(UserPreference userPreference) {
        CallerSetting.Action fromValue = CallerSetting.Action.fromValue(userPreference.getAction());
        Context l = MainApplication.m7528l();
        if (l != null) {
            int i = C18971.f14308a[fromValue.ordinal()];
            if (i == 1) {
                m5725a(l, "Number_Added_To_Block_List");
            } else if (i == 2) {
                m5725a(l, "Number_Added_To_Send_To_VM_List");
            } else if (i == 3) {
                m5725a(l, "Number_Added_To_Always_Allow_List");
            }
        }
    }

    /* renamed from: f */
    public static boolean m5720f(int i) {
        return PreferenceUtils.m5388i("PREF_RECENT_CALL_EVENT_ARRAY").contains(String.valueOf(i));
    }

    /* renamed from: g */
    public static void m5719g(Application application) {
        String b = m5724b();
        String c = m5723c();
        LogUtil.m5632o("EventManager#register", "registering with key: " + b + ", and signature: " + c);
        Apptentive.register(application, b, c);
    }

    /* renamed from: h */
    public static void m5718h(int i) {
        List<String> i2 = PreferenceUtils.m5388i("PREF_RECENT_CALL_EVENT_ARRAY");
        if (i2.contains(String.valueOf(i))) {
            LogUtil.m5631p("EventManager#storeCallEventControlNum", "This call(" + i + ") has already been handled, this should not happen");
        }
        if (i2.size() + 1 > 10) {
            i2.remove(0);
        }
        i2.add(String.valueOf(i));
        PreferenceUtils.m5382o("PREF_RECENT_CALL_EVENT_ARRAY", i2);
    }
}
