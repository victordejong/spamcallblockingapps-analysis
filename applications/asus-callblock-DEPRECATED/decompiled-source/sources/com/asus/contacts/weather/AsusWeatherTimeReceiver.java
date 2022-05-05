package com.asus.contacts.weather;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.asus.contacts.weather.a;
import com.asus.updatesdk.cdn.CdnUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/weather/AsusWeatherTimeReceiver.class */
public class AsusWeatherTimeReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2754a = AsusWeatherTimeReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null) {
            Log.e(f2754a, "onReceive context is null");
        } else if (intent == null) {
            Log.e(f2754a, "onReceive intent is null");
        } else {
            String action = intent.getAction();
            Log.d(f2754a, "onReceive: action=" + action);
            if ("com.asus.weathertime.action.RESULT_QUERY_WEATHER".equalsIgnoreCase(action)) {
                intent.getStringExtra(CdnUtils.NODE_PACKAGE);
                intent.getStringExtra("search_choice");
                intent.getStringExtra("location");
                intent.getStringExtra("latitude");
                intent.getStringExtra("longitude");
                String stringExtra = intent.getStringExtra("condition");
                intent.getStringExtra("forecast");
                String stringExtra2 = intent.getStringExtra("city_id");
                ArrayList arrayList = new ArrayList();
                a.b bVar = new a.b();
                try {
                    bVar.i = ((JSONObject) ((JSONObject) ((JSONObject) new JSONArray(stringExtra).get(0)).get("RealFeelTemperature")).get("Metric")).getString("Value");
                    bVar.f = stringExtra2;
                    Log.d(f2754a, "onReceive: City id = " + bVar.f);
                    Log.d(f2754a, "onReceive: Real feel temp = " + bVar.i);
                    arrayList.add(bVar);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            } else if ("com.asus.contacts.weather.action.UPDATED_LISTENER".equalsIgnoreCase(action)) {
                Log.d(f2754a, "onReceive: updated ? " + intent.getBooleanExtra("success", false));
            } else {
                Log.d(f2754a, "onReceive: action not supported.");
            }
        }
    }
}
