package com.android.contacts.util;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.preference.PreferenceManager;
import android.util.Log;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/UpdateCountryService.class */
public class UpdateCountryService extends IntentService {
    private static final String ACTION_UPDATE_COUNTRY = "saveCountry";
    private static final String KEY_INTENT_LOCATION = "location";
    private static final String TAG = UpdateCountryService.class.getSimpleName();

    public UpdateCountryService() {
        super(TAG);
    }

    private String getCountryFromLocation(Context context, Location location) {
        String str;
        List<Address> fromLocation;
        try {
            fromLocation = new Geocoder(context).getFromLocation(location.getLatitude(), location.getLongitude(), 1);
        } catch (IOException e) {
            Log.w(TAG, "Exception occurred when getting geocoded country from location");
        }
        if (fromLocation != null && fromLocation.size() > 0) {
            str = fromLocation.get(0).getCountryCode();
            return str;
        }
        str = null;
        return str;
    }

    public static void updateCountry(Context context, Location location) {
        Intent intent = new Intent(context, UpdateCountryService.class);
        intent.setAction(ACTION_UPDATE_COUNTRY);
        intent.putExtra(KEY_INTENT_LOCATION, location);
        context.startService(intent);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (intent == null) {
            Log.d(TAG, "onHandleIntent: could not handle null intent");
        } else if (ACTION_UPDATE_COUNTRY.equals(intent.getAction())) {
            String countryFromLocation = getCountryFromLocation(getApplicationContext(), (Location) intent.getParcelableExtra(KEY_INTENT_LOCATION));
            if (countryFromLocation != null) {
                SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).edit();
                edit.putLong(CountryDetector.KEY_PREFERENCE_TIME_UPDATED, System.currentTimeMillis());
                edit.putString(CountryDetector.KEY_PREFERENCE_CURRENT_COUNTRY, countryFromLocation);
                edit.commit();
            }
        }
    }
}
