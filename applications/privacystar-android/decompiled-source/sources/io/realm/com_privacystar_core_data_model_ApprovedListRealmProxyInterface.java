package io.realm;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_ApprovedListRealmProxyInterface.class */
public interface com_privacystar_core_data_model_ApprovedListRealmProxyInterface {
    Date realmGet$added();

    String realmGet$number();

    Date realmGet$numberLastCached();

    long realmGet$updateTrigger();

    void realmSet$added(Date date);

    void realmSet$number(String str);

    void realmSet$numberLastCached(Date date);

    void realmSet$updateTrigger(long j);
}
