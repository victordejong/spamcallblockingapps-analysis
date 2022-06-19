.class public final Lcom/facebook/ads/redexgen/X/Tn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ha;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/HX;,
        Lcom/facebook/ads/redexgen/X/HU;,
        Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$RetryAction;,
        Lcom/facebook/ads/redexgen/X/HW;,
        Lcom/facebook/ads/redexgen/X/HT;,
        Lcom/facebook/ads/redexgen/X/HV;,
        Lcom/facebook/ads/redexgen/X/HZ;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/HU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/HU<",
            "+",
            "Lcom/facebook/ads/redexgen/X/HV;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/io/IOException;

.field public final A02:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 55357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55358
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0T(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Ljava/util/concurrent/ExecutorService;

    .line 55359
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Tn;)Lcom/facebook/ads/redexgen/X/HU;
    .locals 0

    .line 55360
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/HU;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Tn;Lcom/facebook/ads/redexgen/X/HU;)Lcom/facebook/ads/redexgen/X/HU;
    .locals 0

    .line 55361
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/HU;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Tn;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 55362
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Ljava/io/IOException;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Tn;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 55363
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/HV;Lcom/facebook/ads/redexgen/X/HT;I)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/HV;",
            ">(TT;",
            "Lcom/facebook/ads/redexgen/X/HT<",
            "TT;>;I)J"
        }
    .end annotation

    .line 55364
    .local v5, "loadable":Lcom/facebook/ads/redexgen/X/HV;, "TT;"
    .local v6, "callback":Lcom/facebook/ads/redexgen/X/HT;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$Callback<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .line 55365
    .local v8, "looper":Landroid/os/Looper;
    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 55366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Ljava/io/IOException;

    .line 55367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 55368
    .local v2, "startTimeMs":J
    new-instance v2, Lcom/facebook/ads/redexgen/X/HU;

    move-object v3, p0

    move v7, p3

    move-object v6, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/HU;-><init>(Lcom/facebook/ads/redexgen/X/Tn;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/HV;Lcom/facebook/ads/redexgen/X/HT;IJ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/HU;->A07(J)V

    .line 55369
    return-wide v8

    .line 55370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A05()V
    .locals 2

    .line 55371
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/HU;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HU;->A08(Z)V

    .line 55372
    return-void
.end method

.method public final A06(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 55374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/HU;

    if-eqz v1, :cond_1

    .line 55375
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    iget p1, v1, Lcom/facebook/ads/redexgen/X/HU;->A03:I

    .line 55376
    :cond_0
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/HU;->A06(I)V

    .line 55377
    :cond_1
    return-void

    .line 55378
    :cond_2
    throw v0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/HW;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/HW;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55379
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/HU;

    if-eqz v1, :cond_0

    .line 55380
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HU;->A08(Z)V

    .line 55381
    :cond_0
    if-eqz p1, :cond_1

    .line 55382
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HW;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55383
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 55384
    return-void
.end method

.method public final A08()Z
    .locals 1

    .line 55385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/HU;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
