package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.model.Payload;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/PayloadStore.class */
interface PayloadStore {
    void addPayload(Payload payload);

    void deleteAllPayloads();

    void deletePayload(String str);
}
