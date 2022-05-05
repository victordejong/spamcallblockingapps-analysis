package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.comm.ApptentiveHttpResponse;
import com.apptentive.android.sdk.model.JsonPayload;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/PayloadTypeSender.class */
interface PayloadTypeSender<T extends JsonPayload> {
    ApptentiveHttpResponse sendPayload(T t);
}
