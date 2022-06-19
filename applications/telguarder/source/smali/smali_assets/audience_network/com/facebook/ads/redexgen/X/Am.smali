.class public final Lcom/facebook/ads/redexgen/X/Am;
.super Lcom/facebook/ads/redexgen/X/at;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/At;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/At;

.field public A04:[I

.field public final A05:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A06:Lcom/facebook/ads/redexgen/X/Oh;

.field public final A07:Lcom/facebook/ads/redexgen/X/Oi;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Oi;Lcom/facebook/ads/redexgen/X/Oh;)V
    .locals 2

    .line 21725
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/at;-><init>(Landroid/content/Context;)V

    .line 21726
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:I

    .line 21727
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:F

    .line 21728
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Am;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 21729
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Am;->A07:Lcom/facebook/ads/redexgen/X/Oi;

    .line 21730
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Am;->A06:Lcom/facebook/ads/redexgen/X/Oh;

    .line 21731
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    .line 21732
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/At;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/At;-><init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/At;

    .line 21733
    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Am;)F
    .locals 0

    .line 21734
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:F

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Am;)I
    .locals 0

    .line 21735
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:I

    return p0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3Z4oVcBXIxTGfHDkJENHcNR3oKWZn0O4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rFv82zPhlr6ageKpcxYW53i7WQEhI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2tYR0SC80tVMegpE61nD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NxUbiyfiYIyXyrFLuBvPtjT94e88s"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0hjSAQsR9gnR7LOOW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3YJcpQnZmcsLDiaVOnEQeEpmcgGPkAOH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bqc2ZUTwiywYobMvaWapE1roD64Q2E5u"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7wlgBc9wtLyqXjV7RP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Am;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A1K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V
    .locals 15

    .line 21736
    move-object v9, p0

    move/from16 v3, p3

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 21737
    .local v0, "widthMode":I
    move/from16 v1, p4

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 21738
    .local v2, "heightMode":I
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move-object/from16 v2, p2

    if-ne v8, v6, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2B()I

    move-result v0

    if-eq v0, v5, :cond_1

    :cond_0
    if-ne v7, v6, :cond_2

    .line 21739
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2B()I

    move-result v0

    if-nez v0, :cond_2

    .line 21740
    :cond_1
    move-object/from16 v0, p1

    invoke-super {p0, v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V

    .line 21741
    return-void

    .line 21742
    :cond_2
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 21743
    .local v9, "widthSize":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 21744
    .local v8, "heightSize":I
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Am;->A06:Lcom/facebook/ads/redexgen/X/Oh;

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A01(I)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 21745
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Am;->A06:Lcom/facebook/ads/redexgen/X/Oh;

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A02(I)[I

    move-result-object v3

    .line 21746
    .local v7, "dimen":[I
    .end local v5
    :cond_3
    :goto_0
    if-ne v8, v6, :cond_4

    .line 21747
    aput v14, v3, v4

    .line 21748
    :cond_4
    if-ne v7, v6, :cond_5

    .line 21749
    aput v13, v3, v5

    .line 21750
    :cond_5
    aget v1, v3, v4

    aget v0, v3, v5

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A14(II)V

    .line 21751
    return-void

    .line 21752
    .end local v7    # "dimen":[I
    :cond_6
    const/4 v0, 0x2

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 21753
    .restart local v7    # "dimen":[I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-lt v0, v5, :cond_3

    .line 21754
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v11, 0x1

    .line 21755
    .local v5, "childCount":I
    :goto_1
    const/4 v10, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v10, v11, :cond_7

    .line 21756
    invoke-virtual {p0, v10}, Lcom/facebook/ads/redexgen/X/at;->A1r(I)Landroid/view/View;

    move-result-object v12

    .line 21757
    .local v0, "view":Landroid/view/View;
    if-nez v12, :cond_8

    .line 21758
    .end local v0    # "view":Landroid/view/View;
    :cond_7
    iget v10, v9, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    const/4 v11, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Am;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21759
    :cond_8
    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/Am;->A07:Lcom/facebook/ads/redexgen/X/Oi;

    .line 21760
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 21761
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 21762
    invoke-virtual {v2, v12, v1, v0}, Lcom/facebook/ads/redexgen/X/Oi;->A00(Landroid/view/View;II)[I

    move-result-object v0

    iput-object v0, v9, Lcom/facebook/ads/redexgen/X/Am;->A04:[I

    .line 21763
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2B()I

    move-result v0

    if-nez v0, :cond_a

    .line 21764
    aget v2, v3, v4

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Am;->A04:[I

    aget v0, v1, v4

    add-int/2addr v2, v0

    aput v2, v3, v4

    .line 21765
    if-nez v10, :cond_9

    .line 21766
    aget v1, v1, v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    add-int/2addr v1, v0

    aput v1, v3, v5

    .line 21767
    .end local v0
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 21768
    :cond_a
    aget v2, v3, v5

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Am;->A04:[I

    aget v0, v1, v5

    add-int/2addr v2, v0

    aput v2, v3, v5

    .line 21769
    if-nez v10, :cond_9

    .line 21770
    aget v1, v1, v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    add-int/2addr v1, v0

    aput v1, v3, v4

    goto :goto_3

    .line 21771
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v11

    goto :goto_1

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Am;->A08:[Ljava/lang/String;

    const-string v1, "c7gaApi93PYPuTyj4vut3Dl9rZW6DyZw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "eCokdcVdwhThfuMVf9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v10, v11, :cond_3

    .line 21772
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Am;->A06:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, v10, v3}, Lcom/facebook/ads/redexgen/X/Oh;->A00(I[I)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final A1u(I)V
    .locals 1

    .line 21773
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:I

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/at;->A2G(II)V

    .line 21774
    return-void
.end method

.method public final A22(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4Z;I)V
    .locals 1

    .line 21775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4X;->A0A(I)V

    .line 21776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1M(Lcom/facebook/ads/redexgen/X/4X;)V

    .line 21777
    return-void
.end method

.method public final A2L(D)V
    .locals 3

    .line 21778
    const-wide/16 v1, 0x0

    cmpg-double v0, p1, v1

    if-gtz v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :cond_0
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    div-double/2addr v1, p1

    double-to-float v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:F

    .line 21779
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/At;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/At;-><init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A03:Lcom/facebook/ads/redexgen/X/At;

    .line 21780
    return-void
.end method

.method public final A2M(I)V
    .locals 0

    .line 21781
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:I

    .line 21782
    return-void
.end method

.method public final A2N(I)V
    .locals 0

    .line 21783
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:I

    .line 21784
    return-void
.end method
