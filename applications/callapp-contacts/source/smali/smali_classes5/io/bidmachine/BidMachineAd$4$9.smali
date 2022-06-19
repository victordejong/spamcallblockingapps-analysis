.class final Lio/bidmachine/BidMachineAd$4$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$4;->processClosed()V
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

    .line 555
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$4$9;->this$1:Lio/bidmachine/BidMachineAd$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 558
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$9;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$500(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    instance-of v0, v0, Lio/bidmachine/AdFullScreenListener;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$9;->this$1:Lio/bidmachine/BidMachineAd$4;

    const-string v1, "notify AdClosed"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$9;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$500(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdFullScreenListener;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4$9;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v1, v1, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v2, p0, Lio/bidmachine/BidMachineAd$4$9;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v2, v2, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v2}, Lio/bidmachine/BidMachineAd;->access$1000(Lio/bidmachine/BidMachineAd;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lio/bidmachine/AdFullScreenListener;->onAdClosed(Lio/bidmachine/IAd;Z)V

    :cond_0
    return-void
.end method
