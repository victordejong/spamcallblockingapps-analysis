package com.android.contacts.util;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationManager;
import android.preference.PreferenceManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.e.a;
import com.android.vcard.VCardConfig;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/CountryDetector.class */
public class CountryDetector {
    private static final long DISTANCE_BETWEEN_UPDATES_METERS = 5000;
    public static final String KEY_PREFERENCE_CURRENT_COUNTRY = "preference_current_country";
    public static final String KEY_PREFERENCE_TIME_UPDATED = "preference_time_updated";
    private static final String TAG = "CountryDetector";
    private static final long TIME_BETWEEN_UPDATES_MS = 43200000;
    private static CountryDetector sInstance;
    private final String DEFAULT_COUNTRY_ISO;
    private final Context mContext;
    private final LocaleProvider mLocaleProvider;
    private final LocationManager mLocationManager;
    private final TelephonyManager mTelephonyManager;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/CountryDetector$LocaleProvider.class */
    public static class LocaleProvider {
        public Locale getDefaultLocale() {
            return Locale.getDefault();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/CountryDetector$LocationChangedReceiver.class */
    public static class LocationChangedReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.hasExtra("location")) {
                UpdateCountryService.updateCountry(context, (Location) intent.getExtras().get("location"));
            }
        }
    }

    private CountryDetector(Context context) {
        this(context, (TelephonyManager) context.getSystemService("phone"), (LocationManager) context.getSystemService("location"), new LocaleProvider());
    }

    private CountryDetector(Context context, TelephonyManager telephonyManager, LocationManager locationManager, LocaleProvider localeProvider) {
        this.DEFAULT_COUNTRY_ISO = "US";
        this.mTelephonyManager = telephonyManager;
        this.mLocationManager = locationManager;
        this.mLocaleProvider = localeProvider;
        this.mContext = context;
        registerForLocationUpdates(context, this.mLocationManager);
    }

    private CountryDetector(Context context, TelephonyManager telephonyManager, LocaleProvider localeProvider) {
        this.DEFAULT_COUNTRY_ISO = "US";
        this.mTelephonyManager = telephonyManager;
        this.mLocaleProvider = localeProvider;
        this.mContext = context;
        this.mLocationManager = null;
    }

    public static CountryDetector getInstance(Context context) {
        CountryDetector countryDetector;
        synchronized (CountryDetector.class) {
            try {
                if (sInstance == null) {
                    a aVar = new a(context);
                    if (!a.a()) {
                        sInstance = new CountryDetector(context.getApplicationContext());
                    } else if (aVar.b()) {
                        sInstance = new CountryDetector(context.getApplicationContext());
                    } else {
                        sInstance = new CountryDetector(context, (TelephonyManager) context.getSystemService("phone"), new LocaleProvider());
                    }
                }
                countryDetector = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return countryDetector;
    }

    private String getLocaleBasedCountryIso() {
        Locale defaultLocale = this.mLocaleProvider.getDefaultLocale();
        return defaultLocale != null ? defaultLocale.getCountry() : null;
    }

    private String getLocationBasedCountryIso() {
        String str = null;
        if (Geocoder.isPresent()) {
            str = !PermissionsUtil.hasLocationPermissions(this.mContext) ? null : PreferenceManager.getDefaultSharedPreferences(this.mContext).getString(KEY_PREFERENCE_CURRENT_COUNTRY, null);
        }
        return str;
    }

    private String getNetworkBasedCountryIso() {
        return this.mTelephonyManager.getNetworkCountryIso();
    }

    private String getSimBasedCountryIso() {
        return this.mTelephonyManager.getSimCountryIso();
    }

    private boolean isNetworkCountryCodeAvailable() {
        boolean z = true;
        if (this.mTelephonyManager.getPhoneType() != 1) {
            z = false;
        }
        return z;
    }

    public static void registerForLocationUpdates(Context context, LocationManager locationManager) {
        if (locationManager == null) {
            Log.w(TAG, "LocationManager is null, not registering for location updates.");
        } else if (!PermissionsUtil.hasLocationPermissions(context)) {
            Log.w(TAG, "No location permissions, not registering for location updates.");
        } else if (Geocoder.isPresent()) {
            locationManager.requestLocationUpdates("passive", TIME_BETWEEN_UPDATES_MS, 5000.0f, PendingIntent.getBroadcast(context, 0, new Intent(context, LocationChangedReceiver.class), VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS));
        }
    }

    public String getCurrentCountryIso() {
        String str = null;
        if (isNetworkCountryCodeAvailable()) {
            str = getNetworkBasedCountryIso();
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = getLocationBasedCountryIso();
        }
        String str3 = str2;
        if (TextUtils.isEmpty(str2)) {
            str3 = getSimBasedCountryIso();
        }
        String str4 = str3;
        if (TextUtils.isEmpty(str3)) {
            str4 = getLocaleBasedCountryIso();
        }
        String str5 = str4;
        if (TextUtils.isEmpty(str4)) {
            str5 = "US";
        }
        return str5.toUpperCase(Locale.US);
    }
}
