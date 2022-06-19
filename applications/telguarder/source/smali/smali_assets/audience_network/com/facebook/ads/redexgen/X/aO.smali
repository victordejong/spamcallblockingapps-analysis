.class public final Lcom/facebook/ads/redexgen/X/aO;
.super Lcom/facebook/ads/redexgen/X/55;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewApi;
.implements Lcom/facebook/ads/internal/api/Repairable;
.implements Lcom/facebook/ads/redexgen/X/8B;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Landroid/view/View;

.field public A02:Landroid/widget/ImageView;

.field public A03:Lcom/facebook/ads/MediaView;

.field public A04:Lcom/facebook/ads/MediaViewListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A07:Lcom/facebook/ads/redexgen/X/Wm;

.field public A08:Lcom/facebook/ads/redexgen/X/1W;

.field public A09:Lcom/facebook/ads/redexgen/X/NU;

.field public A0A:Lcom/facebook/ads/redexgen/X/Ow;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Z

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 66944
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aO;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aO;->A05()V

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aO;->A0F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66945
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/55;-><init>()V

    .line 66946
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaView;
    .locals 0

    .line 66947
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 66948
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v1, "ck5ggAbj2vioxfDq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "NneLGMvrJ83sFMBsADIKrHrKRcoTv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03()V
    .locals 3

    .line 66949
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0C:Z

    if-nez v0, :cond_1

    .line 66950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 66952
    :cond_0
    sget v2, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    .line 66953
    .local p0, "density":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 66954
    .local v0, "hPadding":I
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 66955
    .local v0, "vPadding":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1W;->setChildSpacing(I)V

    .line 66956
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/1W;->setPadding(IIII)V

    .line 66957
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->setVisibility(I)V

    .line 66958
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66959
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    .line 66961
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66962
    return-void

    .line 66963
    .end local p0    # "density":F
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v0
    .end local v0
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A04()V
    .locals 2

    .line 66964
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A0B:Lcom/facebook/ads/redexgen/X/LH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 66965
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A0B:Lcom/facebook/ads/redexgen/X/LH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 66966
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A0B:Lcom/facebook/ads/redexgen/X/LH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 66967
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A0B:Lcom/facebook/ads/redexgen/X/LH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 66968
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x10e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aO;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x3dt
        -0x1ft
        -0xet
        -0x11t
        -0xbt
        -0xdt
        -0x1bt
        -0x14t
        -0x60t
        -0xet
        -0x1bt
        -0x12t
        -0x1ct
        -0x1bt
        -0xet
        -0x1bt
        -0xet
        -0x60t
        -0x13t
        -0xbt
        -0xdt
        -0xct
        -0x60t
        -0x1et
        -0x1bt
        -0x60t
        -0xdt
        -0x1bt
        -0xct
        -0x60t
        -0x1et
        -0x1bt
        -0x1at
        -0x11t
        -0xet
        -0x1bt
        -0x60t
        -0x12t
        -0x1ft
        -0xct
        -0x17t
        -0xat
        -0x1bt
        -0x3ft
        -0x1ct
        -0x52t
        0x9t
        0x5t
        0x4t
        0x38t
        0x27t
        0x2ct
        0x28t
        0x31t
        0x26t
        0x28t
        0x11t
        0x28t
        0x37t
        0x3at
        0x32t
        0x35t
        0x2et
        -0x34t
        -0x10t
        -0x1ct
        -0x16t
        -0x18t
        -0x5dt
        -0xbt
        -0x18t
        -0xft
        -0x19t
        -0x18t
        -0xbt
        -0x18t
        -0xbt
        -0x5dt
        -0x10t
        -0x8t
        -0xat
        -0x9t
        -0x5dt
        -0x1bt
        -0x18t
        -0x5dt
        -0xat
        -0x18t
        -0x9t
        -0x5dt
        -0x1bt
        -0x18t
        -0x17t
        -0xet
        -0xbt
        -0x18t
        -0x5dt
        -0xft
        -0x1ct
        -0x9t
        -0x14t
        -0x7t
        -0x18t
        -0x3ct
        -0x19t
        -0x4ft
        -0x7t
        0x1dt
        0x11t
        0x17t
        0x15t
        -0x30t
        0x22t
        0x15t
        0x1et
        0x14t
        0x15t
        0x22t
        0x15t
        0x22t
        -0x30t
        0x1dt
        0x25t
        0x23t
        0x24t
        -0x30t
        0x12t
        0x15t
        -0x30t
        0x23t
        0x15t
        0x24t
        -0x30t
        0x12t
        0x15t
        0x16t
        0x1ft
        0x22t
        0x15t
        -0x30t
        0x1et
        0x11t
        0x24t
        0x19t
        0x26t
        0x15t
        -0xet
        0x11t
        0x1et
        0x1et
        0x15t
        0x22t
        -0xft
        0x14t
        -0x22t
        -0x53t
        -0x2et
        -0x26t
        -0x3bt
        -0x30t
        -0x33t
        -0x38t
        -0x7ct
        -0x46t
        -0x33t
        -0x37t
        -0x25t
        -0x7ct
        -0x39t
        -0x2dt
        -0x2et
        -0x29t
        -0x28t
        -0x2at
        -0x27t
        -0x39t
        -0x28t
        -0x2dt
        -0x2at
        -0x7ct
        -0x2ct
        -0x3bt
        -0x2at
        -0x3bt
        -0x2ft
        -0x29t
        -0x7ct
        -0x28t
        -0x23t
        -0x2ct
        -0x37t
        -0x6et
        -0x3et
        -0x2bt
        -0x18t
        -0x23t
        -0x16t
        -0x27t
        -0x6ct
        -0x4bt
        -0x28t
        -0x6ct
        -0x43t
        -0x29t
        -0x1dt
        -0x1et
        -0x6ct
        -0x23t
        -0x19t
        -0x6ct
        -0x1et
        -0x17t
        -0x20t
        -0x20t
        -0x5et
        -0x1at
        -0x7t
        -0xct
        -0xbt
        -0x1t
        -0x50t
        0x2t
        -0xbt
        -0x2t
        -0xct
        -0xbt
        0x2t
        -0xbt
        0x2t
        -0x50t
        -0x3t
        0x5t
        0x3t
        0x4t
        -0x50t
        -0xet
        -0xbt
        -0x50t
        0x3t
        -0xbt
        0x4t
        -0x50t
        -0xet
        -0xbt
        -0xat
        -0x1t
        0x2t
        -0xbt
        -0x50t
        -0x2t
        -0xft
        0x4t
        -0x7t
        0x6t
        -0xbt
        -0x2ft
        -0xct
        -0x42t
        -0x29t
        -0x1at
        -0x21t
        -0x33t
        -0x40t
        -0x45t
        -0x44t
        -0x3at
        -0x54t
        -0x37t
        -0x3dt
        -0x6ct
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "opPNeHLRCwNMjghH70VvpS5N8kNNBiJu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eEOY2RUjN4bpbDsCyz0GPhNNbfKnjNLD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VFQc0pqb8IELGhnpfLoj2hUSBo2VhTCu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GBUHck22"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gxS7cL5mKFosIlCCzwl1gr8LaZQoy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JvRhV7isjcFk5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q8NK4BrUIZ6kI5bk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yT7QEu4e"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private final A07(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 66969
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/55;->A01(Z)V

    .line 66970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66971
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/55;->A01(Z)V

    .line 66972
    return-void
.end method

.method private A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/T6;)V
    .locals 4

    .line 66973
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A0A:Lcom/facebook/ads/redexgen/X/Ow;

    if-eqz v1, :cond_0

    .line 66974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 66975
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/T6;->A1c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66976
    return-void

    .line 66977
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/T6;->A1B()Ljava/lang/String;

    move-result-object v1

    .line 66978
    .local p0, "mediationData":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66979
    .local p1, "context":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 66980
    return-void

    .line 66981
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ov;->A01(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ow;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0A:Lcom/facebook/ads/redexgen/X/Ow;

    .line 66982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0A:Lcom/facebook/ads/redexgen/X/Ow;

    if-eqz v0, :cond_4

    .line 66983
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66984
    .local p2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 66985
    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 66986
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 66987
    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 66988
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_3

    .line 66989
    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 66990
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 66991
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0A:Lcom/facebook/ads/redexgen/X/Ow;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/aO;->A07(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66992
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0A:Lcom/facebook/ads/redexgen/X/Ow;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 66993
    .end local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method private A09(Landroid/widget/ImageView;)V
    .locals 4

    .line 66994
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0C:Z

    if-nez v0, :cond_2

    .line 66995
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v1, "0pGJtKTiEG7M1QZmgSqLESVqtH6XSoGw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 66996
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 66997
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66998
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66999
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67001
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 67002
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    .line 67003
    return-void

    .line 67004
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0x6a

    const/16 v1, 0x31

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 67005
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    .line 67006
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->A09(Landroid/widget/ImageView;)V

    .line 67007
    new-instance v0, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->A0F(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 67008
    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1W;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    .line 67009
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A03()V

    .line 67010
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 67011
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A04()V

    .line 67012
    return-void
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V
    .locals 1

    .line 67013
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    .line 67014
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->A09(Landroid/widget/ImageView;)V

    .line 67015
    new-instance v0, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->A0F(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 67016
    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1W;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    .line 67017
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A03()V

    .line 67018
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 67019
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A04()V

    .line 67020
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 67021
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    .line 67022
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->A09(Landroid/widget/ImageView;)V

    .line 67023
    new-instance v0, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->A0F(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 67024
    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/1W;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    .line 67025
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A03()V

    .line 67026
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 67027
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A04()V

    .line 67028
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 67029
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    .line 67030
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->A09(Landroid/widget/ImageView;)V

    .line 67031
    new-instance v0, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->A0F(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 67032
    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/1W;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    .line 67033
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A03()V

    .line 67034
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 67035
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A04()V

    .line 67036
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/T6;ZLcom/facebook/ads/redexgen/X/Ja;)V
    .locals 3

    .line 67037
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 67038
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05()Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v1

    .line 67039
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Rz;
    if-eqz p2, :cond_0

    .line 67040
    new-instance v0, Lcom/facebook/ads/redexgen/X/aT;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/aT;-><init>(Lcom/facebook/ads/redexgen/X/aO;Lcom/facebook/ads/redexgen/X/T6;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/NW;)Lcom/facebook/ads/redexgen/X/Rz;

    .line 67041
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 67042
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/NU;)V
    .locals 3

    .line 67043
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0C:Z

    if-nez v0, :cond_1

    .line 67044
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    if-eqz v1, :cond_0

    .line 67045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 67046
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/NU;->setVisibility(I)V

    .line 67047
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67048
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67050
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    .line 67051
    return-void

    .line 67052
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0x3f

    const/16 v1, 0x2b

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0G(Lcom/facebook/ads/NativeAd;)Z
    .locals 4

    .line 67053
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5C;->A04()Ljava/util/List;

    move-result-object v0

    .line 67054
    .local p0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 67055
    return v2

    .line 67056
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    .line 67057
    .local v0, "childNativeAd":Lcom/facebook/ads/NativeAd;
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67058
    return v2

    .line 67059
    :cond_2
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v1, "NNKiamhSotpSBh0S"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "WQowSckFUFZtjqKDGN1yGWQ8HKryj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3
.end method

.method private A0H(Lcom/facebook/ads/NativeAd;)Z
    .locals 2

    .line 67060
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt v1, v0, :cond_0

    .line 67061
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5C;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 67062
    :goto_0
    return v0

    .line 67063
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0I(Lcom/facebook/ads/NativeAd;)V
    .locals 9

    .line 67064
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    .line 67065
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/Wm;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0D(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 67066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Wm;->A0E(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 67067
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0C(Lcom/facebook/ads/redexgen/X/0R;)V

    .line 67068
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/aO;->A0C:Z

    .line 67069
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    .line 67070
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1Q(Lcom/facebook/ads/MediaView;)V

    .line 67071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67073
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/aO;->A0G(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 67074
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A04:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 67075
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A16()Lcom/facebook/ads/redexgen/X/Jd;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A0B:Lcom/facebook/ads/redexgen/X/Jd;

    if-ne v3, v0, :cond_0

    const/4 v8, 0x1

    .line 67076
    .local v0, "enableTextInNativeCarousel":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v8, :cond_1

    .line 67077
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/55;->A01(Z)V

    .line 67078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v8

    .line 67079
    .local v0, "width":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 67080
    .local v7, "parentView":Landroid/view/ViewGroup;
    :goto_1
    if-nez v8, :cond_d

    if-eqz v0, :cond_d

    .line 67081
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 67082
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    .line 67083
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 67084
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Lcom/facebook/ads/redexgen/X/1W;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    .line 67085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/1W;->setCurrentPosition(I)V

    sget-object v3, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v3, v0

    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x41

    if-eq v3, v0, :cond_2

    .line 67086
    sget-object v6, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v3, "uKunmEFPwe58PEdTHnfFAzQvUNwFpiuE"

    const/4 v0, 0x1

    aput-object v3, v6, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/1W;

    .line 67087
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/1W;->setShowTextInCarousel(Z)V

    .line 67088
    if-eqz v8, :cond_3

    .line 67089
    :goto_2
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    check-cast v6, Lcom/facebook/ads/redexgen/X/1W;

    .line 67090
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A1H()Ljava/util/List;

    move-result-object v3

    .line 67091
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A15()Lcom/facebook/ads/redexgen/X/Jc;

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/F3;

    invoke-direct {v7, v8, v6, v3, v0}, Lcom/facebook/ads/redexgen/X/F3;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 67092
    .local p1, "viewAdapter":Lcom/facebook/ads/redexgen/X/bz;
    .restart local p1    # "viewAdapter":Lcom/facebook/ads/redexgen/X/bz;
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/aS;-><init>(Lcom/facebook/ads/redexgen/X/aO;Lcom/facebook/ads/redexgen/X/T6;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/bz;->A0H(Lcom/facebook/ads/redexgen/X/15;)V

    .line 67093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/El;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    goto/16 :goto_6

    .line 67094
    :cond_2
    sget-object v6, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v3, "2L33pT0RrlGDx1qLp0kN0roU5R2lfBPK"

    const/4 v0, 0x1

    aput-object v3, v6, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/1W;

    .line 67095
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/1W;->setShowTextInCarousel(Z)V

    .line 67096
    if-eqz v8, :cond_3

    goto :goto_2

    .line 67097
    .end local p1    # "viewAdapter":Lcom/facebook/ads/redexgen/X/bz;
    :cond_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    check-cast v6, Lcom/facebook/ads/redexgen/X/1W;

    .line 67098
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A1H()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v7, Lcom/facebook/ads/redexgen/X/F2;

    invoke-direct {v7, v6, v3, v0}, Lcom/facebook/ads/redexgen/X/F2;-><init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Wm;)V

    goto :goto_3

    .line 67099
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/aO;->A0H(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67100
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A0A:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 67101
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0B:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1a(Z)V

    .line 67102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:Landroid/view/View;

    .line 67103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/NU;->setVisibility(I)V

    .line 67104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0, v5, v5}, Lcom/facebook/ads/redexgen/X/NU;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 67105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 67106
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67107
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/NL;

    if-eqz v0, :cond_8

    .line 67108
    check-cast v3, Lcom/facebook/ads/redexgen/X/NL;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NL;->A04()V

    .line 67109
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->bringChildToFront(Landroid/view/View;)V

    .line 67110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 67111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5B;

    .line 67112
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5B;->A05(Lcom/facebook/ads/NativeAd;)V

    .line 67113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67114
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A12()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 67115
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/Wm;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    .line 67116
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A06(II)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/aR;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/aR;-><init>(Lcom/facebook/ads/redexgen/X/aO;Lcom/facebook/ads/redexgen/X/T6;)V

    .line 67117
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/NW;)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v2

    .line 67118
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A12()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 67119
    :cond_6
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67120
    sget-object v5, Lcom/facebook/ads/redexgen/X/aO;->A0F:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x105

    const/16 v2, 0x9

    const/16 v0, 0xd

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5C;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67121
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/aO;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/T6;)V

    goto/16 :goto_7

    .line 67122
    :cond_8
    check-cast v3, Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/El;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    goto/16 :goto_4

    .line 67123
    :cond_9
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 67124
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A08:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 67125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->getBodyImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:Landroid/view/View;

    .line 67126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    sget-object v6, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v3, v6, v0

    const/4 v0, 0x0

    aget-object v6, v6, v0

    const/16 v0, 0x1f

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 67128
    :cond_a
    sget-object v6, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v3, "X2xGJjQ8zu6cU8Eo"

    const/4 v0, 0x6

    aput-object v3, v6, v0

    const-string v3, "AZj2zr3QMe0wQwV9kynIxRcnRDB4X"

    const/4 v0, 0x4

    aput-object v3, v6, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5B;

    .line 67129
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5B;->A04()V

    .line 67130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 67131
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67132
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/NL;

    if-eqz v0, :cond_c

    .line 67133
    check-cast v3, Lcom/facebook/ads/redexgen/X/NL;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NL;->A04()V

    .line 67134
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->bringChildToFront(Landroid/view/View;)V

    .line 67135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/NU;->setVisibility(I)V

    .line 67136
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/Wm;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    .line 67137
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A06(II)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/aQ;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/aQ;-><init>(Lcom/facebook/ads/redexgen/X/aO;Lcom/facebook/ads/redexgen/X/T6;)V

    .line 67138
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/NW;)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v2

    .line 67139
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T6;->A12()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 67140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/aO;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/T6;)V

    goto :goto_7

    .line 67141
    :cond_c
    check-cast v3, Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/El;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    goto :goto_5

    .line 67142
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 67143
    const/4 v0, -0x1

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67144
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67145
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/NL;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    .line 67146
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    invoke-virtual {v3, v0, v6}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/NL;

    invoke-virtual {v0, v1, v8}, Lcom/facebook/ads/redexgen/X/NL;->A05(Lcom/facebook/ads/redexgen/X/T6;I)V

    .line 67148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 67149
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/55;->A01(Z)V

    .line 67150
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "parentView":Landroid/view/ViewGroup;
    .end local v0
    .end local p1
    :goto_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:Landroid/view/View;

    .line 67151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/NU;->setVisibility(I)V

    .line 67152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0, v5, v5}, Lcom/facebook/ads/redexgen/X/NU;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 67153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 67155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5B;

    .line 67156
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5B;->A04()V

    .line 67157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->bringChildToFront(Landroid/view/View;)V

    .line 67158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/aO;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/T6;)V

    .line 67160
    .end local v0
    :cond_e
    :goto_7
    return-void
.end method

.method public final A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
    .locals 8

    .line 67161
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    .line 67162
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/Wm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Wm;->A0E(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 67163
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0D(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 67164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0C:Z

    .line 67165
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v6

    .line 67166
    .local p1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1P(Lcom/facebook/ads/MediaView;)V

    .line 67167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/NU;->setVisibility(I)V

    .line 67168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lcom/facebook/ads/redexgen/X/NU;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 67169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 67171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5B;->A04()V

    .line 67172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67174
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/NL;

    if-eqz v0, :cond_5

    .line 67175
    check-cast v1, Lcom/facebook/ads/redexgen/X/NL;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NL;->A04()V

    .line 67176
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->bringChildToFront(Landroid/view/View;)V

    .line 67178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:Landroid/view/View;

    .line 67179
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T6;->A13()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v3

    .line 67180
    .local p2, "adIcon":Lcom/facebook/ads/redexgen/X/Ja;
    if-eqz v3, :cond_3

    .line 67181
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T6;->A10()Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v1, "8vonm0Gh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "EfYx5Mmt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0L(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67182
    .local p1, "preloadedBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 67183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67184
    if-eqz p2, :cond_1

    .line 67185
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aU;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/aU;-><init>(Lcom/facebook/ads/redexgen/X/aO;Lcom/facebook/ads/redexgen/X/T6;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->post(Ljava/lang/Runnable;)Z

    .line 67186
    .end local p1    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v0
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/aO;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/T6;)V

    .line 67187
    return-void

    .line 67188
    :cond_2
    invoke-direct {p0, v6, p2, v3}, Lcom/facebook/ads/redexgen/X/aO;->A0E(Lcom/facebook/ads/redexgen/X/T6;ZLcom/facebook/ads/redexgen/X/Ja;)V

    goto :goto_1

    .line 67189
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T6;->A14()Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v7

    .line 67190
    .local p1, "adListener":Lcom/facebook/ads/redexgen/X/T5;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 67191
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    .line 67192
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T6;->A0x()J

    move-result-wide v2

    .line 67193
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 67194
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 67195
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 67196
    if-eqz v7, :cond_4

    .line 67197
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Jn;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/facebook/ads/redexgen/X/JQ;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 67198
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2e

    const/16 v1, 0x11

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67199
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    .line 67201
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0L:I

    const/16 v2, 0xc0

    const/16 v1, 0x17

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 67202
    const/16 v2, 0x102

    const/4 v1, 0x3

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1

    .line 67203
    :cond_5
    check-cast v1, Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/El;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0K()Z
    .locals 4

    .line 67204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v1, "Bf43XNCk8DdRx"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A5U()Lcom/facebook/ads/redexgen/X/Wm;
    .locals 1

    .line 67205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    return-object v0
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 4

    .line 67206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    if-eq p1, v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v1, "R8dYcckG0onv7yQggjKFRkmHXZbq9UJh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_2

    .line 67207
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 67208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A0A:Lcom/facebook/ads/redexgen/X/Ow;

    if-eqz v1, :cond_2

    .line 67209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 67210
    :cond_2
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 67211
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 67212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 67213
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 67214
    return-object p0
.end method

.method public final getAdContentsView()Landroid/view/View;
    .locals 1

    .line 67215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaHeight()I
    .locals 1

    .line 67216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 67217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->getImageHeight()I

    move-result v0

    return v0

    .line 67218
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 67219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 67220
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 67221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v0

    return v0

    .line 67222
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final getMediaWidth()I
    .locals 4

    .line 67223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 67224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A09:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->getImageWidth()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v1, "us0p5hBNoGIfish2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "DFvDCw92fILzmemlu9XfPwpsPQRiq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 67225
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v1, "7zc9sXuG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ncWuDUJK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 67226
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 67227
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 67228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    return v0

    .line 67229
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaView;)V
    .locals 10

    .line 67230
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67231
    .local p0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    .line 67232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0D(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 67233
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v5

    const/4 v3, 0x1

    move-object v9, p2

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_1

    const/4 v0, 0x2

    if-eq v5, v0, :cond_0

    const/4 v4, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/aO;->A0E:[Ljava/lang/String;

    const-string v1, "3FDrqy4tObUcmRIw93Quo4uXvWt9YCbu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Pkknuto2tX8e7Jvk26mk1qvLvk6zRsRu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_3

    .line 67234
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    .line 67235
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v6

    .line 67236
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v7

    .line 67237
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v8

    .line 67238
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/aO;->A0A(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V

    .line 67239
    :goto_0
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/55;->A01(Z)V

    .line 67240
    return-void

    .line 67241
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    .line 67242
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    .line 67243
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v0

    .line 67244
    invoke-direct {p0, v2, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/aO;->A0B(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V

    .line 67245
    goto :goto_0

    .line 67246
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/aO;->A0C(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V

    .line 67247
    goto :goto_0

    .line 67248
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/aO;->A0D(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/MediaView;)V

    .line 67249
    goto :goto_0

    .line 67250
    :cond_3
    const/16 v2, 0x9b

    const/16 v1, 0x25

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 67251
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/55;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 67252
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 67253
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 3

    .line 67254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v2

    .line 67255
    .local p0, "currentWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    .line 67256
    .local p1, "currentHeight":I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 67257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    .line 67258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67260
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    .line 67261
    :goto_0
    return-void

    .line 67262
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 2

    .line 67263
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A04:Lcom/facebook/ads/MediaViewListener;

    .line 67264
    if-nez p1, :cond_0

    .line 67265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5B;

    const/4 v0, 0x0

    .line 67266
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A08(Lcom/facebook/ads/redexgen/X/MF;)V

    .line 67267
    return-void

    .line 67268
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5B;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aP;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/aP;-><init>(Lcom/facebook/ads/redexgen/X/aO;Lcom/facebook/ads/MediaViewListener;)V

    .line 67269
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A08(Lcom/facebook/ads/redexgen/X/MF;)V

    .line 67270
    return-void
.end method

.method public final setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 3

    .line 67271
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0C:Z

    if-nez v0, :cond_2

    .line 67272
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eqz v1, :cond_0

    .line 67273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 67274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 67275
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5B;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/Wm;

    .line 67276
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A06(Lcom/facebook/ads/redexgen/X/JC;)V

    .line 67277
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67278
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67279
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/aO;->A07(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67281
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 67282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of v0, v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A0B:Z

    .line 67283
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setId(I)V

    .line 67284
    return-void

    .line 67285
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 67286
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0xd7

    const/16 v1, 0x2b

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
