package net.pubnative.lite.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.BatteryManager;
import android.os.Build;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import net.pubnative.lite.sdk.location.HyBidLocationManager;
import net.pubnative.lite.sdk.models.IdApp;
import net.pubnative.lite.sdk.models.IdBattery;
import net.pubnative.lite.sdk.models.IdDevice;
import net.pubnative.lite.sdk.models.IdGgl;
import net.pubnative.lite.sdk.models.IdLocation;
import net.pubnative.lite.sdk.models.IdModel;
import net.pubnative.lite.sdk.models.IdOs;
import net.pubnative.lite.sdk.models.IdPrivacy;
import net.pubnative.lite.sdk.models.IdUser;
import net.pubnative.lite.sdk.models.IdUserVendor;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.utils.PNCrypto;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/VgiIdManager.class */
public class VgiIdManager {
    private static final String KEY_VGI_ID = "VGI_id";
    private static final String PREFERENCES_VGI_ID = "net.pubnative.lite.vgiid";
    private static final String TAG = "VgiIdManager";
    private String mAppToken = HyBid.getAppToken();
    private final Context mContext;
    private IdModel mIdModel;
    private final SharedPreferences mPreferences;

    public VgiIdManager(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mPreferences = applicationContext.getSharedPreferences(PREFERENCES_VGI_ID, 0);
    }

    private List<IdApp> getApps(UserDataManager userDataManager, DeviceInfo deviceInfo) {
        ArrayList arrayList = new ArrayList();
        IdApp idApp = new IdApp();
        IdPrivacy idPrivacy = new IdPrivacy();
        idPrivacy.iab_ccpa = userDataManager.getIABUSPrivacyString();
        idPrivacy.tcfv2 = userDataManager.getIABGDPRConsentString();
        idPrivacy.lat = Boolean.valueOf(deviceInfo.limitTracking());
        idApp.bundle_id = HyBid.getBundleId();
        idApp.privacy = idPrivacy;
        arrayList.add(idApp);
        return arrayList;
    }

    private long getBatteryCapacity(Context context) {
        BatteryManager batteryManager;
        if (Build.VERSION.SDK_INT < 21 || (batteryManager = (BatteryManager) context.getSystemService("batterymanager")) == null) {
            return -1L;
        }
        Integer valueOf = Integer.valueOf(batteryManager.getIntProperty(1));
        Integer valueOf2 = Integer.valueOf(batteryManager.getIntProperty(4));
        if (valueOf.intValue() != Integer.MIN_VALUE && valueOf2.intValue() != Integer.MIN_VALUE) {
            return (valueOf.intValue() / valueOf2.intValue()) * 100;
        }
        return -1L;
    }

    private IdDevice getDevice(DeviceInfo deviceInfo) {
        IdDevice idDevice = new IdDevice();
        idDevice.f67073id = Build.ID;
        IdOs idOs = new IdOs();
        idOs.name = "Android";
        idOs.version = deviceInfo.getOSVersion();
        IdBattery idBattery = new IdBattery();
        Long valueOf = Long.valueOf(getBatteryCapacity(this.mContext));
        if (valueOf.longValue() != -1) {
            idBattery.capacity = String.valueOf(valueOf);
        }
        idBattery.charging = isBatteryCharging(this.mContext);
        idDevice.f67074os = idOs;
        idDevice.manufacture = Build.MANUFACTURER;
        idDevice.model = Build.MODEL;
        idDevice.brand = Build.BRAND;
        idDevice.battery = idBattery;
        return idDevice;
    }

    private List<IdUser> getUsers(DeviceInfo deviceInfo, HyBidLocationManager hyBidLocationManager) {
        ArrayList arrayList = new ArrayList();
        IdUser idUser = new IdUser();
        IdUserVendor idUserVendor = new IdUserVendor();
        IdGgl idGgl = new IdGgl();
        idGgl.GAID = deviceInfo.getAdvertisingId();
        idUserVendor.GGL = idGgl;
        ArrayList arrayList2 = new ArrayList();
        IdLocation idLocation = new IdLocation();
        if (hyBidLocationManager != null) {
            Location userLocation = hyBidLocationManager.getUserLocation();
            idLocation.lat = String.valueOf(userLocation.getLatitude());
            idLocation.lon = String.valueOf(userLocation.getLongitude());
            idLocation.accuracy = String.valueOf(userLocation.getAccuracy());
            idLocation.f67075ts = String.valueOf(userLocation.getTime());
        }
        arrayList2.add(idLocation);
        idUser.vendors = idUserVendor;
        idUser.locations = arrayList2;
        arrayList.add(idUser);
        return arrayList;
    }

    private Boolean isBatteryCharging(Context context) {
        BatteryManager batteryManager;
        return (Build.VERSION.SDK_INT < 23 || (batteryManager = (BatteryManager) context.getSystemService("batterymanager")) == null) ? null : Boolean.valueOf(batteryManager.isCharging());
    }

    public IdModel getVgiIdModel() {
        String string = this.mPreferences.getString(KEY_VGI_ID, null);
        IdModel idModel = null;
        if (!TextUtils.isEmpty(string)) {
            try {
                idModel = new IdModel(new JSONObject(PNCrypto.decryptString(string, this.mAppToken)));
            } catch (Exception e) {
                Logger.m628e(TAG, e.getMessage());
                idModel = null;
            }
        }
        return idModel;
    }

    public void init() {
        UserDataManager userDataManager = HyBid.getUserDataManager();
        DeviceInfo deviceInfo = HyBid.getDeviceInfo();
        HyBidLocationManager locationManager = HyBid.getLocationManager();
        IdModel idModel = new IdModel();
        this.mIdModel = idModel;
        idModel.apps = getApps(userDataManager, deviceInfo);
        this.mIdModel.device = getDevice(deviceInfo);
        this.mIdModel.users = getUsers(deviceInfo, locationManager);
        setVgiIdModel(this.mIdModel);
    }

    public void setVgiIdModel(IdModel idModel) {
        if (idModel != null) {
            try {
                String encryptString = PNCrypto.encryptString(idModel.toJson().toString(), this.mAppToken);
                SharedPreferences.Editor edit = this.mPreferences.edit();
                edit.putString(KEY_VGI_ID, encryptString);
                edit.apply();
            } catch (Exception e) {
                Logger.m628e(TAG, e.getMessage());
            }
        }
    }
}
