package com.asus.contacts.weather;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/weather/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2755a = a.class.getSimpleName();

    /* renamed from: com.asus.contacts.weather.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/weather/a$a.class */
    public interface AbstractC0079a {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2756a = Uri.parse("content://com.asus.weathertime.provider/cityweather");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/weather/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public String f2757a;

        /* renamed from: b  reason: collision with root package name */
        public int f2758b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;
        public String j;
        public String k;
        public String l;
    }

    public static ArrayList<b> a(Context context) {
        ArrayList<b> arrayList;
        Cursor cursor = null;
        Cursor cursor2 = null;
        if (context == null) {
            Log.e(f2755a, "mContext is null");
            arrayList = null;
        } else if (context.getContentResolver() == null) {
            Log.e(f2755a, "ContentResolver is null");
            arrayList = null;
        } else {
            Log.d(f2755a, "getWeatherInfo");
            ArrayList<b> arrayList2 = new ArrayList<>();
            try {
                try {
                    Cursor query = context.getContentResolver().query(AbstractC0079a.f2756a, null, "currentLocation = 0", null, null);
                    if (query == null) {
                        Log.e(f2755a, "getWeatherInfo: Cursor is null");
                    } else if (query.getCount() > 0) {
                        while (query.moveToNext()) {
                            b bVar = new b();
                            bVar.f2757a = query.getString(query.getColumnIndex("_id"));
                            bVar.f2758b = query.getInt(query.getColumnIndex("currentLocation"));
                            bVar.c = query.getString(query.getColumnIndex("cityname"));
                            bVar.d = query.getString(query.getColumnIndex("adminArea"));
                            bVar.e = query.getString(query.getColumnIndex("country"));
                            bVar.f = query.getString(query.getColumnIndex("cityId"));
                            bVar.g = query.getString(query.getColumnIndex("weathertext"));
                            bVar.h = query.getString(query.getColumnIndex("temperature"));
                            bVar.i = query.getString(query.getColumnIndex("realfeel"));
                            bVar.j = query.getString(query.getColumnIndex("humidity"));
                            bVar.k = query.getString(query.getColumnIndex("currenttime"));
                            bVar.l = query.getString(query.getColumnIndex("lastupdate_long"));
                            arrayList2.add(bVar);
                        }
                    } else {
                        Log.e(f2755a, "getWeatherInfo: Cursor count is zero");
                    }
                    if (query != null) {
                        query.close();
                    }
                } catch (Exception e) {
                    Log.e(f2755a, "getWeatherInfo: Fail to query due to : " + e.toString());
                    if (0 != 0) {
                        cursor2.close();
                    }
                }
                arrayList = arrayList2;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }
        return arrayList;
    }
}
