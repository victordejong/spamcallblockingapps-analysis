package com.callapp.contacts.manager;

import android.database.Cursor;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.framework.dao.SQLiteAssetHelper;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/AreaCodesDB.class */
public class AreaCodesDB extends SQLiteAssetHelper {

    /* renamed from: a */
    private static String f25586a = CallAppApplication.get().getApplicationInfo().dataDir + "/databases";

    /* renamed from: b */
    private static boolean f25587b;

    public AreaCodesDB() {
        super("areaCodesDB", null, 2);
        setForcedUpgradeVersion(2);
    }

    /* renamed from: a */
    public static void m28762a() {
        if (!f25587b) {
            try {
                f25587b = true;
                String m28703a = CallAppRemoteConfigManager.get().m28703a("AreaCodeDBUrl");
                if (!StringUtils.m26045b((CharSequence) m28703a) || isDataBaseExist()) {
                    CLog.m27611a(AreaCodesDB.class, "failed download area code database url is empty");
                } else if (HttpUtils.m26978a(m28703a, new File(f25586a, "areaCodesDB.zip")).isFullyDownloaded()) {
                    CLog.m27611a(AreaCodesDB.class, "finished download area code database");
                    try {
                        CLog.m27611a(AreaCodesDB.class, "deleted old  area code database ".concat(String.valueOf(CallAppApplication.get().deleteDatabase("areaCodes"))));
                    } catch (Exception e) {
                    }
                    f25587b = false;
                    return;
                } else {
                    CLog.m27611a(AreaCodesDB.class, "failed download area code database");
                }
                f25587b = false;
            } catch (Throwable th) {
                f25587b = false;
                throw th;
            }
        }
    }

    public static AreaCodesDB get() {
        return Singletons.get().getAreaCodesDB();
    }

    private static boolean isDataBaseExist() {
        try {
            return new File(f25586a, "areaCodesDB.zip").exists();
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: a */
    public final String m28761a(Phone phone) {
        if (StringUtils.m26059a((CharSequence) phone.getNDC())) {
            return null;
        }
        String substring = phone.m26095b().substring(0, 6);
        StringBuilder sb = new StringBuilder();
        Cursor cursor = null;
        try {
            Cursor rawQuery = getReadableDatabase().rawQuery("SELECT city,state FROM city_and_state_by_phone LEFT JOIN cities ON city_and_state_by_phone.city_id=cities.id LEFT JOIN states ON city_and_state_by_phone.state_id=states.id WHERE city_and_state_by_phone.phone=".concat(String.valueOf(substring)), null);
            if (rawQuery != null && rawQuery.moveToFirst()) {
                String string = rawQuery.getString(rawQuery.getColumnIndex("city"));
                String string2 = rawQuery.getString(rawQuery.getColumnIndex(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY));
                if (StringUtils.m26045b((CharSequence) string)) {
                    sb.append(string);
                    sb.append(",");
                }
                if (StringUtils.m26045b((CharSequence) string2)) {
                    cursor = rawQuery;
                    sb.append(string2);
                }
            }
            IoUtils.m27517a(rawQuery);
            return sb.toString();
        } catch (Throwable th) {
            IoUtils.m27517a(cursor);
            throw th;
        }
    }

    @Override // com.callapp.contacts.framework.dao.SQLiteAssetHelper
    public String getDBName() {
        return "areaCodesDB";
    }
}
