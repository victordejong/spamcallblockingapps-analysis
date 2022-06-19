.class final Lio/bidmachine/BidMachineAd$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$4;->processDestroy()V
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

    .line 605
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$4$2;->this$1:Lio/bidmachine/BidMachineAd$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 608
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$2;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$2;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onDestroy()V

    .line 611
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$2;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->onDestroy()V

    return-void
.end method
