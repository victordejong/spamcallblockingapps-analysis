package com.freshchat.consumer.sdk.beans;

import com.freshchat.consumer.sdk.p057j.C1716k;
import e.m.e.d0.b;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/User.class */
public class User {
    public static final String DEVICE_META_APP_VERSION_CODE = "app_version_code";
    public static final String DEVICE_META_APP_VERSION_NAME = "app_version";
    public static final String DEVICE_META_MANUFACTURER = "manufacturer";
    public static final String DEVICE_META_MODEL = "model";
    public static final String DEVICE_META_OS_NAME = "os";
    public static final String DEVICE_META_OS_VERSION_CODE = "os_version_code";
    public static final String DEVICE_META_OS_VERSION_NAME = "os_version";
    public static final String DEVICE_META_SDK_VERSION_CODE = "sdk_version_code";
    public static final int NOTIFICATION_TYPE_ANDROID = 1;
    public static final int NOTIFICATION_TYPE_IPHONE = 2;
    public static final int USER_TYPE_AGENT = 2;
    public static final int USER_TYPE_MOBILE = 0;
    public static final int USER_TYPE_OWNER = 1;
    public static final int USER_TYPE_SYSTEM42_SERVICE_ACCOUNT = 4;
    private String alias;
    private String email;
    @b("identifier")
    private String externalId;
    private String firstName;
    @b("jwtUserAuthToken")
    private String jwtIdToken;
    private String lastName;
    private String locale;
    private String phone;
    private String phoneCountry;
    private String restoreId;
    private Map<String, String> meta = new HashMap();
    @b("deviceAndroidMeta")
    private Map<String, String> androidDeviceMeta = new HashMap();

    public String getAlias() {
        return this.alias;
    }

    public Map<String, String> getAndroidDeviceMeta() {
        return this.androidDeviceMeta;
    }

    public String getEmail() {
        return this.email;
    }

    public String getExternalId() {
        return this.externalId;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getJwtIdToken() {
        return this.jwtIdToken;
    }

    public String getLastName() {
        return this.lastName;
    }

    public String getLocale() {
        return this.locale;
    }

    public Map<String, String> getMeta() {
        return this.meta;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getPhoneCountry() {
        return this.phoneCountry;
    }

    public String getRestoreId() {
        return this.restoreId;
    }

    public User setAlias(String str) {
        this.alias = str;
        return this;
    }

    public User setAndroidDeviceMeta(Map<String, String> map) {
        this.androidDeviceMeta = map;
        return this;
    }

    public User setEmail(String str) {
        this.email = str;
        return this;
    }

    public User setExternalId(String str) {
        this.externalId = str;
        return this;
    }

    public User setFirstName(String str) {
        this.firstName = str;
        return this;
    }

    public User setJwtIdToken(String str) {
        this.jwtIdToken = str;
        return this;
    }

    public User setLastName(String str) {
        this.lastName = str;
        return this;
    }

    public User setLocale(String str) {
        this.locale = str;
        return this;
    }

    public User setMeta(Map<String, String> map) {
        this.meta.clear();
        if (C1716k.m39894d(map)) {
            this.meta.putAll(map);
        }
        return this;
    }

    public User setPhone(String str) {
        this.phone = str;
        return this;
    }

    public User setPhoneCountry(String str) {
        this.phoneCountry = str;
        return this;
    }

    public User setRestoreId(String str) {
        this.restoreId = str;
        return this;
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("User{", "alias='");
        C22128a.m8678P0(m8704I, this.alias, '\'', ", firstName='");
        C22128a.m8678P0(m8704I, this.firstName, '\'', ", lastName='");
        C22128a.m8678P0(m8704I, this.lastName, '\'', ", email='");
        C22128a.m8678P0(m8704I, this.email, '\'', ", phone='");
        C22128a.m8678P0(m8704I, this.phone, '\'', ", phoneCountry='");
        C22128a.m8678P0(m8704I, this.phoneCountry, '\'', ", externalId='");
        C22128a.m8678P0(m8704I, this.externalId, '\'', ", restoreId='");
        C22128a.m8678P0(m8704I, this.restoreId, '\'', ", androidDeviceMeta='");
        m8704I.append(this.androidDeviceMeta);
        m8704I.append('\'');
        m8704I.append(", meta=");
        m8704I.append(this.meta);
        m8704I.append('\'');
        m8704I.append(", locale=");
        C22128a.m8678P0(m8704I, this.locale, '\'', ", jwtIdToken=");
        return C22128a.m8630e(m8704I, this.jwtIdToken, '}');
    }
}
