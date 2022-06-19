.class public interface abstract Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;,
        Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;
    }
.end annotation


# virtual methods
.method public abstract addFriendlyObstructions(Landroid/view/View;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;)V
.end method

.method public abstract finishAdSession()V
.end method

.method public abstract omSDKVersion()Ljava/lang/String;
.end method

.method public abstract omidJsServiceScript(Landroid/content/Context;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V
.end method

.method public abstract removeFriendlyObstructions(Landroid/view/View;)V
.end method

.method public abstract setTrackView(Landroid/view/View;)V
.end method
