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

    /* renamed from: a  reason: collision with root package name */
    private static String f14791a = CallAppApplication.get().getApplicationInfo().dataDir + "/databases";

    /* renamed from: b  reason: collision with root package name */
    private static boolean f14792b;

    public AreaCodesDB() {
        super("areaCodesDB", null, 2);
        setForcedUpgradeVersion(2);
    }

    public static void a() {
        if (!f14792b) {
            try {
                f14792b = true;
                String a2 = CallAppRemoteConfigManager.get().a("AreaCodeDBUrl");
                if (!StringUtils.b((CharSequence) a2) || isDataBaseExist()) {
                    CLog.a(AreaCodesDB.class, "failed download area code database url is empty");
                } else if (HttpUtils.a(a2, new File(f14791a, "areaCodesDB.zip")).isFullyDownloaded()) {
                    CLog.a(AreaCodesDB.class, "finished download area code database");
                    try {
                        CLog.a(AreaCodesDB.class, "deleted old  area code database ".concat(String.valueOf(CallAppApplication.get().deleteDatabase("areaCodes"))));
                    } catch (Exception e) {
                    }
                    f14792b = false;
                    return;
                } else {
                    CLog.a(AreaCodesDB.class, "failed download area code database");
                }
                f14792b = false;
            } catch (Throwable th) {
                f14792b = false;
                throw th;
            }
        }
    }

    public static AreaCodesDB get() {
        return Singletons.get().getAreaCodesDB();
    }

    private static boolean isDataBaseExist() {
        try {
            return new File(f14791a, "areaCodesDB.zip").exists();
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX WARN: Finally extract failed */
    public final String a(Phone phone) {
        boolean a2 = StringUtils.a((CharSequence) phone.getNDC());
        Cursor cursor = null;
        if (a2) {
            return null;
        }
        String substring = phone.b().substring(0, 6);
        StringBuilder sb = new StringBuilder();
        try {
            Cursor rawQuery = getReadableDatabase().rawQuery("SELECT city,state FROM city_and_state_by_phone LEFT JOIN cities ON city_and_state_by_phone.city_id=cities.id LEFT JOIN states ON city_and_state_by_phone.state_id=states.id WHERE city_and_state_by_phone.phone=".concat(String.valueOf(substring)), null);
            if (rawQuery != null && rawQuery.moveToFirst()) {
                String string = rawQuery.getString(rawQuery.getColumnIndex("city"));
                String string2 = rawQuery.getString(rawQuery.getColumnIndex(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY));
                if (StringUtils.b((CharSequence) string)) {
                    sb.append(string);
                    sb.append(",");
                }
                if (StringUtils.b((CharSequence) string2)) {
                    cursor = rawQuery;
                    sb.append(string2);
                }
            }
            IoUtils.a(rawQuery);
            return sb.toString();
        } catch (Throwable th) {
            IoUtils.a(cursor);
            throw th;
        }
    }

    @Override // com.callapp.contacts.framework.dao.SQLiteAssetHelper
    public String getDBName() {
        return "areaCodesDB";
    }
}
