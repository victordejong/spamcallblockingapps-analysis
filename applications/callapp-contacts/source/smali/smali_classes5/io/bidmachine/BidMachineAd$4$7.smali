.class final Lio/bidmachine/BidMachineAd$4$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$4;->processImpression()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/BidMachineAd$4;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd$4;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$4$7;->this$1:Lio/bidmachine/BidMachineAd$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 499
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$7;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$500(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$7;->this$1:Lio/bidmachine/BidMachineAd$4;

    const-string v1, "notify AdImpression"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$7;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$500(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4$7;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v1, v1, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-interface {v0, v1}, Lio/bidmachine/AdListener;->onAdImpression(Lio/bidmachine/IAd;)V

    :cond_0
    return-void
.end method
