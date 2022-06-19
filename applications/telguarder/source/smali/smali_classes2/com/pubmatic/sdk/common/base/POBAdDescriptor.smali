.class public interface abstract Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BID_STATUS_OK:I = 0x1


# virtual methods
.method public abstract buildWithRefreshAndExpiryTimeout(II)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
.end method

.method public abstract getContentHeight()I
.end method

.method public abstract getContentWidth()I
.end method

.method public abstract getCreativeType()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRawBid()Lorg/json/JSONObject;
.end method

.method public abstract getRefreshInterval()I
.end method

.method public abstract getRenderableContent()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getTargetingInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isVideo()Z
.end method
