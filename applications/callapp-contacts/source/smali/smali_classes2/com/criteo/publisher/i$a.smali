.class final Lcom/criteo/publisher/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/model/AdUnit;

.field final synthetic b:Lcom/criteo/publisher/BidResponseListener;

.field final synthetic c:Lcom/criteo/publisher/i;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/i;Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/criteo/publisher/i$a;->c:Lcom/criteo/publisher/i;

    iput-object p2, p0, Lcom/criteo/publisher/i$a;->a:Lcom/criteo/publisher/model/AdUnit;

    iput-object p3, p0, Lcom/criteo/publisher/i$a;->b:Lcom/criteo/publisher/BidResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/criteo/publisher/Bid;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/criteo/publisher/i$a;->c:Lcom/criteo/publisher/i;

    invoke-static {v0}, Lcom/criteo/publisher/i;->b(Lcom/criteo/publisher/i;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/i$a;->a:Lcom/criteo/publisher/model/AdUnit;

    invoke-static {v1, p1}, Lcom/criteo/publisher/f;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 81
    iget-object v0, p0, Lcom/criteo/publisher/i$a;->c:Lcom/criteo/publisher/i;

    invoke-static {v0}, Lcom/criteo/publisher/i;->c(Lcom/criteo/publisher/i;)Lcom/criteo/publisher/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/i$a;->b:Lcom/criteo/publisher/BidResponseListener;

    new-instance v2, Lcom/criteo/publisher/-$$Lambda$i$a$6UvFI8oWObhOjBpvh83l2oSJrP4;

    invoke-direct {v2, v1, p1}, Lcom/criteo/publisher/-$$Lambda$i$a$6UvFI8oWObhOjBpvh83l2oSJrP4;-><init>(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V

    invoke-virtual {v0, v2}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V
    .locals 0

    .line 81
    invoke-interface {p0, p1}, Lcom/criteo/publisher/BidResponseListener;->onResponse(Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method public static synthetic lambda$6UvFI8oWObhOjBpvh83l2oSJrP4(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/criteo/publisher/i$a;->a(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lcom/criteo/publisher/i$a;->a(Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/s;)V
    .locals 3

    .line 66
    new-instance v0, Lcom/criteo/publisher/Bid;

    iget-object v1, p0, Lcom/criteo/publisher/i$a;->a:Lcom/criteo/publisher/model/AdUnit;

    invoke-interface {v1}, Lcom/criteo/publisher/model/AdUnit;->getAdUnitType()Lcom/criteo/publisher/m0/a;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/i$a;->c:Lcom/criteo/publisher/i;

    invoke-static {v2}, Lcom/criteo/publisher/i;->a(Lcom/criteo/publisher/i;)Lcom/criteo/publisher/h;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/criteo/publisher/Bid;-><init>(Lcom/criteo/publisher/m0/a;Lcom/criteo/publisher/h;Lcom/criteo/publisher/model/s;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/criteo/publisher/i$a;->a(Lcom/criteo/publisher/Bid;)V

    return-void
.end method
