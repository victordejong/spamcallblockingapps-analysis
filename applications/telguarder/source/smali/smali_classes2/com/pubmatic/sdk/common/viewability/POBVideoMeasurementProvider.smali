.class public interface abstract Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;,
        Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;,
        Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;,
        Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;
    }
.end annotation


# virtual methods
.method public abstract impressionOccurred()V
.end method

.method public abstract loaded(ZF)V
.end method

.method public abstract signalAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V
.end method

.method public abstract signalError(Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;Ljava/lang/String;)V
.end method

.method public abstract signalPlayerStateChange(Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;)V
.end method

.method public abstract start(FF)V
.end method

.method public abstract startAdSession(Landroid/view/View;Ljava/util/List;Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;",
            ">;",
            "Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;",
            ")V"
        }
    .end annotation
.end method
