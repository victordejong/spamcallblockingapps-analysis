package com.google.android.datatransport.cct.internal;

import com.google.auto.value.AutoValue;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.util.List;
@AutoValue
@Encodable
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/BatchedLogRequest.class */
public abstract class BatchedLogRequest {
    public static BatchedLogRequest create(List<LogRequest> list) {
        return new AutoValue_BatchedLogRequest(list);
    }

    public static DataEncoder createDataEncoder() {
        return new JsonDataEncoderBuilder().configureWith(AutoBatchedLogRequestEncoder.CONFIG).ignoreNullValues(true).build();
    }

    @Encodable.Field(name = "logRequest")
    public abstract List<LogRequest> getLogRequests();
}
