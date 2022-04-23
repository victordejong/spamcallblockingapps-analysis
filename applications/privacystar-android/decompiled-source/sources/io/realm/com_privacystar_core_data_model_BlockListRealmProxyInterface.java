package io.realm;

import com.privacystar.core.data.model.Operation;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockListRealmProxyInterface.class */
public interface com_privacystar_core_data_model_BlockListRealmProxyInterface {
    Date realmGet$added();

    boolean realmGet$blockActive();

    boolean realmGet$blockOffline();

    String realmGet$eventType();

    int realmGet$groupNameId();

    int realmGet$groupNameType();

    Operation realmGet$mOperation();

    String realmGet$name();

    boolean realmGet$namedParent();

    String realmGet$number();

    int realmGet$offenderFlags();

    void realmSet$added(Date date);

    void realmSet$blockActive(boolean z);

    void realmSet$blockOffline(boolean z);

    void realmSet$eventType(String str);

    void realmSet$groupNameId(int i);

    void realmSet$groupNameType(int i);

    void realmSet$mOperation(Operation operation);

    void realmSet$name(String str);

    void realmSet$namedParent(boolean z);

    void realmSet$number(String str);

    void realmSet$offenderFlags(int i);
}
