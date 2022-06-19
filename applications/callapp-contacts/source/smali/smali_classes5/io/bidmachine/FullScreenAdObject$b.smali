.class final Lio/bidmachine/FullScreenAdObject$b;
.super Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedFullscreenAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/FullScreenAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/FullScreenAdObject;Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject$b;->this$0:Lio/bidmachine/FullScreenAdObject;

    .line 95
    invoke-direct {p0, p2}, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;-><init>(Lio/bidmachine/AdProcessCallback;)V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 1

    .line 115
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject$b;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processClosed()V

    return-void
.end method

.method public final onAdFinished()V
    .locals 1

    .line 110
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject$b;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processFinished()V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject$b;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V

    return-void
.end method

.method public final onAdShown()V
    .locals 1

    .line 105
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject$b;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processShown()V

    return-void
.end method
