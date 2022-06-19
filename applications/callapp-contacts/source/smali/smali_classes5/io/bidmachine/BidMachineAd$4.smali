.class final Lio/bidmachine/BidMachineAd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/BidMachineAd;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 3

    .line 618
    invoke-static {}, Lio/bidmachine/core/Logger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->toStringShort()Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(demand: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lio/bidmachine/models/AuctionResult;->getDemandSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "%s: %s"

    .line 624
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final processClicked()V
    .locals 3

    .line 457
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$300(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Success:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$800(Lio/bidmachine/BidMachineAd;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v1}, Lio/bidmachine/BidMachineAd;->access$700(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdsType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/SessionManager;->getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lio/bidmachine/SessionAdParams;->addClick()V

    .line 464
    :cond_1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$802(Lio/bidmachine/BidMachineAd;Z)Z

    .line 465
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onClicked()V

    :cond_2
    const-string v0, "processClicked"

    .line 468
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 470
    new-instance v0, Lio/bidmachine/BidMachineAd$4$6;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$6;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processClosed()V
    .locals 3

    .line 543
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$300(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Success:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$1100(Lio/bidmachine/BidMachineAd;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$1102(Lio/bidmachine/BidMachineAd;Z)Z

    .line 550
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v1}, Lio/bidmachine/BidMachineAd;->access$1000(Lio/bidmachine/BidMachineAd;)Z

    move-result v1

    invoke-interface {v0, v1}, Lio/bidmachine/models/AdObject;->onClosed(Z)V

    .line 553
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processClosed ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v1}, Lio/bidmachine/BidMachineAd;->access$1000(Lio/bidmachine/BidMachineAd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/TrackEventType;->Close:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 555
    new-instance v0, Lio/bidmachine/BidMachineAd$4$9;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$9;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processDestroy()V
    .locals 3

    const-string v0, "destroy requested"

    .line 594
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$300(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$a;

    move-result-object v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Loading:Lio/bidmachine/BidMachineAd$a;

    if-ne v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    sget-object v2, Lio/bidmachine/utils/BMError;->Destroyed:Lio/bidmachine/utils/BMError;

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 598
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/TrackEventType;->Destroy:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 599
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Destroyed:Lio/bidmachine/BidMachineAd$a;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$302(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$a;)Lio/bidmachine/BidMachineAd$a;

    .line 600
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v1, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$1200(Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdRequest;)V

    .line 602
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->destroy()V

    .line 603
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iput-object v2, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 605
    :cond_1
    new-instance v0, Lio/bidmachine/BidMachineAd$4$2;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$2;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processExpired()V
    .locals 3

    .line 569
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$300(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Success:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->onExpired()V

    .line 575
    :cond_1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onExpired()V

    :cond_2
    const-string v0, "processExpired"

    .line 578
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Expired:Lio/bidmachine/BidMachineAd$a;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$302(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$a;)Lio/bidmachine/BidMachineAd$a;

    .line 580
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/TrackEventType;->Expired:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 581
    new-instance v0, Lio/bidmachine/BidMachineAd$4$10;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$10;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processFinished()V
    .locals 2

    .line 509
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$300(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Success:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$1000(Lio/bidmachine/BidMachineAd;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$1002(Lio/bidmachine/BidMachineAd;Z)Z

    .line 516
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onFinished()V

    :cond_2
    const-string v0, "processFinished"

    .line 519
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 523
    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getCreativeFormat()Lio/bidmachine/CreativeFormat;

    move-result-object v0

    sget-object v1, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    if-ne v0, v1, :cond_3

    .line 524
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    .line 525
    invoke-static {v1}, Lio/bidmachine/BidMachineAd;->access$700(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdsType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/SessionManager;->getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lio/bidmachine/SessionAdParams;->addCompletedVideo()V

    .line 529
    :cond_3
    new-instance v0, Lio/bidmachine/BidMachineAd$4$8;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$8;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processImpression()V
    .locals 3

    .line 484
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$300(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Success:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$900(Lio/bidmachine/BidMachineAd;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$902(Lio/bidmachine/BidMachineAd;Z)Z

    .line 491
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onImpression()V

    :cond_2
    const-string v0, "processImpression"

    .line 494
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/TrackEventType;->Impression:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 496
    new-instance v0, Lio/bidmachine/BidMachineAd$4$7;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$7;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processLoadFail(Lio/bidmachine/utils/BMError;)V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processLoadFail - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Failed:Lio/bidmachine/BidMachineAd$a;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$302(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$a;)Lio/bidmachine/BidMachineAd$a;

    .line 368
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1, p1}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 369
    new-instance v0, Lio/bidmachine/BidMachineAd$4$3;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/BidMachineAd$4$3;-><init>(Lio/bidmachine/BidMachineAd$4;Lio/bidmachine/utils/BMError;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processLoadSuccess()V
    .locals 3

    .line 346
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$300(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Loading:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "processLoadSuccess"

    .line 349
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Success:Lio/bidmachine/BidMachineAd$a;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$302(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$a;)Lio/bidmachine/BidMachineAd$a;

    .line 351
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 352
    new-instance v0, Lio/bidmachine/BidMachineAd$4$1;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$1;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processShowFail(Lio/bidmachine/utils/BMError;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onShowFailed()V

    :cond_0
    const-string v0, "processShowFail"

    .line 441
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1, p1}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 443
    new-instance v0, Lio/bidmachine/BidMachineAd$4$5;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/BidMachineAd$4$5;-><init>(Lio/bidmachine/BidMachineAd$4;Lio/bidmachine/utils/BMError;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processShown()V
    .locals 6

    .line 383
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$300(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Success:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$600(Lio/bidmachine/BidMachineAd;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$602(Lio/bidmachine/BidMachineAd;Z)Z

    .line 390
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->onShown()V

    .line 393
    :cond_2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onShown()V

    :cond_3
    const-string v0, "processShown"

    .line 396
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd$4;->log(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v1}, Lio/bidmachine/BidMachineAd;->access$700(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdsType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/SessionManager;->getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 398
    invoke-virtual {v0, v1}, Lio/bidmachine/SessionAdParams;->setLastBundle(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, v1}, Lio/bidmachine/SessionAdParams;->setLastAdDomain(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Lio/bidmachine/SessionAdParams;->addImpression()V

    .line 401
    iget-object v2, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v2, v2, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v2, :cond_8

    .line 402
    iget-object v2, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v2, v2, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-virtual {v2}, Lio/bidmachine/AdRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 404
    invoke-interface {v2}, Lio/bidmachine/models/AuctionResult;->getCreativeFormat()Lio/bidmachine/CreativeFormat;

    move-result-object v2

    sget-object v3, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    if-ne v2, v3, :cond_4

    .line 405
    invoke-virtual {v0}, Lio/bidmachine/SessionAdParams;->addVideoImpression()V

    .line 407
    :cond_4
    iget-object v2, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v2, v2, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    iget-object v2, v2, Lio/bidmachine/AdRequest;->adResult:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v2, :cond_8

    .line 409
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Ad;->getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 410
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 411
    invoke-virtual {v0, v4}, Lio/bidmachine/SessionAdParams;->setLastBundle(Ljava/lang/String;)V

    .line 415
    :cond_6
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 416
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 417
    invoke-virtual {v0, v3}, Lio/bidmachine/SessionAdParams;->setLastAdDomain(Ljava/lang/String;)V

    .line 423
    :cond_8
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v2, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v2, v1}, Lio/bidmachine/BidMachineAd;->access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 424
    new-instance v0, Lio/bidmachine/BidMachineAd$4$4;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$4;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
