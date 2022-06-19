.class final Lio/bidmachine/BidMachineAd$4$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$4;->processLoadFail(Lio/bidmachine/utils/BMError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/BidMachineAd$4;

.field final synthetic val$error:Lio/bidmachine/utils/BMError;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd$4;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    iput-object p2, p0, Lio/bidmachine/BidMachineAd$4$3;->val$error:Lio/bidmachine/utils/BMError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 372
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$500(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    const-string v1, "notify AdLoadFailed"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$500(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v1, v1, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v2, p0, Lio/bidmachine/BidMachineAd$4$3;->val$error:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v1, v2}, Lio/bidmachine/AdListener;->onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V

    :cond_0
    return-void
.end method
