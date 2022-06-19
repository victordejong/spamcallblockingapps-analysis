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


# static fields
.field public static A02:[Ljava/lang/String;


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
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/78;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 2

    .line 16074
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/78;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16075
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/78;->A00:Ljava/util/concurrent/BlockingQueue;

    .line 16076
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wo;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wo;-><init>(Lcom/facebook/ads/redexgen/X/78;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V

    .line 16077
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16078
    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/78;->A00:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/78;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 16080
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/78;->A00:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7jJhBTWGH0LDSiSMas5DEAjEyHq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CtTGgZNRezW7i9GWNvkHH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CByZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "m89BD3ZeHIlZ0Aje1iZdoLzR15Sq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AlrAJjbZaXGyoMLkdANI7n4bCYP3q54O"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nxZQb0zIIv1geRuauiaa6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qn3n"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WuC8xhhzkuSZmaFpESBmI138kbXbRVBD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/78;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/78;Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 0

    .line 16081
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/78;->A04(Lcom/facebook/ads/redexgen/X/7C;)V

    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 7

    .line 16082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/78;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Px;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Px;

    move-result-object v4

    .line 16083
    .local p0, "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Px;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/7C;->A08:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 16084
    .local p1, "uri":Landroid/net/Uri;
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/7C;->A00:J

    .line 16085
    .local v0, "preloadSizeBytes":J
    const-wide/16 v5, -0x1

    cmp-long v0, v1, v5

    if-nez v0, :cond_1

    .line 16086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/78;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/78;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/78;->A02:[Ljava/lang/String;

    const-string v1, "6EoNPMnFweKtJwVrk47B5gMgIdtt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "2H4kHEItY9IoTKz5crJQjEehueA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/J4;->A0M(Landroid/content/Context;)J

    move-result-wide v1

    .line 16087
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wn;-><init>(Lcom/facebook/ads/redexgen/X/78;)V

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Px;->A0F(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Pw;J)V

    .line 16088
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

    .line 16089
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/78;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
