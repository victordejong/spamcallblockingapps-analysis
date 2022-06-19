.class public final Lcom/facebook/ads/redexgen/X/ck;
.super Lcom/facebook/ads/redexgen/X/M4;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/M3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A02:Lcom/facebook/ads/redexgen/X/JJ;

.field public final A03:Lcom/facebook/ads/redexgen/X/M2;

.field public final A04:Lcom/facebook/ads/redexgen/X/cl;

.field public final A05:Lcom/facebook/ads/redexgen/X/M9;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 73146
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ck;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ck;->A03()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/ck;->A09:I

    .line 73147
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ck;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/ck;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/JJ;II)V
    .locals 7

    .line 73148
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/M4;-><init>(Landroid/content/Context;)V

    .line 73149
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ck;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 73150
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ck;->A05:Lcom/facebook/ads/redexgen/X/M9;

    .line 73151
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ck;->A02:Lcom/facebook/ads/redexgen/X/JJ;

    .line 73152
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ck;->setGravity(I)V

    .line 73153
    new-instance v0, Lcom/facebook/ads/redexgen/X/cl;

    invoke-direct {v0, p1, p4}, Lcom/facebook/ads/redexgen/X/cl;-><init>(Lcom/facebook/ads/redexgen/X/XJ;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    .line 73154
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    sget v0, Lcom/facebook/ads/redexgen/X/ck;->A08:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cl;->setBackgroundColor(I)V

    .line 73155
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    const/16 v2, 0x49

    const/16 v1, 0x8

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ck;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/cl;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73156
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    new-instance v0, Lcom/facebook/ads/redexgen/X/M6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/M6;-><init>(Lcom/facebook/ads/redexgen/X/ck;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    .line 73157
    const/4 v6, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73158
    .local p0, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73159
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73160
    .local p3, "emptyArea":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73161
    .local p4, "emptyViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73162
    new-instance v0, Lcom/facebook/ads/redexgen/X/M2;

    invoke-direct {v0, p1, p5}, Lcom/facebook/ads/redexgen/X/M2;-><init>(Lcom/facebook/ads/redexgen/X/XJ;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A03:Lcom/facebook/ads/redexgen/X/M2;

    .line 73163
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73164
    .local p1, "adReportingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/ck;->A09:I

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73165
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ck;->A03:Lcom/facebook/ads/redexgen/X/M2;

    sget v0, Lcom/facebook/ads/redexgen/X/ck;->A08:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->setBackgroundColor(I)V

    .line 73166
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A1V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A03:Lcom/facebook/ads/redexgen/X/M2;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/ck;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73168
    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/ck;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/ck;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73170
    :goto_0
    return-void

    .line 73171
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/ck;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73172
    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/ck;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A03:Lcom/facebook/ads/redexgen/X/M2;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/ck;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ck;)Lcom/facebook/ads/redexgen/X/M3;
    .locals 0

    .line 73174
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/M3;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ck;)Lcom/facebook/ads/redexgen/X/cl;
    .locals 0

    .line 73175
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ck;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/ck;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ck;->A07:[Ljava/lang/String;

    const-string v1, "L2RboTZhxjQ9awTRnLbhSQGg6v"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7f

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x78

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ck;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x13t
        -0x2t
        0xet
        -0x6t
        -0x6t
        -0x6t
        -0x6t
        -0x6t
        -0x6t
        0x19t
        0x4at
        0x3dt
        -0x8t
        0x51t
        0x47t
        0x4dt
        -0x8t
        0x4bt
        0x4dt
        0x4at
        0x3dt
        -0x8t
        0x51t
        0x47t
        0x4dt
        -0x8t
        0x4ft
        0x39t
        0x46t
        0x4ct
        -0x8t
        0x4ct
        0x47t
        -0x8t
        0x4bt
        0x43t
        0x41t
        0x48t
        -0x8t
        0x4ct
        0x40t
        0x3dt
        -0x8t
        0x39t
        0x3ct
        0x17t
        -0x8t
        0x31t
        0x47t
        0x4dt
        -0x8t
        0x4ft
        0x41t
        0x44t
        0x44t
        -0x8t
        0x44t
        0x47t
        0x4bt
        0x3dt
        -0x8t
        0x51t
        0x47t
        0x4dt
        0x4at
        -0x8t
        0x4at
        0x3dt
        0x4ft
        0x39t
        0x4at
        0x3ct
        0x6t
        0x24t
        0x4dt
        0x50t
        0x54t
        0x46t
        0x1t
        0x22t
        0x45t
        -0x16t
        -0x3t
        0xbt
        0xdt
        0x5t
        -0x3t
        -0x48t
        -0x27t
        -0x4t
        -0xbt
        0xdt
        0xbt
        0x12t
        -0x3et
        -0x1dt
        0x6t
        0x42t
        0x5at
        0x58t
        0x5ft
        0xft
        0x30t
        0x53t
        0xft
        0x50t
        0x5dt
        0x53t
        0xft
        0x3bt
        0x5et
        0x62t
        0x54t
        0xft
        0x41t
        0x54t
        0x66t
        0x50t
        0x61t
        0x53t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "DSMXyIjmw5HclhajbHNu0bHfM2UoxQfV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VI8qELbWvj15goD4sBQF3Ikg1AZrbLrB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "e65oiusvVwGlpJBKbHqtCRVJnI6YlHd3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IRi9ljHD5lnLVRZZd0Abks"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cwd6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "joZNq3IpHeg70E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Xkn9HJi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Qn9IhJ0zzYM2Lk7aXz3vW7M0LF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ck;->A07:[Ljava/lang/String;

    return-void
.end method

.method private setUpSkipDialog(Lcom/facebook/ads/redexgen/X/ci;Lcom/facebook/ads/redexgen/X/MT;)V
    .locals 3

    .line 73197
    const/16 v2, 0x61

    const/16 v1, 0x17

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ck;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/ci;->A08(Ljava/lang/String;)V

    .line 73198
    const/16 v2, 0x9

    const/16 v1, 0x40

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ck;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/ci;->A05(Ljava/lang/String;)V

    .line 73199
    const/16 v2, 0x5a

    const/4 v1, 0x7

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ck;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/ci;->A06(Ljava/lang/String;)V

    .line 73200
    const/16 v2, 0x51

    const/16 v1, 0x9

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ck;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/ci;->A07(Ljava/lang/String;)V

    .line 73201
    new-instance v0, Lcom/facebook/ads/redexgen/X/M7;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/ads/redexgen/X/M7;-><init>(Lcom/facebook/ads/redexgen/X/ck;Lcom/facebook/ads/redexgen/X/MT;Lcom/facebook/ads/redexgen/X/ci;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/ci;->A03(Landroid/view/View$OnClickListener;)V

    .line 73202
    new-instance v0, Lcom/facebook/ads/redexgen/X/M8;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/ads/redexgen/X/M8;-><init>(Lcom/facebook/ads/redexgen/X/ck;Lcom/facebook/ads/redexgen/X/MT;Lcom/facebook/ads/redexgen/X/ci;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/ci;->A04(Landroid/view/View$OnClickListener;)V

    .line 73203
    return-void
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/1I;Z)V
    .locals 0

    .line 73176
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/MT;)V
    .locals 3

    .line 73177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v2

    .line 73178
    .local p0, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 73179
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ck;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ci;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/ci;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/app/Activity;)V

    .line 73180
    .local p1, "skipDialog":Lcom/facebook/ads/redexgen/X/ci;
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/ck;->setUpSkipDialog(Lcom/facebook/ads/redexgen/X/ci;Lcom/facebook/ads/redexgen/X/MT;)V

    .line 73181
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ci;->show()V

    .line 73182
    .end local p1    # "skipDialog":Lcom/facebook/ads/redexgen/X/ci;
    :cond_0
    return-void
.end method

.method public final A07()Z
    .locals 1

    .line 73183
    const/4 v0, 0x0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 73184
    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    return v0
.end method

.method public setAdReportingVisible(Z)V
    .locals 0

    .line 73185
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V
    .locals 3

    .line 73186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/MW;->setInitialUnskippableSeconds(I)V

    .line 73187
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ck;->A03:Lcom/facebook/ads/redexgen/X/M2;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ck;->A02:Lcom/facebook/ads/redexgen/X/JJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A05:Lcom/facebook/ads/redexgen/X/M9;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->setAdDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 73188
    return-void
.end method

.method public setPageDetailsVisible(Z)V
    .locals 0

    .line 73189
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 73190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/MW;->setProgress(F)V

    .line 73191
    return-void
.end method

.method public setToolbarActionMessage(Ljava/lang/String;)V
    .locals 0

    .line 73192
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 1

    .line 73193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ck;->A04:Lcom/facebook/ads/redexgen/X/cl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cl;->setToolbarActionMode(I)V

    .line 73194
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/redexgen/X/M3;)V
    .locals 0

    .line 73195
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/M3;

    .line 73196
    return-void
.end method
