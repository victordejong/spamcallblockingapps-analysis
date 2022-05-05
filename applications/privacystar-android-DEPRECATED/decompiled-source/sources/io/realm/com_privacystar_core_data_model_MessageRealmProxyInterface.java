package io.realm;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_MessageRealmProxyInterface.class */
public interface com_privacystar_core_data_model_MessageRealmProxyInterface {
    String realmGet$batchId();

    Date realmGet$expiration();

    String realmGet$messageBody();

    String realmGet$messageSubtitle();

    String realmGet$messageTitle();

    boolean realmGet$read();

    Date realmGet$receivedDate();

    void realmSet$batchId(String str);

    void realmSet$expiration(Date date);

    void realmSet$messageBody(String str);

    void realmSet$messageSubtitle(String str);

    void realmSet$messageTitle(String str);

    void realmSet$read(boolean z);

    void realmSet$receivedDate(Date date);
}
