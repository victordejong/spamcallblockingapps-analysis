package io.realm;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CallerIdRealmProxyInterface.class */
public interface com_privacystar_core_data_model_CallerIdRealmProxyInterface {
    int realmGet$categoryId();

    String realmGet$categoryName();

    String realmGet$city();

    Date realmGet$expiration();

    String realmGet$name();

    String realmGet$number();

    int realmGet$numberOfBlocks();

    int realmGet$numberOfComplaints();

    int realmGet$numberOfLookups();

    int realmGet$offenderFlags();

    int realmGet$spamScore();

    String realmGet$state();

    void realmSet$categoryId(int i);

    void realmSet$categoryName(String str);

    void realmSet$city(String str);

    void realmSet$expiration(Date date);

    void realmSet$name(String str);

    void realmSet$number(String str);

    void realmSet$numberOfBlocks(int i);

    void realmSet$numberOfComplaints(int i);

    void realmSet$numberOfLookups(int i);

    void realmSet$offenderFlags(int i);

    void realmSet$spamScore(int i);

    void realmSet$state(String str);
}
