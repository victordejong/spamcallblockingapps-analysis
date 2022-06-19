.class public final Lcom/facebook/ads/redexgen/X/5n;
.super Lcom/facebook/ads/redexgen/X/Sf;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Q9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewabilityCheckRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Sf<",
        "Lcom/facebook/ads/redexgen/X/Q9;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/8B;"
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wm;

.field public A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5n;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 13833
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Ljava/lang/Object;)V

    .line 13834
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    .line 13835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    .line 13836
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QD5QnFSkRErUCuSZDweNL6fylPOKDeL1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "d6neGgvbzNIW4vxMlrDYunJRHmBJLj9n"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YKjve3vbst13rxf9Xsm2Vj0NYiPAUUNz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NWSZ62mSImPAm9peUywWCcdsBdo1Vh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "C934"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YzpRdSSq565mmQ0Ab3SIlRmNgm5f89mc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rp6X4bX8sFiWc4lZsn3e"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UGfW6NSzwRPOkCBzuI0CYngNze3MMFCi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    return-void
.end method

.method private A01(I)V
    .locals 1

    .line 13837
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    if-nez v0, :cond_0

    .line 13838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A38(I)V

    .line 13839
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    .line 13840
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 12

    .line 13841
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sf;->A08()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Q9;

    .line 13842
    .local p0, "checker":Lcom/facebook/ads/redexgen/X/Q9;
    const/4 v8, 0x0

    if-nez v4, :cond_0

    .line 13843
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/5n;->A01(I)V

    .line 13844
    return-void

    .line 13845
    :cond_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0C(Lcom/facebook/ads/redexgen/X/Q9;)Landroid/view/View;

    move-result-object v6

    .line 13846
    .local v4, "adView":Landroid/view/View;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0I(Lcom/facebook/ads/redexgen/X/Q9;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Q8;

    .line 13847
    .local v8, "listener":Lcom/facebook/ads/redexgen/X/Q8;
    const/4 v2, 0x1

    if-nez v6, :cond_4

    const/4 v1, 0x1

    .line 13848
    .local v0, "viewIsNull":Z
    :goto_0
    if-nez v1, :cond_1

    if-nez v5, :cond_5

    .line 13849
    .end local v5
    .end local v5
    .end local v2
    .end local v1
    :cond_1
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0Q(Lcom/facebook/ads/redexgen/X/Q9;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13850
    if-eqz v1, :cond_3

    .line 13851
    :goto_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/5n;->A01(I)V

    .line 13852
    :cond_2
    return-void

    .line 13853
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 13854
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 13855
    :cond_5
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A03(Lcom/facebook/ads/redexgen/X/Q9;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v3

    .line 13856
    .local v5, "viewabilityResult":Lcom/facebook/ads/redexgen/X/QA;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QA;->A04()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13857
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A05(Lcom/facebook/ads/redexgen/X/Q9;)I

    .line 13858
    :goto_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A04(Lcom/facebook/ads/redexgen/X/Q9;)I

    move-result v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A06(Lcom/facebook/ads/redexgen/X/Q9;)I

    move-result v0

    if-le v1, v0, :cond_7

    const/4 v11, 0x1

    .line 13859
    .local v5, "isViewable":Z
    :goto_3
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0F(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0F(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A04()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v10, 0x1

    .line 13860
    .local v2, "wasViewable":Z
    :goto_4
    if-nez v11, :cond_a

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QA;->A04()Z

    move-result v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13861
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 13862
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 13863
    :cond_8
    invoke-static {v4, v8}, Lcom/facebook/ads/redexgen/X/Q9;->A07(Lcom/facebook/ads/redexgen/X/Q9;I)I

    goto :goto_2

    :cond_9
    sget-object v7, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    const-string v1, "v1tEmDUKMEFqu3af6eVe"

    const/4 v0, 0x6

    aput-object v1, v7, v0

    if-nez v9, :cond_b

    .line 13864
    :cond_a
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Q9;->A0G(Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/QA;

    .line 13865
    :cond_b
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QA;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 13866
    .local v1, "resultCode":Ljava/lang/String;
    monitor-enter v4

    .line 13867
    :try_start_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0J(Lcom/facebook/ads/redexgen/X/Q9;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0J(Lcom/facebook/ads/redexgen/X/Q9;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 13868
    .local v4, "historicalCount":I
    :cond_c
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0J(Lcom/facebook/ads/redexgen/X/Q9;)Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v0, v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13869
    .end local v4    # "historicalCount":I
    monitor-exit v4

    .line 13870
    if-eqz v11, :cond_f

    if-nez v10, :cond_f
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13871
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    .line 13872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0A(Lcom/facebook/ads/redexgen/X/Q9;J)J

    .line 13873
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0Q(Lcom/facebook/ads/redexgen/X/Q9;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 13874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A39()V

    .line 13875
    :cond_d
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Q8;->A04()V

    .line 13876
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVisibleAnimation()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 13877
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 13878
    .local v4, "animation":Landroid/view/animation/Animation;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13879
    invoke-virtual {v6, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13880
    .end local v4    # "animation":Landroid/view/animation/Animation;
    :cond_e
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0R(Lcom/facebook/ads/redexgen/X/Q9;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 13881
    return-void

    .line 13882
    :cond_f
    if-nez v11, :cond_14

    if-eqz v10, :cond_14

    .line 13883
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    .line 13884
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0Q(Lcom/facebook/ads/redexgen/X/Q9;)Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_13

    if-eqz v6, :cond_10

    .line 13885
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QA;->A02()Lcom/facebook/ads/redexgen/X/0Q;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2g(Lcom/facebook/ads/redexgen/X/0Q;)V

    .line 13886
    :cond_10
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Q8;->A02()V

    .line 13887
    :cond_11
    :goto_6
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0P(Lcom/facebook/ads/redexgen/X/Q9;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0D(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/Kd;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 13888
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0B(Lcom/facebook/ads/redexgen/X/Q9;)Landroid/os/Handler;

    move-result-object v3

    .line 13889
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0D(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/Kd;

    move-result-object v2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A02(Lcom/facebook/ads/redexgen/X/Q9;)I

    move-result v0

    int-to-long v0, v0

    .line 13890
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13891
    :cond_12
    return-void

    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/5n;->A02:[Ljava/lang/String;

    const-string v1, "HSx21lS3Qa4JyLdqlbIRWLj3hZIkcxeY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "JxU0L7Syr2IKnnK83puMh7GAH09otPib"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v6, :cond_10

    goto :goto_5

    .line 13892
    :cond_14
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Q8;->A03()V

    .line 13893
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    if-nez v0, :cond_15

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0Q(Lcom/facebook/ads/redexgen/X/Q9;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 13894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QA;->A02()Lcom/facebook/ads/redexgen/X/0Q;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A37(Lcom/facebook/ads/redexgen/X/0Q;)V

    .line 13895
    :cond_15
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:Z

    goto :goto_6

    .line 13896
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final A5U()Lcom/facebook/ads/redexgen/X/Wm;
    .locals 1

    .line 13897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    return-object v0
.end method
