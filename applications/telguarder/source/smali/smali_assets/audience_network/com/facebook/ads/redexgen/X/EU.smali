.class public final Lcom/facebook/ads/redexgen/X/EU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/EV;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/EV;

.field public final synthetic A01:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EU;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EV;[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)V
    .locals 0

    .line 29462
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/EU;->A01:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "E6QYOFCRXKWhpMtDy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "r2wITED4yOE5nDgJ4CxtPKvbb66zgQVu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "K15P4EWBbF4GMeKRrbrsDqviCpiEZU80"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rsZLREKEccHbNgsyw22zY8y9ULdFB5dm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EC5nGUqSur01h2wbRfmCIaPfn4Q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tmV6ZBZILI9sCjk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "e2MIhHr1upXeZDL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RPMfOEwB7mz8KU9agD1oYNFizu3S357D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EU;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 29463
    .local p0, "this":Lcom/facebook/ads/redexgen/X/EU;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A0L(Lcom/facebook/ads/redexgen/X/Ee;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29464
    return-void

    .line 29465
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A06(Lcom/facebook/ads/redexgen/X/Ee;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29466
    .local v0, "pendingTasks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/offline/DownloadManager$Task;>;"
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A06(Lcom/facebook/ads/redexgen/X/Ee;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29467
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/EU;->A01:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    array-length v6, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, v7, v3

    .line 29468
    .local v0, "action":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ee;->A03(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Eb;

    .line 29469
    .end local v0    # "action":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29470
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A0M(Lcom/facebook/ads/redexgen/X/Ee;Z)Z

    .line 29471
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A07(Lcom/facebook/ads/redexgen/X/Ee;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/EX;

    .line 29472
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/EX;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/EX;->AAL(Lcom/facebook/ads/redexgen/X/Ee;)V

    goto :goto_1

    .line 29473
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 29474
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A06(Lcom/facebook/ads/redexgen/X/Ee;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29475
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A0F(Lcom/facebook/ads/redexgen/X/Ee;)V

    .line 29476
    :cond_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A0G(Lcom/facebook/ads/redexgen/X/Ee;)V

    .line 29477
    .local v4, "i":I
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A06(Lcom/facebook/ads/redexgen/X/Ee;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 29478
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A06(Lcom/facebook/ads/redexgen/X/Ee;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Eb;

    .line 29479
    .local v0, "task":Lcom/facebook/ads/redexgen/X/Eb;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Eb;->A03(Lcom/facebook/ads/redexgen/X/Eb;)I

    move-result v0

    if-nez v0, :cond_5

    .line 29480
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EU;->A00:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ee;->A0H(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29481
    .end local v0    # "task":Lcom/facebook/ads/redexgen/X/Eb;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 29482
    .end local v4    # "i":I
    :cond_6
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/EU;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/EU;->A02:[Ljava/lang/String;

    const-string v1, "S5CpKl604R3kAVRzmTlkYQMnDcMLhNaA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "vU8HFUzhcYL8qc3mziiEYF4ObS2BhI8v"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
