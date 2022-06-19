.class public final Lcom/facebook/ads/redexgen/X/5n;
.super Lcom/facebook/ads/redexgen/X/ce;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewabilityCheckRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/ce<",
        "Lcom/facebook/ads/redexgen/X/QE;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/8B;"
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/XJ;

.field public A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5n;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 1

    .line 13742
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ce;-><init>(Ljava/lang/Object;)V

    .line 13743
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    .line 13744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    .line 13745
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iVby5wy6H7l4dzY0Hld0xs9tuHtnGk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nr0U5YnFPaRVMsCPPiWFbDdqiRS3TX59"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NmHEOi9mcJk9OQjZmIqLk3AYwOx5ICK3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "j6OxXppfxNxejmkkIb10P2S2ED13bfax"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YxA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "okdCTGqDBxOQkU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XAA3rxsPdfTGxXL8JCFSxOB2RupP9g"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Mu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    return-void
.end method

.method private A01(I)V
    .locals 4

    .line 13746
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    if-nez v0, :cond_0

    .line 13747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A3C(I)V

    .line 13748
    :cond_0
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    const-string v1, "k6Oe58jhR2JQ133LIP7LsY5lW6eco9l5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    .line 13749
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 11

    .line 13750
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ce;->A08()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/QE;

    .line 13751
    .local p0, "checker":Lcom/facebook/ads/redexgen/X/QE;
    const/4 v9, 0x0

    if-nez v4, :cond_0

    .line 13752
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/5n;->A01(I)V

    .line 13753
    return-void

    .line 13754
    :cond_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0C(Lcom/facebook/ads/redexgen/X/QE;)Landroid/view/View;

    move-result-object v3

    .line 13755
    .local v4, "adView":Landroid/view/View;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0I(Lcom/facebook/ads/redexgen/X/QE;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/QD;

    .line 13756
    .local v9, "listener":Lcom/facebook/ads/redexgen/X/QD;
    const/4 v5, 0x1

    if-nez v3, :cond_4

    const/4 v1, 0x1

    .line 13757
    .local v0, "viewIsNull":Z
    :goto_0
    if-nez v1, :cond_1

    if-nez v6, :cond_5

    .line 13758
    .end local v6
    .end local v6
    .end local v5
    .end local v1
    :cond_1
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0Q(Lcom/facebook/ads/redexgen/X/QE;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13759
    if-eqz v1, :cond_3

    .line 13760
    :goto_1
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/5n;->A01(I)V

    .line 13761
    :cond_2
    return-void

    .line 13762
    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    .line 13763
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 13764
    :cond_5
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A03(Lcom/facebook/ads/redexgen/X/QE;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v2

    .line 13765
    .local v6, "viewabilityResult":Lcom/facebook/ads/redexgen/X/QF;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QF;->A04()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 13766
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A05(Lcom/facebook/ads/redexgen/X/QE;)I

    .line 13767
    :goto_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A04(Lcom/facebook/ads/redexgen/X/QE;)I

    move-result v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A06(Lcom/facebook/ads/redexgen/X/QE;)I

    move-result v0

    if-le v1, v0, :cond_9

    const/4 v10, 0x1

    .line 13768
    .local v6, "isViewable":Z
    :goto_3
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0F(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0F(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QF;->A04()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    .line 13769
    .local v5, "wasViewable":Z
    :goto_4
    if-nez v10, :cond_6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QF;->A04()Z

    move-result v0

    if-nez v0, :cond_7

    .line 13770
    :cond_6
    invoke-static {v4, v2}, Lcom/facebook/ads/redexgen/X/QE;->A0G(Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/QF;)Lcom/facebook/ads/redexgen/X/QF;

    .line 13771
    :cond_7
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QF;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 13772
    .local v1, "resultCode":Ljava/lang/String;
    monitor-enter v4

    goto :goto_5

    .line 13773
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 13774
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 13775
    :cond_a
    invoke-static {v4, v9}, Lcom/facebook/ads/redexgen/X/QE;->A07(Lcom/facebook/ads/redexgen/X/QE;I)I

    goto :goto_2

    .line 13776
    :goto_5
    :try_start_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0J(Lcom/facebook/ads/redexgen/X/QE;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0J(Lcom/facebook/ads/redexgen/X/QE;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 13777
    .local v4, "historicalCount":I
    :cond_b
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0J(Lcom/facebook/ads/redexgen/X/QE;)Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v0, v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13778
    .end local v4    # "historicalCount":I
    monitor-exit v4

    .line 13779
    if-eqz v10, :cond_e

    if-nez v8, :cond_e
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13780
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    .line 13781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/QE;->A0A(Lcom/facebook/ads/redexgen/X/QE;J)J

    .line 13782
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0Q(Lcom/facebook/ads/redexgen/X/QE;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 13783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A3D()V

    .line 13784
    :cond_c
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/QD;->A04()V

    .line 13785
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVisibleAnimation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 13786
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 13787
    .local v4, "animation":Landroid/view/animation/Animation;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13788
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13789
    .end local v4    # "animation":Landroid/view/animation/Animation;
    :cond_d
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0R(Lcom/facebook/ads/redexgen/X/QE;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 13790
    return-void

    .line 13791
    :cond_e
    if-nez v10, :cond_12

    if-eqz v8, :cond_12

    .line 13792
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    .line 13793
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0Q(Lcom/facebook/ads/redexgen/X/QE;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 13794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v5

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QF;->A02()Lcom/facebook/ads/redexgen/X/0Q;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    const-string v1, "aqGg3VLISO1RonzxWpaMuFcsA6T1VU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "xPzVxhTd5JHIqZhWukTWbX9dZKpXQ5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5, v3}, Lcom/facebook/ads/redexgen/X/0R;->A2i(Lcom/facebook/ads/redexgen/X/0Q;)V

    .line 13795
    :cond_f
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/QD;->A02()V

    .line 13796
    :cond_10
    :goto_6
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0P(Lcom/facebook/ads/redexgen/X/QE;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0D(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Kb;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 13797
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0B(Lcom/facebook/ads/redexgen/X/QE;)Landroid/os/Handler;

    move-result-object v3

    .line 13798
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0D(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Kb;

    move-result-object v2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A02(Lcom/facebook/ads/redexgen/X/QE;)I

    move-result v0

    int-to-long v0, v0

    .line 13799
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13800
    :cond_11
    return-void

    .line 13801
    :cond_12
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/QD;->A03()V

    .line 13802
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    if-nez v0, :cond_13

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QE;->A0Q(Lcom/facebook/ads/redexgen/X/QE;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 13803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QF;->A02()Lcom/facebook/ads/redexgen/X/0Q;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A3B(Lcom/facebook/ads/redexgen/X/0Q;)V

    .line 13804
    :cond_13
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    goto :goto_6

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13805
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final A5U()Lcom/facebook/ads/redexgen/X/XJ;
    .locals 1

    .line 13806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    return-object v0
.end method
