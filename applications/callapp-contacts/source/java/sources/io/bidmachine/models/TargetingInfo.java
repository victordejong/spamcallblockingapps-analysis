package io.bidmachine.models;

import android.location.Location;
import io.bidmachine.utils.Gender;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/models/TargetingInfo.class */
public interface TargetingInfo {
    String getCity();

    String getCountry();

    Location getDeviceLocation();

    Gender getGender();

    String[] getKeywords();

    String getStoreUrl();

    Integer getUserAge();

    Integer getUserBirthdayYear();

    String getUserId();

    String getZip();

    Boolean isPaid();
}
