.class public interface abstract Lio/bidmachine/protobuf/AdExtensionOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract containsCustomParams(Ljava/lang/String;)Z
.end method

.method public abstract getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.end method

.method public abstract getCloseButtonOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
.end method

.method public abstract getCompanionSkipoffset()I
.end method

.method public abstract getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.end method

.method public abstract getCountdownOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
.end method

.method public abstract getCustomParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomParamsCount()I
.end method

.method public abstract getCustomParamsMap()Ljava/util/Map;
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

.method public abstract getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
.end method

.method public abstract getEventCount()I
.end method

.method public abstract getEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
.end method

.method public abstract getEventOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIgnoresSafeAreaLayoutGuide()Z
.end method

.method public abstract getLoadSkipoffset()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPreload()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.end method

.method public abstract getProgressDuration()I
.end method

.method public abstract getProgressOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
.end method

.method public abstract getR1()Z
.end method

.method public abstract getR2()Z
.end method

.method public abstract getSkipoffset()I
.end method

.method public abstract getStoreUrl()Ljava/lang/String;
.end method

.method public abstract getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getUseNativeClose()Z
.end method

.method public abstract getViewabilityDurationThreshold()F
.end method

.method public abstract getViewabilityIgnoreWindowFocus()Z
.end method

.method public abstract getViewabilityPixelThreshold()F
.end method

.method public abstract getViewabilityTimeThreshold()I
.end method

.method public abstract hasCloseButton()Z
.end method

.method public abstract hasCountdown()Z
.end method

.method public abstract hasProgress()Z
.end method
