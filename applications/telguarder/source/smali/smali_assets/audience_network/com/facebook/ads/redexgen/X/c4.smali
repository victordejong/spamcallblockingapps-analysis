.class public final Lcom/facebook/ads/redexgen/X/c4;
.super Lcom/facebook/ads/redexgen/X/0p;
.source ""


# static fields
.field public static final A05:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/c6;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Lcom/facebook/ads/redexgen/X/JC;

.field public final A04:Lcom/facebook/ads/redexgen/X/NN;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 70630
    const-class v0, Lcom/facebook/ads/redexgen/X/c4;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/c4;->A05:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/NN;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/0q;)V
    .locals 0

    .line 70631
    invoke-direct {p0, p1, p5, p4}, Lcom/facebook/ads/redexgen/X/0p;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/0q;Lcom/facebook/ads/redexgen/X/Q9;)V

    .line 70632
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/c4;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 70633
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/c4;->A04:Lcom/facebook/ads/redexgen/X/NN;

    .line 70634
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c4;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70635
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/c4;)Lcom/facebook/ads/redexgen/X/c6;
    .locals 0

    .line 70636
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c4;->A00:Lcom/facebook/ads/redexgen/X/c6;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/c4;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 70637
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c4;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/c4;)Lcom/facebook/ads/redexgen/X/NN;
    .locals 0

    .line 70638
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c4;->A04:Lcom/facebook/ads/redexgen/X/NN;

    return-object p0
.end method


# virtual methods
.method public final A07(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70639
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c4;->A00:Lcom/facebook/ads/redexgen/X/c6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c6;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c4;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 70641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c4;->A00:Lcom/facebook/ads/redexgen/X/c6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c6;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A01(Ljava/lang/String;)V

    .line 70642
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c4;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c4;->A00:Lcom/facebook/ads/redexgen/X/c6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c6;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8c(Ljava/lang/String;Ljava/util/Map;)V

    .line 70643
    :cond_0
    return-void
.end method

.method public final declared-synchronized A08()V
    .locals 1

    monitor-enter p0

    .line 70644
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c4;->A01:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c4;->A00:Lcom/facebook/ads/redexgen/X/c6;

    if-nez v0, :cond_0

    goto :goto_0

    .line 70645
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c4;->A01:Z

    .line 70646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c4;->A00:Lcom/facebook/ads/redexgen/X/c6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c6;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70647
    new-instance v0, Lcom/facebook/ads/redexgen/X/c5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/c5;-><init>(Lcom/facebook/ads/redexgen/X/c4;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A00(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70648
    .end local v0
    :cond_1
    monitor-exit p0

    return-void

    .line 70649
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 70650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/c6;)V
    .locals 0

    .line 70651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c4;->A00:Lcom/facebook/ads/redexgen/X/c6;

    .line 70652
    return-void
.end method
