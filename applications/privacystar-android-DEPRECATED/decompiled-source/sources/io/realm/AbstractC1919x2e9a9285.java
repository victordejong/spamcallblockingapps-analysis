package io.realm;

import com.privacystar.core.data.model.PendingBulkLookupNumber;
/* renamed from: io.realm.com_privacystar_core_data_model_PendingBulkLookupRealmProxyInterface */
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PendingBulkLookupRealmProxyInterface.class */
public interface AbstractC1919x2e9a9285 {
    RealmList<PendingBulkLookupNumber> realmGet$queriedNumbers();

    String realmGet$statusId();

    void realmSet$queriedNumbers(RealmList<PendingBulkLookupNumber> realmList);

    void realmSet$statusId(String str);
}
