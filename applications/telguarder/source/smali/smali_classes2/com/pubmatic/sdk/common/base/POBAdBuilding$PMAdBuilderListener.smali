.class public interface abstract Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/base/POBAdBuilding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PMAdBuilderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract adBuilderOnError(Lcom/pubmatic/sdk/common/POBError;)V
.end method

.method public abstract adBuilderOnSuccess(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "TT;>;)V"
        }
    .end annotation
.end method
