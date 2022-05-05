package io.realm;

import java.util.Date;
/* renamed from: io.realm.com_tmobile_services_nameid_model_TmoUserStatusRealmProxyInterface */
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_TmoUserStatusRealmProxyInterface.class */
public interface AbstractC2164x6fb2031c {
    boolean realmGet$CNAMEligible();

    boolean realmGet$CNAMON();

    boolean realmGet$VMTTOFF();

    boolean realmGet$bundled();

    String realmGet$customerType();

    int realmGet$daysLeft();

    boolean realmGet$eligible();

    String realmGet$errorText();

    boolean realmGet$novm();

    boolean realmGet$pending();

    boolean realmGet$pendingCheckError();

    String realmGet$pnb();

    Boolean realmGet$scamBlock();

    Boolean realmGet$scamId();

    String realmGet$statusText();

    String realmGet$typeLetter();

    Date realmGet$updatedAt();

    String realmGet$vmtt();

    void realmSet$CNAMEligible(boolean z);

    void realmSet$CNAMON(boolean z);

    void realmSet$VMTTOFF(boolean z);

    void realmSet$bundled(boolean z);

    void realmSet$customerType(String str);

    void realmSet$daysLeft(int i);

    void realmSet$eligible(boolean z);

    void realmSet$errorText(String str);

    void realmSet$novm(boolean z);

    void realmSet$pending(boolean z);

    void realmSet$pendingCheckError(boolean z);

    void realmSet$pnb(String str);

    void realmSet$scamBlock(Boolean bool);

    void realmSet$scamId(Boolean bool);

    void realmSet$statusText(String str);

    void realmSet$typeLetter(String str);

    void realmSet$updatedAt(Date date);

    void realmSet$vmtt(String str);
}
