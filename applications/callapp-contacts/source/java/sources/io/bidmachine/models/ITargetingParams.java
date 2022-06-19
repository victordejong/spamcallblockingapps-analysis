package io.bidmachine.models;

import android.location.Location;
import io.bidmachine.utils.Gender;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/models/ITargetingParams.class */
public interface ITargetingParams<SelfType> extends IBlockedParams<SelfType> {
    SelfType setBirthdayYear(Integer num);

    SelfType setCity(String str);

    SelfType setCountry(String str);

    SelfType setDeviceLocation(Location location);

    SelfType setFramework(String str);

    SelfType setGender(Gender gender);

    SelfType setKeywords(String... strArr);

    SelfType setPaid(Boolean bool);

    SelfType setStoreCategory(String str);

    SelfType setStoreSubCategories(String... strArr);

    SelfType setStoreUrl(String str);

    SelfType setUserId(String str);

    SelfType setZip(String str);
}
