.class public interface abstract Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/base/POBCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PMCommunicatorListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdDescriptorType::",
        "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/pubmatic/sdk/common/POBError;)V
.end method

.method public abstract onSuccess(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "TAdDescriptorType;>;)V"
        }
    .end annotation
.end method
