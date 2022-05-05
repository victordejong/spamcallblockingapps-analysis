package io.realm;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockHistoryRealmProxyInterface.class */
public interface com_privacystar_core_data_model_BlockHistoryRealmProxyInterface {
    String realmGet$eventType();

    String realmGet$name();

    String realmGet$number();

    Date realmGet$time();

    Date realmGet$uploaded();

    void realmSet$eventType(String str);

    void realmSet$name(String str);

    void realmSet$number(String str);

    void realmSet$time(Date date);

    void realmSet$uploaded(Date date);
}
