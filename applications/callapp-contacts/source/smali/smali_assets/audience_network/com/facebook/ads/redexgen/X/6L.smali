.class public final Lcom/facebook/ads/redexgen/X/6L;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/6F;

.field public final A02:Lcom/facebook/ads/redexgen/X/6i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6L;->A00()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6F;Lcom/facebook/ads/redexgen/X/6i;)V
    .locals 0

    .line 14566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14567
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Lcom/facebook/ads/redexgen/X/6F;

    .line 14568
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6L;->A00:Landroid/content/Context;

    .line 14569
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6L;->A02:Lcom/facebook/ads/redexgen/X/6i;

    .line 14570
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "COmePc5O6jQNBThxNrU00eLA0sP62Ofb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1OlTUJms59QGnZv6uedBszpwZ8CEYVJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oD0bBsFyrWHU6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "C7a4pm2tyO8SrXv1cdlxK2sPFdgwB5ae"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "g8qGNC4JJd68o"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wdv0nL8gPgDp5YXIgWNDO16SJnt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "h7h0bvqqYit4L8HKMEE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ho5Id5lQMxy9uaRyjuF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Landroid/view/MotionEvent;)V
    .locals 22

    .line 14571
    move-object/from16 v2, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 14572
    .local v2, "timeStamp":J
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6L;->A00:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v8, ""

    .line 14573
    .local v4, "context":Ljava/lang/String;
    :goto_0
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/6L;->A02:Lcom/facebook/ads/redexgen/X/6i;

    sget-object v6, Lcom/facebook/ads/redexgen/X/6i;->A0G:Lcom/facebook/ads/redexgen/X/6i;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    const-string v1, "q52vtyV4o3lWIqbyVHb"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    if-ne v7, v6, :cond_0

    const/4 v0, 0x0

    .line 14574
    .local v5, "signalValueContext":Lcom/facebook/ads/redexgen/X/6r;
    :goto_1
    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v3, 0x2

    const/16 v6, 0xe

    const/4 v12, 0x1

    packed-switch v7, :pswitch_data_0

    .line 14575
    return-void

    .line 14576
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 14577
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 14578
    :pswitch_0
    const/4 v8, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ge v8, v7, :cond_5

    .line 14579
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    sget-object v11, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v9, v11, v7

    const/4 v7, 0x4

    aget-object v7, v11, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v9, v7, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 14580
    .local v1, "pId":I
    :cond_3
    sget-object v11, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    const-string v9, "FtxLtPKiBWyCq8d2bMsvLwchXj4m1FL"

    const/4 v7, 0x1

    aput-object v9, v11, v7

    const-string v9, "2ZHjPJSTqIAuT8ks3iUv9R1XL7D"

    const/4 v7, 0x5

    aput-object v9, v11, v7

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_4

    .line 14581
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    .line 14582
    .local v0, "toolTypeMove":I
    :goto_3
    new-instance v14, Lcom/facebook/ads/redexgen/X/6P;

    .line 14583
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v15

    new-array v7, v3, [F

    .line 14584
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    aput v9, v7, v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    aput v9, v7, v12

    .line 14585
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v19

    .line 14586
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v9

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 14587
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v21

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v21}, Lcom/facebook/ads/redexgen/X/6P;-><init>(III[FFFF)V

    new-instance v10, Lcom/facebook/ads/redexgen/X/XD;

    invoke-direct {v10, v4, v5, v0, v14}, Lcom/facebook/ads/redexgen/X/XD;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6P;)V

    .line 14588
    .local v8, "touchSignalValueType":Lcom/facebook/ads/redexgen/X/XD;
    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/6L;->A01:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v7, Lcom/facebook/ads/redexgen/X/6E;->A0E:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v9, v10, v7}, Lcom/facebook/ads/redexgen/X/6F;->A02(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    .line 14589
    .end local v1    # "pId":I
    .end local v0    # "toolTypeMove":I
    add-int/lit8 v8, v8, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    goto :goto_2

    .line 14590
    :cond_4
    const/16 v17, -0x1

    goto :goto_3

    .line 14591
    :pswitch_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 14592
    .local v0, "actionIndex":I
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 14593
    .local v8, "pointerId":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_6

    .line 14594
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 14595
    .local v3, "toolType":I
    :goto_4
    new-instance v8, Lcom/facebook/ads/redexgen/X/6P;

    .line 14596
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    new-array v12, v3, [F

    .line 14597
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aput v3, v12, v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    const/4 v3, 0x1

    aput v6, v12, v3

    .line 14598
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v13

    .line 14599
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 14600
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v15

    invoke-direct/range {v8 .. v15}, Lcom/facebook/ads/redexgen/X/6P;-><init>(III[FFFF)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/XD;

    invoke-direct {v3, v4, v5, v0, v8}, Lcom/facebook/ads/redexgen/X/XD;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6P;)V

    .line 14601
    .local v7, "touchSignalValueType":Lcom/facebook/ads/redexgen/X/XD;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/6L;->A01:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A0E:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/6F;->A02(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    .line 14602
    .end local v0    # "actionIndex":I
    .end local v8    # "pointerId":I
    .end local v7    # "touchSignalValueType":Lcom/facebook/ads/redexgen/X/XD;
    .end local v3    # "toolType":I
    :cond_5
    return-void

    .line 14603
    :cond_6
    const/4 v11, -0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
