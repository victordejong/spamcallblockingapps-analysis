.class public final synthetic Lcom/criteo/publisher/-$$Lambda$i$a$6UvFI8oWObhOjBpvh83l2oSJrP4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/criteo/publisher/BidResponseListener;

.field public final synthetic f$1:Lcom/criteo/publisher/Bid;


# direct methods
.method public synthetic constructor <init>(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/-$$Lambda$i$a$6UvFI8oWObhOjBpvh83l2oSJrP4;->f$0:Lcom/criteo/publisher/BidResponseListener;

    iput-object p2, p0, Lcom/criteo/publisher/-$$Lambda$i$a$6UvFI8oWObhOjBpvh83l2oSJrP4;->f$1:Lcom/criteo/publisher/Bid;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/criteo/publisher/-$$Lambda$i$a$6UvFI8oWObhOjBpvh83l2oSJrP4;->f$0:Lcom/criteo/publisher/BidResponseListener;

    iget-object v1, p0, Lcom/criteo/publisher/-$$Lambda$i$a$6UvFI8oWObhOjBpvh83l2oSJrP4;->f$1:Lcom/criteo/publisher/Bid;

    invoke-static {v0, v1}, Lcom/criteo/publisher/i$a;->lambda$6UvFI8oWObhOjBpvh83l2oSJrP4(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V

    return-void
.end method
