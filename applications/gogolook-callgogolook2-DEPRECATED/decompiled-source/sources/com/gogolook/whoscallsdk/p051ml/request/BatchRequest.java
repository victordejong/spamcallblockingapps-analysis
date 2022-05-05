package com.gogolook.whoscallsdk.p051ml.request;

import com.gogolook.whoscallsdk.p051ml.request.Request;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/request/BatchRequest;", "Lcom/gogolook/whoscallsdk/ml/request/Request;", "builder", "Lcom/gogolook/whoscallsdk/ml/request/BatchRequest$Builder;", "(Lcom/gogolook/whoscallsdk/ml/request/BatchRequest$Builder;)V", "batchSize", "", "getBatchSize", "()I", "setBatchSize", "(I)V", "parallelRunning", "", "getParallelRunning", "()Z", "setParallelRunning", "(Z)V", "Builder", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: com.gogolook.whoscallsdk.ml.request.BatchRequest */
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/request/BatchRequest.class */
public final class BatchRequest extends Request {
    public int batchSize;
    public boolean parallelRunning;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u000e\u0012\u0004\u0012\u00020��\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0014¨\u0006\u0005"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/request/BatchRequest$Builder;", "Lcom/gogolook/whoscallsdk/ml/request/Request$Builder;", "Lcom/gogolook/whoscallsdk/ml/request/BatchRequest;", "()V", "buildInternal", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.request.BatchRequest$Builder */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/request/BatchRequest$Builder.class */
    public static final class Builder extends Request.Builder<Builder, BatchRequest> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.gogolook.whoscallsdk.p051ml.request.Request.Builder
        public BatchRequest buildInternal() {
            return new BatchRequest(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatchRequest(Builder builder) {
        super(builder.getInputData$whoscallSDK_ml_release(), builder.getModelType$whoscallSDK_ml_release(), builder.getRegion$whoscallSDK_ml_release(), builder.getCallback$whoscallSDK_ml_release());
        C15149k.m377b(builder, "builder");
        this.batchSize = builder.getBatchSize$whoscallSDK_ml_release() > 0 ? builder.getBatchSize$whoscallSDK_ml_release() : 64;
    }

    public final int getBatchSize() {
        return this.batchSize;
    }

    public final boolean getParallelRunning() {
        return this.parallelRunning;
    }

    public final void setBatchSize(int i) {
        this.batchSize = i;
    }

    public final void setParallelRunning(boolean z) {
        this.parallelRunning = z;
    }
}
