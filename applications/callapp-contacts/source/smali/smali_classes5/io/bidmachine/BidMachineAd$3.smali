.class final Lio/bidmachine/BidMachineAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/AdRequest$b<",
        "TAdRequestType;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/BidMachineAd;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$3;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestDestroyed(Lio/bidmachine/AdRequest;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$3;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, v0, :cond_0

    .line 332
    iget-object p1, p0, Lio/bidmachine/BidMachineAd$3;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->destroy()V

    :cond_0
    return-void
.end method
