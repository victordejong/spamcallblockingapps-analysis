.class public abstract Lcom/facebook/ads/redexgen/X/Be;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/am;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2w;,
        Lcom/facebook/ads/redexgen/X/37;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/37;

.field public final A03:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/37;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/Bs;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/facebook/ads/redexgen/X/37;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Be;->A0L()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 23411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23412
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A03:Ljava/util/ArrayDeque;

    .line 23413
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    const/16 v0, 0xa

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 23414
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A03:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/37;-><init>(Lcom/facebook/ads/redexgen/X/GL;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23415
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23416
    .end local p0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:Ljava/util/ArrayDeque;

    .line 23417
    const/4 v2, 0x0

    .restart local p0    # "i":I
    :goto_1
    const/4 v0, 0x2

    if-ge v2, v0, :cond_1

    .line 23418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2w;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/2w;-><init>(Lcom/facebook/ads/redexgen/X/Be;Lcom/facebook/ads/redexgen/X/GL;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23419
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23420
    .end local p0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:Ljava/util/PriorityQueue;

    .line 23421
    return-void
.end method

.method public static A0L()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xrToQ1M30eypgaiDt2KcbeXQSJmH4zEy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FOMm0GJvPogulFgRKU73d9QQGInBRxBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DAifx7fz7Oznb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tEspMkbIuGZVzgapMfnbK02RMeMH6P5b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hnmT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jbKY175w2AZdEkpyONR9SNFucMTvW6Vd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vt70xpgsPpIXmuxmiV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wsDuhCL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Be;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/37;)V
    .locals 1

    .line 23422
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YY;->A07()V

    .line 23423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23424
    return-void
.end method


# virtual methods
.method public abstract A0N()Lcom/facebook/ads/redexgen/X/GC;
.end method

.method public A0O()Lcom/facebook/ads/redexgen/X/By;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 23425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23427
    const/4 v0, 0x0

    return-object v0

    .line 23428
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23429
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/37;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    .line 23430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    return-object v0
.end method

.method public A0P()Lcom/facebook/ads/redexgen/X/Bs;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 23431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 23432
    return-object v5

    .line 23433
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:Ljava/util/PriorityQueue;

    .line 23434
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/37;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/YY;->A00:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_4

    .line 23435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/37;

    .line 23436
    .local p0, "inputBuffer":Lcom/facebook/ads/redexgen/X/37;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Bs;

    .line 23438
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/Bs;
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/BV;->A00(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23439
    .end local v0    # "outputBuffer":Lcom/facebook/ads/redexgen/X/Bs;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Be;->A0R(Lcom/facebook/ads/redexgen/X/By;)V

    .line 23440
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0T()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23441
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0N()Lcom/facebook/ads/redexgen/X/GC;

    move-result-object v7

    .line 23442
    .local v0, "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Bs;

    .line 23444
    .restart local v0    # "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    iget-wide v5, v3, Lcom/facebook/ads/redexgen/X/YY;->A00:J

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Bs;->A09(JLcom/facebook/ads/redexgen/X/GC;J)V

    .line 23445
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Be;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    .line 23446
    return-object v4

    .line 23447
    .end local v0    # "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    .end local v0
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Be;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    .line 23448
    .end local p0    # "inputBuffer":Lcom/facebook/ads/redexgen/X/37;
    goto :goto_0

    .line 23449
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A06:[Ljava/lang/String;

    const-string v1, "hAEA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Be;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    .line 23450
    return-object v4

    .line 23451
    :cond_4
    return-object v5
.end method

.method public A0Q(Lcom/facebook/ads/redexgen/X/By;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 23452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 23453
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23454
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23455
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A06:[Ljava/lang/String;

    const-string v1, "0mhI93daunZi59PwiuGO0KbLyKVCPwQH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "r2E3xZENv7Zr1SQt92aJBQoSxSc5nrbU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Be;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    goto :goto_1

    .line 23456
    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Be;->A01:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A01:J

    invoke-static {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/37;->A01(Lcom/facebook/ads/redexgen/X/37;J)J

    .line 23457
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 23458
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    .line 23459
    return-void
.end method

.method public abstract A0R(Lcom/facebook/ads/redexgen/X/By;)V
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/Bs;)V
    .locals 1

    .line 23460
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Bs;->A07()V

    .line 23461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23462
    return-void
.end method

.method public abstract A0T()Z
.end method

.method public final bridge synthetic A4j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23463
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0O()Lcom/facebook/ads/redexgen/X/By;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A4k()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23464
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0P()Lcom/facebook/ads/redexgen/X/Bs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ACj(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23465
    check-cast p1, Lcom/facebook/ads/redexgen/X/By;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Be;->A0Q(Lcom/facebook/ads/redexgen/X/By;)V

    return-void
.end method

.method public ACz()V
    .locals 0

    .line 23466
    return-void
.end method

.method public ADr(J)V
    .locals 0

    .line 23467
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:J

    .line 23468
    return-void
.end method

.method public flush()V
    .locals 2

    .line 23469
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A01:J

    .line 23470
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:J

    .line 23471
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Be;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    goto :goto_0

    .line 23473
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    if-eqz v0, :cond_1

    .line 23474
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Be;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    .line 23475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:Lcom/facebook/ads/redexgen/X/37;

    .line 23476
    :cond_1
    return-void
.end method
