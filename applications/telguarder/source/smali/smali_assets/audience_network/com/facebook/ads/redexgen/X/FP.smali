.class public final Lcom/facebook/ads/redexgen/X/FP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FO;
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/FC;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:J

.field public final A03:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/FO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FP;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 32506
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/FP;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/FC;J)V

    .line 32507
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/FC;J)V
    .locals 0
    .param p3    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/FO;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/FC;",
            "J)V"
        }
    .end annotation

    .line 32508
    .local p1, "listenerAndHandlers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/facebook/ads/internal/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32509
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32510
    iput p2, p0, Lcom/facebook/ads/redexgen/X/FP;->A00:I

    .line 32511
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FP;->A01:Lcom/facebook/ads/redexgen/X/FC;

    .line 32512
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/FP;->A02:J

    .line 32513
    return-void
.end method

.method private A00(J)J
    .locals 5

    .line 32514
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v3

    .line 32515
    .local p0, "mediaTimeMs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v3, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A02:J

    add-long/2addr v0, v3

    goto :goto_0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pGqYmmz8hpdDtDwa37ndY0OCUYcRdVci"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jV6iyVpQelCdJrdY4wlcvfb2LvNnAU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qRmOQU10vkgoGxeTpvp4Ib2vt6qrUd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NX9759ND3NsaLoF9jRykAkL09lRxlKWy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FXnXIZoyjkddDOE8mhSRDa3dmNw979cM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sYKkIeuB4b0NJbnbyWLbcVWES"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Pc2134kgkP4tpMeDLIETnCoPGBzovIEU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gMxLabgGDC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FP;->A04:[Ljava/lang/String;

    return-void
.end method

.method private A02(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 32516
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 32517
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 32518
    :goto_0
    return-void

    .line 32519
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final A03(ILcom/facebook/ads/redexgen/X/FC;J)Lcom/facebook/ads/redexgen/X/FP;
    .locals 6
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 32520
    new-instance v0, Lcom/facebook/ads/redexgen/X/FP;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-wide v4, p3

    move-object v3, p2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/FP;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/FC;J)V

    return-object v0
.end method

.method public final A04()V
    .locals 4

    .line 32521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A01:Lcom/facebook/ads/redexgen/X/FC;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 32522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FO;

    .line 32523
    .local v0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    .line 32524
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/FS;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FO;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FF;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/FF;-><init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FP;->A02(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32525
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/FS;
    .end local v0
    goto :goto_1

    .line 32526
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32527
    :cond_1
    return-void
.end method

.method public final A05()V
    .locals 4

    .line 32528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A01:Lcom/facebook/ads/redexgen/X/FC;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 32529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FO;

    .line 32530
    .local v0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    .line 32531
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/FS;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FO;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FG;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/FG;-><init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FP;->A02(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32532
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/FS;
    .end local v0
    goto :goto_1

    .line 32533
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32534
    :cond_1
    return-void
.end method

.method public final A06()V
    .locals 4

    .line 32535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A01:Lcom/facebook/ads/redexgen/X/FC;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 32536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FO;

    .line 32537
    .local v0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    .line 32538
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/FS;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FO;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FL;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/FL;-><init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FP;->A02(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32539
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/FS;
    .end local v0
    goto :goto_1

    .line 32540
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32541
    :cond_1
    return-void
.end method

.method public final A07(ILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 12
    .param p2    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32542
    new-instance v2, Lcom/facebook/ads/redexgen/X/FR;

    .line 32543
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/FP;->A00(J)J

    move-result-wide v8

    const/4 v3, 0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v7, p4

    move v6, p3

    move-object v5, p2

    move v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/facebook/ads/redexgen/X/FR;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 32544
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/FP;->A0D(Lcom/facebook/ads/redexgen/X/FR;)V

    .line 32545
    return-void
.end method

.method public final A08(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/FS;)V
    .locals 2

    .line 32546
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 32547
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FO;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/FO;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/FS;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 32548
    return-void

    .line 32549
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 4

    .line 32550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FO;

    .line 32551
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    .line 32552
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/FS;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FO;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FJ;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FJ;-><init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FP;->A02(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32553
    .end local p1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/FS;
    goto :goto_0

    .line 32554
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 4

    .line 32555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FO;

    .line 32556
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    .line 32557
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/FS;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FO;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FI;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FI;-><init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FP;->A02(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32558
    .end local p1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/FS;
    goto :goto_0

    .line 32559
    :cond_0
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 4

    .line 32560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FO;

    .line 32561
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    .line 32562
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/FS;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FO;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FH;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FH;-><init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FP;->A02(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32563
    .end local p1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/FS;
    goto :goto_0

    .line 32564
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V
    .locals 9

    .line 32565
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FO;

    .line 32566
    .local v0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    .line 32567
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/FS;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FO;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/FK;

    move-object v3, p0

    move v8, p4

    move-object v7, p3

    move-object v6, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/FK;-><init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/FP;->A02(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32568
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/FS;
    .end local v0
    goto :goto_0

    .line 32569
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 4

    .line 32570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FO;

    .line 32571
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    .line 32572
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/FS;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FO;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FN;

    invoke-direct {v0, p0, v2, p1}, Lcom/facebook/ads/redexgen/X/FN;-><init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;Lcom/facebook/ads/redexgen/X/FR;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FP;->A02(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32573
    .end local p1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/FS;
    goto :goto_0

    .line 32574
    :cond_0
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/FS;)V
    .locals 5

    .line 32575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/FP;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/FP;->A04:[Ljava/lang/String;

    const-string v1, "dBDnOTIBAol3YyvMsgnPSWs8BvvI7T"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "OypMOrjC3t4Ps185lmhVHzyVWp2fTt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/FO;

    .line 32576
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FO;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    if-ne v0, p1, :cond_0

    .line 32577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32578
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32579
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/FQ;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-wide/from16 v15, p11

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/FQ;-><init>(Lcom/facebook/ads/redexgen/X/HM;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/FR;

    .line 32580
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FP;->A00(J)J

    move-result-wide v9

    .line 32581
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FP;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move/from16 v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/FR;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 32582
    invoke-virtual {v0, v13, v3}, Lcom/facebook/ads/redexgen/X/FP;->A0B(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V

    .line 32583
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32584
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/FQ;

    move-wide/from16 v15, p11

    move-wide/from16 v19, p15

    move-wide/from16 v17, p13

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/FQ;-><init>(Lcom/facebook/ads/redexgen/X/HM;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/FR;

    .line 32585
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FP;->A00(J)J

    move-result-wide v9

    .line 32586
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FP;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move/from16 v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/FR;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 32587
    invoke-virtual {v0, v13, v3}, Lcom/facebook/ads/redexgen/X/FP;->A09(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V

    .line 32588
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32589
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/FQ;

    move-wide/from16 v15, p11

    move-wide/from16 v19, p15

    move-wide/from16 v17, p13

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/FQ;-><init>(Lcom/facebook/ads/redexgen/X/HM;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/FR;

    .line 32590
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FP;->A00(J)J

    move-result-wide v9

    .line 32591
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FP;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move/from16 v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/FR;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 32592
    invoke-virtual {v0, v13, v3}, Lcom/facebook/ads/redexgen/X/FP;->A0A(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V

    .line 32593
    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32594
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/FQ;

    move-wide/from16 v15, p11

    move-wide/from16 v19, p15

    move-wide/from16 v17, p13

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/FQ;-><init>(Lcom/facebook/ads/redexgen/X/HM;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/FR;

    .line 32595
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FP;->A00(J)J

    move-result-wide v9

    .line 32596
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FP;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move/from16 v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/FR;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 32597
    move/from16 v1, p18

    move-object/from16 v2, p17

    invoke-virtual {v0, v13, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/FP;->A0C(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V

    .line 32598
    return-void
.end method
