.class public interface abstract Lcom/pubmatic/sdk/common/base/POBAdBuilding;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;
    }
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
.method public abstract build(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setListener(Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener<",
            "TT;>;)V"
        }
    .end annotation
.end method
