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

    .line 14657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14658
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Lcom/facebook/ads/redexgen/X/6F;

    .line 14659
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6L;->A00:Landroid/content/Context;

    .line 14660
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6L;->A02:Lcom/facebook/ads/redexgen/X/6i;

    .line 14661
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wxxjAk2RuoPknp7NwhsaOkPL7egFwf7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8baV86bcHzdOhly1FeY1afyoTq7TCm8V"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bSLcUVpw3u3dWt3Mak5MXmykBjeieZbo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LEMNzr6WZmgIhCSFtF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AsjZIA7i7V6yLf1LmyFOCcSuc8ffqDPK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3SmJzfCptEJRZGyR9OnYp8ouJxYlr8Ze"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BWZQw4i4lYmHhtMCCdajT8HL4R7esTA5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JdDKBi6J9MW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Landroid/view/MotionEvent;)V
    .locals 23

    .line 14662
    move-object/from16 v2, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 14663
    .local v2, "timeStamp":J
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6L;->A00:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v3, ""

    .line 14664
    .local v4, "context":Ljava/lang/String;
    :goto_0
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/6L;->A02:Lcom/facebook/ads/redexgen/X/6i;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0G:Lcom/facebook/ads/redexgen/X/6i;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 14665
    .local v5, "signalValueContext":Lcom/facebook/ads/redexgen/X/6r;
    :goto_1
    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v3, 0x2

    const/16 v6, 0xe

    const/4 v13, 0x1

    packed-switch v7, :pswitch_data_0

    .line 14666
    return-void

    .line 14667
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 14668
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 14669
    :pswitch_0
    const/4 v8, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    sget-object v10, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v10, v10, v7

    const/16 v7, 0xf

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v7, 0x48

    if-eq v10, v7, :cond_6

    sget-object v11, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    const-string v10, "rStalrtNw2V1NfjcazE2wq"

    const/4 v7, 0x3

    aput-object v10, v11, v7

    if-ge v8, v12, :cond_4

    .line 14670
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 14671
    .local v14, "pId":I
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v10, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v7, 0x11

    if-eq v10, v7, :cond_2

    sget-object v11, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    const-string v10, "DTKKg2TSl1zeGEmf2uAAFNSBLqiTXdl"

    const/4 v7, 0x0

    aput-object v10, v11, v7

    const-string v10, "m7DelYiLEuv"

    const/4 v7, 0x7

    aput-object v10, v11, v7

    if-lt v12, v6, :cond_3

    .line 14672
    :goto_3
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    .line 14673
    .local v8, "toolTypeMove":I
    :goto_4
    new-instance v15, Lcom/facebook/ads/redexgen/X/6P;

    .line 14674
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    new-array v7, v3, [F

    .line 14675
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    aput v10, v7, v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    aput v10, v7, v13

    .line 14676
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v20

    .line 14677
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 14678
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v22

    move-object/from16 v19, v7

    invoke-direct/range {v15 .. v22}, Lcom/facebook/ads/redexgen/X/6P;-><init>(III[FFFF)V

    new-instance v10, Lcom/facebook/ads/redexgen/X/Ws;

    invoke-direct {v10, v4, v5, v0, v15}, Lcom/facebook/ads/redexgen/X/Ws;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6P;)V

    .line 14679
    .local v3, "touchSignalValueType":Lcom/facebook/ads/redexgen/X/Ws;
    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/6L;->A01:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v7, Lcom/facebook/ads/redexgen/X/6E;->A0D:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v9, v10, v7}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    .line 14680
    .end local v14    # "pId":I
    .end local v8    # "toolTypeMove":I
    add-int/lit8 v8, v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    sget-object v11, Lcom/facebook/ads/redexgen/X/6L;->A03:[Ljava/lang/String;

    const-string v10, "dWk8Pv3gYqyLCgSxTv15libXSLaZPOJo"

    const/4 v7, 0x4

    aput-object v10, v11, v7

    if-lt v12, v6, :cond_3

    goto :goto_3

    .line 14681
    :cond_3
    const/16 v18, -0x1

    goto :goto_4

    .line 14682
    :pswitch_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 14683
    .local v0, "actionIndex":I
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 14684
    .local v3, "pointerId":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_5

    .line 14685
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 14686
    .local v6, "toolType":I
    :goto_5
    new-instance v8, Lcom/facebook/ads/redexgen/X/6P;

    .line 14687
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    new-array v12, v3, [F

    .line 14688
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aput v3, v12, v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    const/4 v3, 0x1

    aput v6, v12, v3

    .line 14689
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v13

    .line 14690
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 14691
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v15

    invoke-direct/range {v8 .. v15}, Lcom/facebook/ads/redexgen/X/6P;-><init>(III[FFFF)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ws;

    invoke-direct {v3, v4, v5, v0, v8}, Lcom/facebook/ads/redexgen/X/Ws;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6P;)V

    .line 14692
    .local v1, "touchSignalValueType":Lcom/facebook/ads/redexgen/X/Ws;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/6L;->A01:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A0D:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    .line 14693
    .end local v0    # "actionIndex":I
    .end local v3    # "pointerId":I
    .end local v1    # "touchSignalValueType":Lcom/facebook/ads/redexgen/X/Ws;
    .end local v6    # "toolType":I
    :cond_4
    return-void

    .line 14694
    :cond_5
    const/4 v11, -0x1

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

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
