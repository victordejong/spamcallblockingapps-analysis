.class public final Lcom/facebook/ads/redexgen/X/84;
.super Lcom/facebook/ads/redexgen/X/SR;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ot;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:I

.field public static final A0S:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/bx;

.field public A05:Lcom/facebook/ads/redexgen/X/7D;

.field public A06:Lcom/facebook/ads/redexgen/X/2m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/Na;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Lcom/facebook/ads/redexgen/X/Ni;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/RD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/Q9;

.field public A0C:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/1I;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Lc;

.field public final A0I:Lcom/facebook/ads/redexgen/X/M7;

.field public final A0J:Lcom/facebook/ads/redexgen/X/Nw;

.field public final A0K:Lcom/facebook/ads/redexgen/X/Ou;

.field public final A0L:Lcom/facebook/ads/redexgen/X/Ou;

.field public final A0M:Lcom/facebook/ads/redexgen/X/I6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 17188
    invoke-static {}, Lcom/facebook/ads/redexgen/X/84;->A0C()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/84;->A0B()V

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/84;->A0Q:I

    .line 17189
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/84;->A0R:I

    .line 17190
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/84;->A0S:I

    .line 17191
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/84;->A0P:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/bx;)V
    .locals 11

    .line 17192
    move-object v1, p0

    move-object/from16 v2, p5

    move-object v5, p2

    invoke-direct {p0, p1, v5, p4, v2}, Lcom/facebook/ads/redexgen/X/SR;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/bx;)V

    .line 17193
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lc;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/84;->A0H:Lcom/facebook/ads/redexgen/X/Lc;

    .line 17194
    const/4 v0, -0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/84;->A00:I

    .line 17195
    iput-object p3, v1, Lcom/facebook/ads/redexgen/X/84;->A05:Lcom/facebook/ads/redexgen/X/7D;

    .line 17196
    iput-object p1, v1, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    .line 17197
    iput-object p4, v1, Lcom/facebook/ads/redexgen/X/84;->A0I:Lcom/facebook/ads/redexgen/X/M7;

    .line 17198
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/84;->A0E:I

    .line 17199
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/I6;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/I6;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/84;->A0M:Lcom/facebook/ads/redexgen/X/I6;

    .line 17200
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Os;->A03:Lcom/facebook/ads/redexgen/X/Os;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ou;

    invoke-direct {v0, v4, v3, p0}, Lcom/facebook/ads/redexgen/X/Ou;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Os;Lcom/facebook/ads/redexgen/X/Ot;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/84;->A0L:Lcom/facebook/ads/redexgen/X/Ou;

    .line 17201
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Os;->A02:Lcom/facebook/ads/redexgen/X/Os;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ou;

    invoke-direct {v0, v4, v3, p0}, Lcom/facebook/ads/redexgen/X/Ou;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Os;Lcom/facebook/ads/redexgen/X/Ot;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/84;->A0K:Lcom/facebook/ads/redexgen/X/Ou;

    .line 17202
    new-instance v3, Lcom/facebook/ads/redexgen/X/Nv;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    .line 17203
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/84;->A0H:Lcom/facebook/ads/redexgen/X/Lc;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Nv;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 17204
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nv;->A0J()Lcom/facebook/ads/redexgen/X/Nw;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/84;->A0J:Lcom/facebook/ads/redexgen/X/Nw;

    .line 17205
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/84;->A0F:Lcom/facebook/ads/redexgen/X/1I;

    .line 17206
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17207
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setProgressSpinnerInvisible(Z)V

    .line 17208
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/bx;
    .locals 0

    .line 17209
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/bx;
    .locals 0

    .line 17210
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 17211
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 17212
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SR;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Lc;
    .locals 0

    .line 17213
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/84;->A0H:Lcom/facebook/ads/redexgen/X/Lc;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Q9;
    .locals 0

    .line 17214
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/84;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/84;)Ljava/lang/String;
    .locals 0

    .line 17215
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    return-object p0
.end method

.method private A08()V
    .locals 5

    .line 17216
    iget v0, p0, Lcom/facebook/ads/redexgen/X/84;->A00:I

    const/4 v4, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_1

    .line 17217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0K:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ou;->setVisibility(I)V

    .line 17218
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/84;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0E:I

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 17219
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/84;->A0L:Lcom/facebook/ads/redexgen/X/Ou;

    sget-object v1, Lcom/facebook/ads/redexgen/X/84;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/84;->A0O:[Ljava/lang/String;

    const-string v1, "Lb0pVXSTBQv0PQ0xHfBTZZxuD6AU5qnE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kKLb7NC1fw5ZJRcbV3xj3MQQyhslQqSS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Ou;->setVisibility(I)V

    .line 17220
    :goto_1
    return-void

    .line 17221
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0L:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ou;->setVisibility(I)V

    goto :goto_1

    .line 17222
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0K:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ou;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09()V
    .locals 4

    .line 17223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A08:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    if-eqz v0, :cond_0

    .line 17224
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17225
    .local p0, "dotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/84;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 17226
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2m;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17227
    sget v0, Lcom/facebook/ads/redexgen/X/84;->A0Q:I

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17228
    :goto_0
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A08:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ni;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17230
    .end local p0    # "dotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 17231
    :cond_1
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17232
    sget v0, Lcom/facebook/ads/redexgen/X/84;->A0Q:I

    invoke-virtual {v3, v2, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A0A()V
    .locals 6

    .line 17233
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/84;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17234
    .local p0, "orientation":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A03:Landroid/util/DisplayMetrics;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17235
    .local v0, "width":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A03:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17236
    .local v0, "height":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 17237
    sget v0, Lcom/facebook/ads/redexgen/X/84;->A0Q:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v1, v4, v0

    div-int/lit8 v0, v2, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 17238
    .local v1, "childWidth":I
    sub-int/2addr v4, v3

    const/16 v5, 0x8

    div-int/2addr v4, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/84;->A0O:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 17239
    .local v0, "childSpacing":I
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/84;->A0O:[Ljava/lang/String;

    const-string v1, "r9GVmdutZbXBk0cXwhutoYpX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    mul-int/lit8 v1, v4, 0x4

    .line 17240
    .local v0, "extraSpacing":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0K:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Ou;->setVisibility(I)V

    .line 17241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0L:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Ou;->setVisibility(I)V

    goto :goto_0

    .line 17242
    .end local v1    # "childWidth":I
    .end local v0    # "extraSpacing":I
    .end local v0
    :cond_1
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 17243
    .restart local v1    # "childWidth":I
    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 17244
    .restart local v0    # "extraSpacing":I
    move v1, v4

    .line 17245
    .restart local v0    # "extraSpacing":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/84;->A08()V

    .line 17246
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    if-eqz v0, :cond_3

    .line 17247
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2m;->getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/RC;

    move-result-object v0

    .line 17248
    .local v4, "adapter":Lcom/facebook/ads/redexgen/X/RC;
    if-eqz v0, :cond_2

    .line 17249
    invoke-virtual {v0, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/RC;->A0G(III)V

    .line 17250
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A08()V

    .line 17251
    :cond_2
    :goto_1
    return-void

    .line 17252
    :cond_3
    const/16 v2, 0x3d

    const/16 v1, 0x11

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17253
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/84;->onDestroy()V

    goto :goto_1
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/84;->A0N:[B

    return-void

    :array_0
    .array-data 1
        0x7dt
        -0x56t
        -0x56t
        -0x59t
        -0x56t
        0x58t
        -0x65t
        -0x56t
        -0x63t
        -0x67t
        -0x54t
        -0x5ft
        -0x5at
        -0x61t
        0x58t
        -0x65t
        -0x67t
        -0x56t
        -0x59t
        -0x53t
        -0x55t
        -0x63t
        -0x5ct
        0x58t
        -0x52t
        -0x5ft
        -0x63t
        -0x51t
        -0x26t
        0x7t
        0x7t
        0x4t
        0x7t
        -0x4bt
        0xct
        -0x3t
        -0x2t
        0x1t
        -0x6t
        -0x4bt
        -0x8t
        -0xat
        0x7t
        0x4t
        0xat
        0x8t
        -0x6t
        0x1t
        -0x4bt
        -0x8t
        -0xat
        0x7t
        -0x7t
        -0x4bt
        -0x8t
        -0x3t
        -0xat
        0x3t
        -0x4t
        -0x6t
        -0x3dt
        -0x73t
        -0x77t
        -0x78t
        -0x44t
        -0x55t
        -0x50t
        -0x54t
        -0x4bt
        -0x56t
        -0x54t
        -0x6bt
        -0x54t
        -0x45t
        -0x42t
        -0x4at
        -0x47t
        -0x4et
        -0x71t
        -0x6et
        -0x73t
        -0x6et
        -0x71t
        -0x5et
        -0x71t
        -0x73t
        -0x70t
        -0x5dt
        -0x64t
        -0x6et
        -0x66t
        -0x6dt
        -0x23t
        -0x17t
        -0x19t
        -0x58t
        -0x20t
        -0x25t
        -0x23t
        -0x21t
        -0x24t
        -0x17t
        -0x17t
        -0x1bt
        -0x58t
        -0x25t
        -0x22t
        -0x13t
        -0x58t
        -0x1dt
        -0x18t
        -0x12t
        -0x21t
        -0x14t
        -0x13t
        -0x12t
        -0x1dt
        -0x12t
        -0x1dt
        -0x25t
        -0x1at
        -0x58t
        -0x23t
        -0x1at
        -0x1dt
        -0x23t
        -0x1bt
        -0x21t
        -0x22t
    .end array-data
.end method

.method public static A0C()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EBUpG37z0nXGLSWsDu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "drKoOWRzrcOb4Fl0wo7CKVCHjMcyY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Gjz3KMmTvS4q6MbgetKC4ZLV5f9DFqSv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "24xofNHFtJ0edZkv4XRUtlFEBKLHZjhk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "c7TffUpyFtIGdgnWO5jLcXGp5elK8ngV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wbQpkS2yq931qwu1qluyY06ZKMzJsq1p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2DrDx5s67jB3i2lQFq59fxXZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/84;->A0O:[Ljava/lang/String;

    return-void
.end method

.method private final A0D()V
    .locals 2

    .line 17254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 17255
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2m;->removeAllViews()V

    .line 17256
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    .line 17257
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A08:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_1

    .line 17258
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->removeAllViews()V

    .line 17259
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/84;->A08:Lcom/facebook/ads/redexgen/X/Ni;

    .line 17260
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 17261
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 17262
    :cond_2
    return-void
.end method

.method private final A0E(ILandroid/os/Bundle;)V
    .locals 20
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17263
    move-object/from16 v0, p0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move/from16 v2, p1

    if-ne v2, v6, :cond_6

    const/4 v9, 0x1

    .line 17264
    .local v1, "isPortrait":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/84;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    .line 17265
    new-instance v10, Lcom/facebook/ads/redexgen/X/Rt;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v12, 0x0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0D:Ljava/util/List;

    .line 17266
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Oo;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1G;->A00()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1E;->A05:Lcom/facebook/ads/redexgen/X/1E;

    if-ne v3, v1, :cond_5

    const/4 v13, 0x1

    :goto_1
    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/84;->A0F:Lcom/facebook/ads/redexgen/X/1I;

    .line 17267
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v16

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/84;->A0I:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/84;->A0H:Lcom/facebook/ads/redexgen/X/Lc;

    const/16 v4, 0x5c

    const/16 v3, 0x25

    const/16 v1, 0x4e

    invoke-static {v4, v3, v1}, Lcom/facebook/ads/redexgen/X/84;->A06(III)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v5

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    invoke-direct/range {v10 .. v19}, Lcom/facebook/ads/redexgen/X/Rt;-><init>(Lcom/facebook/ads/redexgen/X/Wm;IZLcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    iput-object v10, v0, Lcom/facebook/ads/redexgen/X/84;->A07:Lcom/facebook/ads/redexgen/X/Na;

    .line 17268
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A07:Lcom/facebook/ads/redexgen/X/Na;

    .line 17269
    if-eqz v9, :cond_4

    const/4 v1, 0x1

    .line 17270
    :goto_2
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Na;->A0B(I)V

    .line 17271
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    const/4 v5, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17272
    new-instance v1, Lcom/facebook/ads/redexgen/X/RB;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/RB;-><init>(Lcom/facebook/ads/redexgen/X/84;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0A:Lcom/facebook/ads/redexgen/X/Q8;

    .line 17273
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0A:Lcom/facebook/ads/redexgen/X/Q8;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-direct {v1, v0, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    .line 17274
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/84;->A01:I

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0X(I)V

    .line 17275
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/84;->A02:I

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0Y(I)V

    .line 17276
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2m;

    invoke-direct {v1, v3}, Lcom/facebook/ads/redexgen/X/2m;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    .line 17277
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 17278
    const/4 v3, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17279
    .local v12, "recyclerViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17280
    new-instance v3, Lcom/facebook/ads/redexgen/X/RD;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/84;->A0D:Ljava/util/List;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    move v5, v2

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/RD;-><init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Q9;Landroid/os/Bundle;)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A09:Lcom/facebook/ads/redexgen/X/RD;

    .line 17281
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 17282
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    new-instance v4, Lcom/facebook/ads/redexgen/X/RC;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/84;->A0D:Ljava/util/List;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/SR;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/84;->A05:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/84;->A0H:Lcom/facebook/ads/redexgen/X/Lc;

    .line 17283
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SR;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v12

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/84;->A09:Lcom/facebook/ads/redexgen/X/RD;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/84;->A0M:Lcom/facebook/ads/redexgen/X/I6;

    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/RC;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/M7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RD;Lcom/facebook/ads/redexgen/X/I6;)V

    .line 17284
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/El;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 17285
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/84;->A0A()V

    .line 17286
    :goto_3
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A09:Lcom/facebook/ads/redexgen/X/RD;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/84;->A0G(Lcom/facebook/ads/redexgen/X/RD;)V

    .line 17287
    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17288
    .local v2, "adDetailsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17289
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/J4;->A1D(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17290
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    .line 17291
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8D;->A07()Lcom/facebook/ads/redexgen/X/JO;

    .line 17292
    :cond_0
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    invoke-virtual {v4, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17293
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/84;->A09()V

    .line 17294
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A08:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17295
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A07:Lcom/facebook/ads/redexgen/X/Na;

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Na;->setTitleMaxLines(I)V

    .line 17296
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A07:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Na;->A0A()V

    .line 17297
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A07:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Na;->A09()V

    .line 17298
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A07:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v3, v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17299
    const/4 v1, -0x2

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17300
    .local v0, "leftArrowLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17301
    .local v2, "rightArrowLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17302
    const/16 v4, 0xf

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17303
    sget v1, Lcom/facebook/ads/redexgen/X/84;->A0P:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17304
    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17305
    sget v3, Lcom/facebook/ads/redexgen/X/84;->A0Q:I

    const/4 v1, 0x0

    invoke-virtual {v7, v3, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17306
    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17307
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17308
    sget v1, Lcom/facebook/ads/redexgen/X/84;->A0P:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17309
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17310
    sget v3, Lcom/facebook/ads/redexgen/X/84;->A0Q:I

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v1, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17311
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0K:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-virtual {v3, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17312
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0L:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-virtual {v3, v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17313
    const/4 v3, -0x1

    const/4 v1, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17314
    .local v6, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17315
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0M:Lcom/facebook/ads/redexgen/X/I6;

    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17316
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/84;->A03:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/SR;->A0Y(Landroid/view/View;ZI)V

    .line 17317
    sget v1, Lcom/facebook/ads/redexgen/X/Nq;->A00:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/84;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/84;->removeView(Landroid/view/View;)V

    .line 17318
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/J4;->A1m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17319
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 17320
    :goto_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 17321
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/84;->A07:Lcom/facebook/ads/redexgen/X/Na;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    .line 17322
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    .line 17323
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v4

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 17324
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 17325
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Na;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nd;)V

    .line 17326
    :cond_1
    return-void

    .line 17327
    :cond_2
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A0J:Lcom/facebook/ads/redexgen/X/Nw;

    .line 17328
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    .line 17329
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v1

    .line 17330
    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Nq;->A00(Lcom/facebook/ads/redexgen/X/Wm;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_4

    .line 17331
    :cond_3
    const/16 v5, 0x3d

    const/16 v4, 0x11

    const/16 v3, 0x1b

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/84;->A06(III)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/16 v4, 0x1c

    const/16 v3, 0xc

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/84;->A06(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17332
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/84;->onDestroy()V

    goto/16 :goto_3

    .line 17333
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 17334
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 17335
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/bx;)V
    .locals 6

    .line 17336
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    .line 17337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    .line 17338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/84;->A01:I

    .line 17339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0G()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/84;->A02:I

    .line 17340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/util/List;

    move-result-object v5

    .line 17341
    .local p0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0D:Ljava/util/List;

    .line 17342
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 17343
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/19;

    .line 17344
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/84;->A0D:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oo;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/Oo;-><init>(IILcom/facebook/ads/redexgen/X/19;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17345
    .end local v0    # "adInfo":Lcom/facebook/ads/redexgen/X/19;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17346
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 4

    .line 17347
    new-instance v1, Lcom/facebook/ads/redexgen/X/Em;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Em;-><init>()V

    .line 17348
    .local p0, "mSnapHelper":Lcom/facebook/ads/redexgen/X/ad;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ad;->A0H(Lcom/facebook/ads/redexgen/X/El;)V

    .line 17349
    new-instance v0, Lcom/facebook/ads/redexgen/X/RA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RA;-><init>(Lcom/facebook/ads/redexgen/X/84;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0b(Lcom/facebook/ads/redexgen/X/O6;)V

    .line 17350
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A05:Lcom/facebook/ads/redexgen/X/17;

    .line 17351
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ni;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A08:Lcom/facebook/ads/redexgen/X/Ni;

    .line 17352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A08:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 17353
    sget v1, Lcom/facebook/ads/redexgen/X/84;->A0R:I

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17354
    .local p1, "positionDotsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/84;->A0S:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 17355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A08:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ni;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17356
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/84;I)V
    .locals 0

    .line 17357
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/84;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 17358
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Lc;)V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 17359
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Lc;)V

    return-void
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/84;)Z
    .locals 0

    .line 17360
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SR;->A06:Z

    return p0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/84;)Z
    .locals 0

    .line 17361
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0c()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/84;)Z
    .locals 0

    .line 17362
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0d()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/84;)Z
    .locals 0

    .line 17363
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SR;->A06:Z

    return p0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .locals 11

    .line 17427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A08:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_0

    .line 17428
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ni;->A00(I)V

    .line 17429
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A04:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/16;->A0M(I)Lcom/facebook/ads/redexgen/X/19;

    move-result-object v4

    .line 17430
    .local p0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    if-eqz v4, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/84;->A00:I

    if-eq v0, p1, :cond_3

    .line 17431
    iput p1, p0, Lcom/facebook/ads/redexgen/X/84;->A00:I

    .line 17432
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/84;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 17433
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/84;->A08()V

    .line 17434
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Nq;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/84;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/84;->removeView(Landroid/view/View;)V

    .line 17435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17436
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 17437
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/84;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/84;->A0O:[Ljava/lang/String;

    const-string v1, "j9bTWqAZKtb9KCevmCZOqbtRwKRmENif"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/84;->A07:Lcom/facebook/ads/redexgen/X/Na;

    if-nez v5, :cond_5

    .line 17438
    :cond_2
    const/16 v2, 0x3d

    const/16 v1, 0x11

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1c

    const/16 v1, 0x21

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17439
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/84;->A0M:Lcom/facebook/ads/redexgen/X/I6;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/I6;->setVisibility(I)V

    .line 17441
    :cond_3
    :goto_2
    return-void

    .line 17442
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/84;->A0M:Lcom/facebook/ads/redexgen/X/I6;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/I6;->setVisibility(I)V

    goto :goto_2

    .line 17443
    :cond_5
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v6

    .line 17444
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 17445
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 17446
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Na;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nd;)V

    goto :goto_1

    .line 17447
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0J:Lcom/facebook/ads/redexgen/X/Nw;

    .line 17448
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    .line 17449
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    .line 17450
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Nq;->A00(Lcom/facebook/ads/redexgen/X/Wm;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0e()Z
    .locals 1

    .line 17364
    const/4 v0, 0x0

    return v0
.end method

.method public final A8L(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17365
    const/16 v2, 0x4e

    const/16 v1, 0xe

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bx;

    .line 17366
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/bx;
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/SR;->A0Z(Lcom/facebook/ads/redexgen/X/50;)V

    .line 17367
    if-eqz v0, :cond_0

    .line 17368
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/84;->A0F(Lcom/facebook/ads/redexgen/X/bx;)V

    .line 17369
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17370
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/84;->A0E(ILandroid/os/Bundle;)V

    .line 17371
    new-instance v0, Lcom/facebook/ads/redexgen/X/R9;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/R9;-><init>(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/50;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 17372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v0

    .line 17373
    .local p1, "unskippableSec":I
    if-lez v0, :cond_1

    .line 17374
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SR;->A0X(I)V

    .line 17375
    :cond_1
    return-void
.end method

.method public final AB2(Z)V
    .locals 1

    .line 17376
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->AB2(Z)V

    .line 17377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A09:Lcom/facebook/ads/redexgen/X/RD;

    if-eqz v0, :cond_0

    .line 17378
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0S()V

    .line 17379
    :cond_0
    return-void
.end method

.method public final ABR(Z)V
    .locals 1

    .line 17380
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->ABR(Z)V

    .line 17381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A09:Lcom/facebook/ads/redexgen/X/RD;

    if-eqz v0, :cond_0

    .line 17382
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0T()V

    .line 17383
    :cond_0
    return-void
.end method

.method public final ABl(Lcom/facebook/ads/redexgen/X/Os;)V
    .locals 4

    .line 17384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    if-eqz v0, :cond_0

    .line 17385
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2m;->getLayoutManager()Lcom/facebook/ads/redexgen/X/at;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/84;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_4

    .line 17386
    .local p0, "layoutManager":Lcom/facebook/ads/redexgen/X/4K;
    sget-object v2, Lcom/facebook/ads/redexgen/X/84;->A0O:[Ljava/lang/String;

    const-string v1, "zAIXSZi036mnlctpXueAWDVOJ25Gan9y"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Os;->A02:Lcom/facebook/ads/redexgen/X/Os;

    if-ne p1, v0, :cond_2

    .line 17387
    iget v0, p0, Lcom/facebook/ads/redexgen/X/84;->A00:I

    if-gtz v0, :cond_1

    const/4 v2, 0x0

    .line 17388
    .local p1, "newPosition":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4Z;-><init>()V

    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/at;->A22(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4Z;I)V

    .line 17389
    :goto_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/84;->setUpLayoutForCardAtIndex(I)V

    .line 17390
    .end local p0    # "layoutManager":Lcom/facebook/ads/redexgen/X/4K;
    .end local p1    # "newPosition":I
    :cond_0
    return-void

    .line 17391
    :cond_1
    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    .line 17392
    .end local p1
    :cond_2
    iget v2, p0, Lcom/facebook/ads/redexgen/X/84;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/84;->A0E:I

    add-int/lit8 v0, v1, -0x1

    if-lt v2, v0, :cond_3

    add-int/lit8 v2, v1, -0x1

    .line 17393
    .restart local p1    # "newPosition":I
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4Z;-><init>()V

    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/at;->A22(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4Z;I)V

    goto :goto_1

    .line 17394
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADU(Landroid/os/Bundle;)V
    .locals 1

    .line 17395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A09:Lcom/facebook/ads/redexgen/X/RD;

    if-eqz v0, :cond_0

    .line 17396
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RD;->A0Z(Landroid/os/Bundle;)V

    .line 17397
    :cond_0
    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 17398
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 17399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17400
    .local p0, "savedInstanceState":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/84;->ADU(Landroid/os/Bundle;)V

    .line 17401
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 17402
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/84;->A0A()V

    .line 17403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/84;->A06:Lcom/facebook/ads/redexgen/X/2m;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A09:Lcom/facebook/ads/redexgen/X/RD;

    if-eqz v0, :cond_0

    .line 17404
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2m;->getLayoutManager()Lcom/facebook/ads/redexgen/X/at;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/84;->A00:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/at;->A1u(I)V

    .line 17405
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/84;->A09:Lcom/facebook/ads/redexgen/X/RD;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/84;->A00:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0W(I)V

    .line 17406
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/84;->A09()V

    .line 17407
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/84;->A07:Lcom/facebook/ads/redexgen/X/Na;

    if-eqz v1, :cond_1

    .line 17408
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->A0B(I)V

    .line 17409
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 17410
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/SR;->onDestroy()V

    .line 17411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A07()Lcom/facebook/ads/redexgen/X/JO;

    .line 17413
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17414
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SR;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/84;->A0C:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    .line 17415
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0H:Lcom/facebook/ads/redexgen/X/Lc;

    .line 17416
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 17417
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 17418
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8U(Ljava/lang/String;Ljava/util/Map;)V

    .line 17419
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/84;->A0D()V

    .line 17420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0W()V

    .line 17421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0B:Lcom/facebook/ads/redexgen/X/Q9;

    .line 17422
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0A:Lcom/facebook/ads/redexgen/X/Q8;

    .line 17423
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0D:Ljava/util/List;

    .line 17424
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 17425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A0H:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Lc;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 17426
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
