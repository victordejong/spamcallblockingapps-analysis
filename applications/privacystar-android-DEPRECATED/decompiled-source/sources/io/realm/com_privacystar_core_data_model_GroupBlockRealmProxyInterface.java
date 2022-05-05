package io.realm;

import com.privacystar.core.data.model.Operation;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_GroupBlockRealmProxyInterface.class */
public interface com_privacystar_core_data_model_GroupBlockRealmProxyInterface {
    boolean realmGet$blockActive();

    boolean realmGet$blockOffline();

    Operation realmGet$mOperation();

    String realmGet$name();

    String realmGet$number();

    void realmSet$blockActive(boolean z);

    void realmSet$blockOffline(boolean z);

    void realmSet$mOperation(Operation operation);

    void realmSet$name(String str);

    void realmSet$number(String str);
}
