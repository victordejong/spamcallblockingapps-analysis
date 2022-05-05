package io.realm;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallEventRealmProxyInterface.class */
public interface com_tmobile_services_nameid_model_CallEventRealmProxyInterface {
    Date realmGet$answerDate();

    boolean realmGet$answered();

    String realmGet$numberAsReceived();

    Date realmGet$ringDate();

    void realmSet$answerDate(Date date);

    void realmSet$answered(boolean z);

    void realmSet$numberAsReceived(String str);

    void realmSet$ringDate(Date date);
}
