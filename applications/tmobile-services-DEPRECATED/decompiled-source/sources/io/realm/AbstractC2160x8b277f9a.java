package io.realm;

import java.util.Date;
/* renamed from: io.realm.com_tmobile_services_nameid_model_LicenseResponseItemRealmProxyInterface */
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_LicenseResponseItemRealmProxyInterface.class */
public interface AbstractC2160x8b277f9a {
    boolean realmGet$adsAvailable();

    String realmGet$billingSoc();

    Date realmGet$lastUpdated();

    Date realmGet$licenseExpireDate();

    String realmGet$licenseFeatures();

    String realmGet$licenseState();

    Date realmGet$licenseTrialEnd();

    boolean realmGet$pending();

    boolean realmGet$pendingCheckError();

    String realmGet$token();

    Integer realmGet$tokenTtl();

    void realmSet$adsAvailable(boolean z);

    void realmSet$billingSoc(String str);

    void realmSet$lastUpdated(Date date);

    void realmSet$licenseExpireDate(Date date);

    void realmSet$licenseFeatures(String str);

    void realmSet$licenseState(String str);

    void realmSet$licenseTrialEnd(Date date);

    void realmSet$pending(boolean z);

    void realmSet$pendingCheckError(boolean z);

    void realmSet$token(String str);

    void realmSet$tokenTtl(Integer num);
}
