.class public final Lcom/facebook/ads/redexgen/X/IK;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PK;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Oj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/graphics/Paint;

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Lcom/facebook/ads/redexgen/X/JK;

.field public final A04:Lcom/facebook/ads/redexgen/X/K0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 38114
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IK;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IK;->A06()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/IK;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JK;)V
    .locals 3

    .line 38115
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38116
    new-instance v0, Lcom/facebook/ads/redexgen/X/7a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7a;-><init>(Lcom/facebook/ads/redexgen/X/IK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A04:Lcom/facebook/ads/redexgen/X/K0;

    .line 38117
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IK;->A03:Lcom/facebook/ads/redexgen/X/JK;

    .line 38118
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IK;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 38119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Landroid/graphics/Paint;

    .line 38120
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38121
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IK;->setColorFilter(I)V

    .line 38122
    sget v0, Lcom/facebook/ads/redexgen/X/IK;->A07:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/IK;->setPadding(IIII)V

    .line 38123
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IK;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38124
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IK;->A05()V

    .line 38125
    new-instance v0, Lcom/facebook/ads/redexgen/X/PY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PY;-><init>(Lcom/facebook/ads/redexgen/X/IK;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IK;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38126
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/IK;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 38127
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IK;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/IK;)Lcom/facebook/ads/redexgen/X/JK;
    .locals 0

    .line 38128
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IK;->A03:Lcom/facebook/ads/redexgen/X/JK;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/IK;)Lcom/facebook/ads/redexgen/X/Oj;
    .locals 0

    .line 38129
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/IK;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/IK;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/IK;->A06:[Ljava/lang/String;

    const-string v1, "46k42TMmXNLOzm12QaWH4fref2fTAqwO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x49

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04()V
    .locals 1

    .line 38130
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0U:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IK;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38131
    return-void
.end method

.method private A05()V
    .locals 1

    .line 38132
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0V:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IK;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38133
    return-void
.end method

.method public static A06()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/IK;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2ct
        0x14t
        0x15t
        0x4t
        0x41t
        0x20t
        0x5t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aghB38UhEEJpk0kXnwVgQHJdsNEW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z42NiOwJIVHIw0Yvb2zaIIHOyWtQtdjq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3gFse8uXyFGORzgMyq8kaPi65dxCnZzv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Jw8apcEAXkOZ3AQdkmgk3jwFJH7gSyWz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3SkqDykKznuf11rk6OObVQ9S0DbCfrGf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LUP6WVZdZh28wzzt0Y5b2oxyslCE6YSF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OrWA41O07SU0jmvClar47c0fhMdTsOQM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IK;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A08()Z
    .locals 2

    .line 38134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getVolume()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/IK;)Z
    .locals 0

    .line 38135
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IK;->A08()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0A()V
    .locals 1

    .line 38136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    if-nez v0, :cond_0

    .line 38137
    return-void

    .line 38138
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IK;->A08()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38139
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IK;->A04()V

    .line 38140
    :goto_0
    return-void

    .line 38141
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IK;->A05()V

    goto :goto_0
.end method

.method public final A8M(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 2

    .line 38142
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    .line 38143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    if-eqz v0, :cond_0

    .line 38144
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A04:Lcom/facebook/ads/redexgen/X/K0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A05(Lcom/facebook/ads/redexgen/X/9G;)Z

    .line 38145
    :cond_0
    return-void
.end method

.method public final AEQ(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 2

    .line 38146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    if-eqz v0, :cond_0

    .line 38147
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A04:Lcom/facebook/ads/redexgen/X/K0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A06(Lcom/facebook/ads/redexgen/X/9G;)Z

    .line 38148
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    .line 38149
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 38150
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IK;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 38151
    .local p0, "x":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IK;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 38152
    .local p1, "y":I
    int-to-float v3, v1

    int-to-float v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38153
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 38154
    return-void
.end method
