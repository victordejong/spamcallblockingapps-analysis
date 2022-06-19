.class public abstract Lio/bidmachine/unified/UnifiedFullscreenAd;
.super Lio/bidmachine/unified/UnifiedAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/unified/UnifiedAd<",
        "Lio/bidmachine/unified/UnifiedFullscreenAdCallback;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedAd;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Z)V
    .locals 0

    return-void
.end method

.method public onFinished()V
    .locals 0

    return-void
.end method

.method public abstract show(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
.end method
