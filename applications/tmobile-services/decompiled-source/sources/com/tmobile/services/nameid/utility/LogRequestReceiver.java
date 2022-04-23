package com.tmobile.services.nameid.utility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.CheckName;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.LogUtilItem;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.SearchedNumber;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import io.realm.Realm;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/LogRequestReceiver.class */
public class LogRequestReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static String f14329a = "======\n";

    /* renamed from: a */
    public static void m5660a(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("ActivityItem\n");
            Iterator<E> it = realm.m3053Q0(ActivityItem.class).m2918E().iterator();
            while (it.hasNext()) {
                ActivityItem activityItem = (ActivityItem) it.next();
                fileWriter.write(activityItem.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm ActivityItems crashed.", e);
        }
    }

    /* renamed from: b */
    public static void m5659b(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("Caller\n");
            Iterator<E> it = realm.m3053Q0(Caller.class).m2918E().iterator();
            while (it.hasNext()) {
                Caller caller = (Caller) it.next();
                fileWriter.write(caller.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm Callers crashed.", e);
        }
    }

    /* renamed from: c */
    public static void m5658c(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("CallerSetting\n");
            Iterator<E> it = realm.m3053Q0(CallerSetting.class).m2918E().iterator();
            while (it.hasNext()) {
                CallerSetting callerSetting = (CallerSetting) it.next();
                fileWriter.write(callerSetting.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm CallerSettings crashed.", e);
        }
    }

    /* renamed from: d */
    public static void m5657d(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("CategorySetting\n");
            Iterator<E> it = realm.m3053Q0(CategorySetting.class).m2918E().iterator();
            while (it.hasNext()) {
                CategorySetting categorySetting = (CategorySetting) it.next();
                fileWriter.write(categorySetting.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm CategorySettings crashed.", e);
        }
    }

    /* renamed from: e */
    public static void m5656e(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("CheckName\n");
            Iterator<E> it = realm.m3053Q0(CheckName.class).m2918E().iterator();
            while (it.hasNext()) {
                CheckName checkName = (CheckName) it.next();
                fileWriter.write(checkName.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm CheckName crashed.", e);
        }
    }

    /* renamed from: f */
    public static void m5655f(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("EventSummaryItem\n");
            Iterator<E> it = realm.m3053Q0(EventSummaryItem.class).m2918E().iterator();
            while (it.hasNext()) {
                EventSummaryItem eventSummaryItem = (EventSummaryItem) it.next();
                fileWriter.write(eventSummaryItem.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm EventSummaryItems crashed.", e);
        }
    }

    /* renamed from: g */
    public static void m5654g(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("LicenseResponseItem\n");
            Iterator<E> it = realm.m3053Q0(LicenseResponseItem.class).m2918E().iterator();
            while (it.hasNext()) {
                LicenseResponseItem licenseResponseItem = (LicenseResponseItem) it.next();
                fileWriter.write(licenseResponseItem.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm LicenseResponseItems crashed.", e);
        }
    }

    /* renamed from: h */
    public static void m5653h(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("LogItem\n");
            Iterator<E> it = realm.m3053Q0(LogItem.class).m2918E().iterator();
            while (it.hasNext()) {
                LogItem logItem = (LogItem) it.next();
                fileWriter.write(logItem.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm LogItems crashed.", e);
        }
    }

    /* renamed from: i */
    public static void m5652i(Realm realm, FileWriter fileWriter) {
        try {
            Iterator it = realm.m3053Q0(LogUtilItem.class).m2918E().m3090r("date").iterator();
            while (it.hasNext()) {
                LogUtilItem logUtilItem = (LogUtilItem) it.next();
                fileWriter.write(logUtilItem.getDate() + ":" + logUtilItem.getLogText() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm LogUtils crashed.", e);
        }
    }

    /* renamed from: j */
    public static void m5651j(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("MessageUserPreference\n");
            Iterator<E> it = realm.m3053Q0(MessageUserPreference.class).m2918E().iterator();
            while (it.hasNext()) {
                MessageUserPreference messageUserPreference = (MessageUserPreference) it.next();
                fileWriter.write(messageUserPreference.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm MessageUserPreferences crashed.", e);
        }
    }

    /* renamed from: k */
    public static void m5650k(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("SearchedNumber\n");
            Iterator<E> it = realm.m3053Q0(SearchedNumber.class).m2918E().iterator();
            while (it.hasNext()) {
                SearchedNumber searchedNumber = (SearchedNumber) it.next();
                fileWriter.write(searchedNumber.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm SearchedNumbers crashed.", e);
        }
    }

    /* renamed from: l */
    public static String m5649l() {
        StringBuilder sb = new StringBuilder();
        sb.append(f14329a);
        sb.append("SharedPreference dump\n");
        sb.append(f14329a);
        SharedPreferences f = PreferenceUtils.m5391f();
        if (f != null) {
            for (Map.Entry<String, ?> entry : f.getAll().entrySet()) {
                sb.append("\"");
                sb.append(entry.getKey());
                sb.append("\":");
                sb.append(entry.getValue().toString());
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    /* renamed from: m */
    public static void m5648m(Realm realm, FileWriter fileWriter) {
        try {
            fileWriter.write(f14329a);
            fileWriter.write("TmoUserStatus\n");
            Iterator<E> it = realm.m3053Q0(TmoUserStatus.class).m2918E().iterator();
            while (it.hasNext()) {
                TmoUserStatus tmoUserStatus = (TmoUserStatus) it.next();
                fileWriter.write(tmoUserStatus.toString() + "\n");
            }
        } catch (Exception e) {
            LogUtil.m5641f("LogRequestReceiver#", "Writing Realm TMO User Statuses crashed.", e);
        }
    }

    /* renamed from: n */
    public static boolean m5647n(File file) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(f14329a + "Realm dump\n");
            Realm G0 = Realm.m3064G0();
            try {
                m5648m(G0, fileWriter);
                m5660a(G0, fileWriter);
                m5659b(G0, fileWriter);
                m5658c(G0, fileWriter);
                m5657d(G0, fileWriter);
                m5656e(G0, fileWriter);
                m5655f(G0, fileWriter);
                m5654g(G0, fileWriter);
                m5651j(G0, fileWriter);
                m5650k(G0, fileWriter);
                m5653h(G0, fileWriter);
                fileWriter.write(m5649l());
                m5652i(G0, fileWriter);
                if (G0 != null) {
                    G0.close();
                }
                fileWriter.close();
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (IOException e) {
            LogUtil.m5641f("LogRequestReceiver", "error getting log", e);
            return false;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        LogUtil.m5632o("LogRequestReceiver#", "received message");
        LogUtil.m5632o("LogRequestReceiver#", "finished, no log sent");
    }
}
