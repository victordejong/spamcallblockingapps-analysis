.class public final Lcom/facebook/ads/redexgen/X/13;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/c2;

.field public A01:Lcom/facebook/ads/redexgen/X/12;

.field public A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/13;->A00()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/redexgen/X/12;)V
    .locals 0

    .line 2599
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2600
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/c2;

    .line 2601
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    .line 2602
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2603
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dggRIwntGnoxWZ7BDQUg45Sl6NQgoMuN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "38c9H60yn2P1pt17"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "STlEyQPStERy8tSXGvH8F24LWNUxdBhq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hCwe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bKRxwQpiW0PmVHVfGUn2RavmyNEFkRji"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VPPe2MO9HED0sxCZzVAB8cvkabJHsXeP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uH31h0PRXTyVkIOgrCb5PcgaQIfZ1AyX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pPlbIWWtmQkYN3MHTwcOdVUNUzBLXTby"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()Landroid/content/IntentFilter;
    .locals 3

    .line 2604
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2605
    .local p0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A06:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2606
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2607
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2608
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A09:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2609
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2610
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2611
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A04:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2612
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2613
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2614
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2615
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2616
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2617
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A05:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2618
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2619
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2620
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A0C:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2621
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2622
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2623
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A0B:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2624
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2625
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2626
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A03:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2627
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2628
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2629
    return-object v2
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 2630
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2631
    .local p0, "action":Ljava/lang/String;
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A06:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2632
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2633
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2634
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/c2;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABX(Lcom/facebook/ads/redexgen/X/c2;)V

    .line 2635
    :cond_0
    :goto_0
    return-void

    .line 2636
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A09:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2637
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2638
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2639
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2640
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/c2;

    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 2641
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/c2;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 2642
    :cond_3
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A04:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2643
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2644
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/c2;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABU(Lcom/facebook/ads/redexgen/X/c2;)V

    goto :goto_0

    .line 2646
    :cond_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2647
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2648
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2649
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/c2;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABW(Lcom/facebook/ads/redexgen/X/c2;)V

    goto :goto_0

    .line 2650
    :cond_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A05:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2651
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2652
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const-string v1, "gVjZHTAPXXqW3paCpGTUxeCgOEd4dSxo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    .line 2653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/12;->onRewardedVideoClosed()V

    goto/16 :goto_0

    .line 2654
    :cond_7
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A0B:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2655
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2656
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2657
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/c2;

    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const-string v1, "QgP7tKiwXm5h6JnagwUE7gN68w8IQRlz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/12;->ABS(Lcom/facebook/ads/redexgen/X/c2;)V

    goto/16 :goto_0

    .line 2658
    :cond_9
    sget-object v1, Lcom/facebook/ads/redexgen/X/PM;->A0C:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    .line 2659
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2660
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A00:Lcom/facebook/ads/redexgen/X/c2;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABT(Lcom/facebook/ads/redexgen/X/c2;)V

    goto/16 :goto_0

    .line 2662
    :cond_a
    sget-object v4, Lcom/facebook/ads/redexgen/X/PM;->A03:Lcom/facebook/ads/redexgen/X/PM;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/13;->A02:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_b

    .line 2663
    sget-object v2, Lcom/facebook/ads/redexgen/X/13;->A03:[Ljava/lang/String;

    const-string v1, "4VvB4uonEo2HdG2J"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2664
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2665
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/13;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/12;->onRewardedVideoActivityDestroyed()V

    goto/16 :goto_0

    .line 2666
    :cond_b
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/PM;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2667
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method
