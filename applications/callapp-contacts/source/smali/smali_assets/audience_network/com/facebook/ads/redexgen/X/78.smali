.class public final Lcom/facebook/ads/redexgen/X/78;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExoPlayerCacheCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 2

    .line 15985
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/78;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15986
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/78;->A00:Ljava/util/concurrent/BlockingQueue;

    .line 15987
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XH;-><init>(Lcom/facebook/ads/redexgen/X/78;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V

    .line 15988
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15989
    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/78;->A00:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/78;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 15991
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/78;->A00:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/78;Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 0

    .line 15992
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/78;->A03(Lcom/facebook/ads/redexgen/X/7C;)V

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 7

    .line 15993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/78;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Q2;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Q2;

    move-result-object v6

    .line 15994
    .local p0, "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Q2;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/7C;->A08:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 15995
    .local p1, "uri":Landroid/net/Uri;
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/7C;->A00:J

    .line 15996
    .local v0, "preloadSizeBytes":J
    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 15997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/78;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0M(Landroid/content/Context;)J

    move-result-wide v3

    .line 15998
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/XI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XI;-><init>(Lcom/facebook/ads/redexgen/X/78;)V

    invoke-virtual {v6, v5, v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Q2;->A0F(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Q1;J)V

    .line 15999
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16000
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/78;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
