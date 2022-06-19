package io.bidmachine;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.core.Utils;
import io.bidmachine.models.ITargetingParams;
import io.bidmachine.models.RequestParams;
import io.bidmachine.utils.Gender;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/TargetingParams.class */
public final class TargetingParams extends RequestParams<TargetingParams> implements ITargetingParams<TargetingParams> {
    private Integer birthdayYear;
    private BlockedParams blockedParams;
    private String city;
    private String country;
    private Location deviceLocation;
    private String framework;
    private Gender gender;
    private Boolean isPaid;
    private String[] keywords;
    private String storeCategory;
    private String[] storeSubCategories;
    private String storeUrl;
    private String userId;
    private String zip;

    private void prepareBlockParams() {
        if (this.blockedParams == null) {
            this.blockedParams = new BlockedParams();
        }
    }

    @Override // io.bidmachine.models.IBlockedParams
    public final TargetingParams addBlockedAdvertiserDomain(String str) {
        prepareBlockParams();
        this.blockedParams.addBlockedAdvertiserDomain(str);
        return this;
    }

    @Override // io.bidmachine.models.IBlockedParams
    public final TargetingParams addBlockedAdvertiserIABCategory(String str) {
        prepareBlockParams();
        this.blockedParams.addBlockedAdvertiserIABCategory(str);
        return this;
    }

    @Override // io.bidmachine.models.IBlockedParams
    public final TargetingParams addBlockedApplication(String str) {
        prepareBlockParams();
        this.blockedParams.addBlockedApplication(str);
        return this;
    }

    public final void build(Context context, Context.App.Builder builder) {
        String packageName = context.getPackageName();
        if (packageName != null) {
            builder.setBundle(packageName);
        }
        String appVersion = Utils.getAppVersion(context);
        if (appVersion != null) {
            builder.setVer(appVersion);
        }
        String appName = Utils.getAppName(context);
        if (appName != null) {
            builder.setName(appName);
        }
        String str = this.storeUrl;
        if (str != null) {
            builder.setStoreurl(str);
        }
        Boolean bool = this.isPaid;
        builder.setPaid(bool != null && bool.booleanValue());
    }

    public final void build(Context.Geo.Builder builder) {
        String str = this.country;
        if (str != null) {
            builder.setCountry(str);
        }
        String str2 = this.city;
        if (str2 != null) {
            builder.setCity(str2);
        }
        String str3 = this.zip;
        if (str3 != null) {
            builder.setZip(str3);
        }
    }

    public final void build(Context.User.Builder builder) {
        String[] strArr;
        String str = this.userId;
        if (str != null) {
            builder.setId(str);
        }
        Integer num = this.birthdayYear;
        if (num != null) {
            builder.setYob(num.intValue());
        }
        Gender gender = this.gender;
        if (gender != null) {
            builder.setGender(gender.getOrtbValue());
        }
        String[] strArr2 = this.keywords;
        if (strArr2 != null && strArr2.length > 0) {
            StringBuilder sb = new StringBuilder();
            for (String str2 : this.keywords) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
            builder.setKeywords(sb.toString());
        }
        Context.Geo.Builder newBuilder = Context.Geo.newBuilder();
        build(newBuilder);
        C17869g.locationToGeo(newBuilder, null, false);
        builder.setGeo(newBuilder);
    }

    public final void fillAppExtension(Struct.Builder builder) {
        if (this.storeCategory != null) {
            builder.putFields("storecat", Value.newBuilder().setStringValue(this.storeCategory).build());
        }
        String[] strArr = this.storeSubCategories;
        if (strArr != null && strArr.length > 0) {
            ListValue.Builder newBuilder = ListValue.newBuilder();
            for (String str : this.storeSubCategories) {
                newBuilder.addValues(Value.newBuilder().setStringValue(str).build());
            }
            builder.putFields("storesubcat", Value.newBuilder().setListValue(newBuilder.build()).build());
        }
        if (this.framework != null) {
            builder.putFields("fmwname", Value.newBuilder().setStringValue(this.framework).build());
        }
        builder.putFields("apilevel", Value.newBuilder().setNumberValue(Build.VERSION.SDK_INT).build());
    }

    public final Integer getBirthdayYear() {
        return this.birthdayYear;
    }

    public final BlockedParams getBlockedParams() {
        return this.blockedParams;
    }

    public final String getCity() {
        return this.city;
    }

    public final String getCountry() {
        return this.country;
    }

    public final Location getDeviceLocation() {
        return this.deviceLocation;
    }

    public final Gender getGender() {
        return this.gender;
    }

    public final String[] getKeywords() {
        return this.keywords;
    }

    public final Boolean getPaid() {
        return this.isPaid;
    }

    public final String getStoreUrl() {
        return this.storeUrl;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final String getZip() {
        return this.zip;
    }

    public final void merge(TargetingParams targetingParams) {
        this.userId = (String) Utils.oneOf(this.userId, targetingParams.userId);
        this.gender = (Gender) Utils.oneOf(this.gender, targetingParams.gender);
        this.birthdayYear = (Integer) Utils.oneOf(this.birthdayYear, targetingParams.birthdayYear);
        this.keywords = (String[]) Utils.oneOf(this.keywords, targetingParams.keywords);
        this.country = (String) Utils.oneOf(this.country, targetingParams.country);
        this.city = (String) Utils.oneOf(this.city, targetingParams.city);
        this.zip = (String) Utils.oneOf(this.zip, targetingParams.zip);
        this.deviceLocation = (Location) Utils.oneOf(this.deviceLocation, targetingParams.deviceLocation);
        this.storeUrl = (String) Utils.oneOf(this.storeUrl, targetingParams.storeUrl);
        this.storeCategory = (String) Utils.oneOf(this.storeCategory, targetingParams.storeCategory);
        this.storeSubCategories = (String[]) Utils.oneOf(this.storeSubCategories, targetingParams.storeSubCategories);
        this.framework = (String) Utils.oneOf(this.framework, targetingParams.framework);
        this.isPaid = (Boolean) Utils.oneOf(this.isPaid, targetingParams.isPaid);
        if (targetingParams.blockedParams != null) {
            if (this.blockedParams == null) {
                this.blockedParams = new BlockedParams();
            }
            this.blockedParams.merge(targetingParams.blockedParams);
        }
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setBirthdayYear(Integer num) {
        if (num != null) {
            Utils.assertYear(num.intValue());
        }
        this.birthdayYear = num;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setCity(String str) {
        this.city = str;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setCountry(String str) {
        this.country = str;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setDeviceLocation(Location location) {
        this.deviceLocation = location;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setFramework(String str) {
        this.framework = str;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setGender(Gender gender) {
        this.gender = gender;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setKeywords(String... strArr) {
        this.keywords = strArr;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setPaid(Boolean bool) {
        this.isPaid = bool;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setStoreCategory(String str) {
        this.storeCategory = str;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setStoreSubCategories(String... strArr) {
        this.storeSubCategories = strArr;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setStoreUrl(String str) {
        this.storeUrl = str;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setUserId(String str) {
        this.userId = str;
        return this;
    }

    @Override // io.bidmachine.models.ITargetingParams
    public final TargetingParams setZip(String str) {
        this.zip = str;
        return this;
    }
}
