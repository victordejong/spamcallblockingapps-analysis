.class public final Lcom/facebook/ads/redexgen/X/Th;
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

.field public A07:Lcom/facebook/ads/redexgen/X/XJ;

.field public A08:Lcom/facebook/ads/redexgen/X/1W;

.field public A09:Lcom/facebook/ads/redexgen/X/NZ;

.field public A0A:Lcom/facebook/ads/redexgen/X/P1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Z

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 55071
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Th;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Th;->A05()V

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Th;->A0F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55072
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/55;-><init>()V

    .line 55073
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaView;
    .locals 0

    .line 55074
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 55075
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 4

    .line 55076
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0C:Z

    if-nez v0, :cond_2

    .line 55077
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "HiqmuX4YAHl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "JtgDxExoVYEb5OmxUIRsQ7gjV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 55078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 55079
    :cond_1
    sget v2, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    .line 55080
    .local p0, "density":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 55081
    .local v0, "hPadding":I
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 55082
    .local v3, "vPadding":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1W;->setChildSpacing(I)V

    .line 55083
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/1W;->setPadding(IIII)V

    .line 55084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->setVisibility(I)V

    .line 55085
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55086
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    .line 55088
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55089
    return-void

    .line 55090
    .end local p0    # "density":F
    .end local v0    # "hPadding":I
    .end local v3    # "vPadding":I
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A04()V
    .locals 2

    .line 55091
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LF;->A0A:Lcom/facebook/ads/redexgen/X/LF;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LF;)V

    .line 55092
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LF;->A0A:Lcom/facebook/ads/redexgen/X/LF;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LF;)V

    .line 55093
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LF;->A0A:Lcom/facebook/ads/redexgen/X/LF;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LF;)V

    .line 55094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LF;->A0A:Lcom/facebook/ads/redexgen/X/LF;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LF;)V

    .line 55095
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x10e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Th;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x1at
        0x9t
        0x14t
        0xet
        0x8t
        0x1et
        0x17t
        0x5bt
        0x9t
        0x1et
        0x15t
        0x1ft
        0x1et
        0x9t
        0x1et
        0x9t
        0x5bt
        0x16t
        0xet
        0x8t
        0xft
        0x5bt
        0x19t
        0x1et
        0x5bt
        0x8t
        0x1et
        0xft
        0x5bt
        0x19t
        0x1et
        0x1dt
        0x14t
        0x9t
        0x1et
        0x5bt
        0x15t
        0x1at
        0xft
        0x12t
        0xdt
        0x1et
        0x3at
        0x1ft
        0x55t
        0x1at
        0x1et
        0x1dt
        0x29t
        0x38t
        0x35t
        0x39t
        0x32t
        0x3ft
        0x39t
        0x12t
        0x39t
        0x28t
        0x2bt
        0x33t
        0x2et
        0x37t
        0x40t
        0x64t
        0x68t
        0x6et
        0x6ct
        0x29t
        0x7bt
        0x6ct
        0x67t
        0x6dt
        0x6ct
        0x7bt
        0x6ct
        0x7bt
        0x29t
        0x64t
        0x7ct
        0x7at
        0x7dt
        0x29t
        0x6bt
        0x6ct
        0x29t
        0x7at
        0x6ct
        0x7dt
        0x29t
        0x6bt
        0x6ct
        0x6ft
        0x66t
        0x7bt
        0x6ct
        0x29t
        0x67t
        0x68t
        0x7dt
        0x60t
        0x7ft
        0x6ct
        0x48t
        0x6dt
        0x27t
        0x60t
        0x44t
        0x48t
        0x4et
        0x4ct
        0x9t
        0x5bt
        0x4ct
        0x47t
        0x4dt
        0x4ct
        0x5bt
        0x4ct
        0x5bt
        0x9t
        0x44t
        0x5ct
        0x5at
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x9t
        0x5at
        0x4ct
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x4ft
        0x46t
        0x5bt
        0x4ct
        0x9t
        0x47t
        0x48t
        0x5dt
        0x40t
        0x5ft
        0x4ct
        0x6bt
        0x48t
        0x47t
        0x47t
        0x4ct
        0x5bt
        0x68t
        0x4dt
        0x7t
        0x12t
        0x35t
        0x2dt
        0x3at
        0x37t
        0x32t
        0x3ft
        0x7bt
        0xdt
        0x32t
        0x3et
        0x2ct
        0x7bt
        0x38t
        0x34t
        0x35t
        0x28t
        0x2ft
        0x29t
        0x2et
        0x38t
        0x2ft
        0x34t
        0x29t
        0x7bt
        0x2bt
        0x3at
        0x29t
        0x3at
        0x36t
        0x28t
        0x7bt
        0x2ft
        0x22t
        0x2bt
        0x3et
        0x75t
        0x1t
        0x2et
        0x3bt
        0x26t
        0x39t
        0x2at
        0x6ft
        0xet
        0x2bt
        0x6ft
        0x6t
        0x2ct
        0x20t
        0x21t
        0x6ft
        0x26t
        0x3ct
        0x6ft
        0x21t
        0x3at
        0x23t
        0x23t
        0x61t
        0xbt
        0x34t
        0x39t
        0x38t
        0x32t
        0x7dt
        0x2ft
        0x38t
        0x33t
        0x39t
        0x38t
        0x2ft
        0x38t
        0x2ft
        0x7dt
        0x30t
        0x28t
        0x2et
        0x29t
        0x7dt
        0x3ft
        0x38t
        0x7dt
        0x2et
        0x38t
        0x29t
        0x7dt
        0x3ft
        0x38t
        0x3bt
        0x32t
        0x2ft
        0x38t
        0x7dt
        0x33t
        0x3ct
        0x29t
        0x34t
        0x2bt
        0x38t
        0x1ct
        0x39t
        0x73t
        0x1at
        0xbt
        0x12t
        0x75t
        0x6at
        0x67t
        0x66t
        0x6ct
        0x56t
        0x71t
        0x6ft
        0x3et
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5egxRyJvv3hsImr6xVPVZGZzS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S92E58UIdGCmPOb4LYA51SRur0tU5vPU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gB2LJBWgacco1yi3dwEv6yCRJyLib4yq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IRYDxixZynQ1VjnPzR0JfxvjieAE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Yx6PPUM30uHFy3rHO75LIsUaVykI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YSQgGTlHzzB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fqdcFq1cD4m6uZ0nLvDLKOa7nCA9CaYH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MqJIv4BM2hfR6AMSoGkEEGT8SPZgcE8o"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private final A07(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 55096
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/55;->A02(Z)V

    .line 55097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55098
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/55;->A02(Z)V

    .line 55099
    return-void
.end method

.method private A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/cD;)V
    .locals 5

    .line 55100
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Lcom/facebook/ads/redexgen/X/P1;

    if-eqz v4, :cond_0

    .line 55101
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "tYahJlzELN2bWoIKGOvNb4V2q4om3tal"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "knO8IZUpKtredd0Q2IkvjJrJQGpJW1Qq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 55102
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/cD;->A1c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55103
    return-void

    .line 55104
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/cD;->A1B()Ljava/lang/String;

    move-result-object v4

    .line 55105
    .local p0, "mediationData":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 55106
    .local p1, "context":Landroid/content/Context;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "LedcnhOkj71a4gNr9a9uwwPVwkpS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bOPNktfa058vxRDYU7HJ2aiUk3a2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 55107
    :goto_0
    return-void

    .line 55108
    .local p1, "context":Landroid/content/Context;
    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    .line 55109
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/P0;->A01(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/P1;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "IBU68ioTGuVBWJ1dkmCJ7UK76Osi7EVF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Lcom/facebook/ads/redexgen/X/P1;

    .line 55110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Lcom/facebook/ads/redexgen/X/P1;

    if-eqz v0, :cond_5

    .line 55111
    :goto_1
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55112
    .local p2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55113
    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55114
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55115
    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    .line 55117
    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55119
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Lcom/facebook/ads/redexgen/X/P1;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Th;->A07(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55120
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Lcom/facebook/ads/redexgen/X/P1;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 55121
    .end local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    return-void

    :cond_6
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Lcom/facebook/ads/redexgen/X/P1;

    .line 55122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Lcom/facebook/ads/redexgen/X/P1;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(Landroid/widget/ImageView;)V
    .locals 4

    .line 55123
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0C:Z

    if-nez v0, :cond_2

    .line 55124
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "9onWrVOda1qlu0pAvyXYf5LKITz29A5r"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "G6pev0JETY7bhqmEZOziJsmCoQM1bBBX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 55125
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 55126
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55127
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55128
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55130
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lh;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 55131
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    .line 55132
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55133
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0x6a

    const/16 v1, 0x31

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 55134
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    .line 55135
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A09(Landroid/widget/ImageView;)V

    .line 55136
    new-instance v0, Lcom/facebook/ads/redexgen/X/NZ;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/NZ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A0F(Lcom/facebook/ads/redexgen/X/NZ;)V

    .line 55137
    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1W;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    .line 55138
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A03()V

    .line 55139
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 55140
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A04()V

    .line 55141
    return-void
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V
    .locals 1

    .line 55142
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    .line 55143
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A09(Landroid/widget/ImageView;)V

    .line 55144
    new-instance v0, Lcom/facebook/ads/redexgen/X/NZ;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/NZ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A0F(Lcom/facebook/ads/redexgen/X/NZ;)V

    .line 55145
    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1W;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    .line 55146
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A03()V

    .line 55147
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 55148
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A04()V

    .line 55149
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 55150
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    .line 55151
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A09(Landroid/widget/ImageView;)V

    .line 55152
    new-instance v0, Lcom/facebook/ads/redexgen/X/NZ;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/NZ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A0F(Lcom/facebook/ads/redexgen/X/NZ;)V

    .line 55153
    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/1W;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    .line 55154
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A03()V

    .line 55155
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 55156
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A04()V

    .line 55157
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 55158
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    .line 55159
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A09(Landroid/widget/ImageView;)V

    .line 55160
    new-instance v0, Lcom/facebook/ads/redexgen/X/NZ;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/NZ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A0F(Lcom/facebook/ads/redexgen/X/NZ;)V

    .line 55161
    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/1W;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    .line 55162
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A03()V

    .line 55163
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 55164
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A04()V

    .line 55165
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/cD;ZLcom/facebook/ads/redexgen/X/JY;)V
    .locals 3

    .line 55166
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 55167
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05()Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    .line 55168
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/aA;
    if-eqz p2, :cond_0

    .line 55169
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tc;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Tc;-><init>(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/redexgen/X/cD;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A07(Lcom/facebook/ads/redexgen/X/Nb;)Lcom/facebook/ads/redexgen/X/aA;

    .line 55170
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 55171
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/NZ;)V
    .locals 3

    .line 55172
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0C:Z

    if-nez v0, :cond_1

    .line 55173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    if-eqz v1, :cond_0

    .line 55174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 55175
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/NZ;->setVisibility(I)V

    .line 55176
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55177
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55179
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    .line 55180
    return-void

    .line 55181
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0x3f

    const/16 v1, 0x2b

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0G(Lcom/facebook/ads/NativeAd;)Z
    .locals 3

    .line 55182
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5C;->A04()Ljava/util/List;

    move-result-object v0

    .line 55183
    .local p0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 55184
    return v2

    .line 55185
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

    .line 55186
    .local v0, "childNativeAd":Lcom/facebook/ads/NativeAd;
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55187
    return v2

    .line 55188
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private A0H(Lcom/facebook/ads/NativeAd;)Z
    .locals 2

    .line 55189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt v1, v0, :cond_0

    .line 55190
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5C;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 55191
    :goto_0
    return v0

    .line 55192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0I(Lcom/facebook/ads/NativeAd;)V
    .locals 10

    .line 55193
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v2

    .line 55194
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/XJ;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/XJ;->A0C(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 55195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/XJ;->A0D(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 55196
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0B(Lcom/facebook/ads/redexgen/X/0R;)V

    .line 55197
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Th;->A0C:Z

    .line 55198
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v3

    .line 55199
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1Q(Lcom/facebook/ads/MediaView;)V

    .line 55200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55202
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Th;->A0G(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 55203
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A03:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 55204
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A16()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_6

    sget-object v6, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "CvXrj9TTP1W52m7bIbynzmDbx8Ql"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "OGerX4RrBYJpkLXwbXTHIjvyoHPN"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jb;->A0B:Lcom/facebook/ads/redexgen/X/Jb;

    if-ne v8, v0, :cond_1

    const/4 v1, 0x1

    .line 55205
    .local v0, "enableTextInNativeCarousel":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 55206
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/55;->A02(Z)V

    .line 55207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v8

    .line 55208
    .local v0, "width":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 55209
    .local v7, "parentView":Landroid/view/ViewGroup;
    :goto_1
    if-nez v8, :cond_4

    if-eqz v9, :cond_4

    .line 55210
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 55211
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    sget-object v6, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v6, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "ZQRbya12lyykx5Eq2uFJ3JGH4lXR"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "SLHysRpGcYp4QaXPRJ4K4uNDdgkD"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    check-cast v9, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "txzvXhatra49UDlp2BXEovPdWlOkx37e"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    const-string v1, "zmD0GPDFfrMRBXxeFyYC2vHynCiCjpaN"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    check-cast v9, Landroid/view/ViewGroup;

    goto :goto_1

    .line 55212
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 55213
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/1W;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    .line 55214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/1W;->setCurrentPosition(I)V

    .line 55215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/1W;

    .line 55216
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1W;->setShowTextInCarousel(Z)V

    .line 55217
    if-eqz v1, :cond_3

    .line 55218
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    check-cast v6, Lcom/facebook/ads/redexgen/X/1W;

    .line 55219
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A1H()Ljava/util/List;

    move-result-object v1

    .line 55220
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A15()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/FT;

    invoke-direct {v7, v8, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/FT;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 55221
    .local p1, "viewAdapter":Lcom/facebook/ads/redexgen/X/Rz;
    .restart local p1    # "viewAdapter":Lcom/facebook/ads/redexgen/X/Rz;
    :goto_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Td;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Td;-><init>(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/redexgen/X/cD;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A0H(Lcom/facebook/ads/redexgen/X/15;)V

    .line 55222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    goto :goto_3

    .line 55223
    .end local p1    # "viewAdapter":Lcom/facebook/ads/redexgen/X/Rz;
    :cond_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    check-cast v6, Lcom/facebook/ads/redexgen/X/1W;

    .line 55224
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A1H()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v7, Lcom/facebook/ads/redexgen/X/FM;

    invoke-direct {v7, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;-><init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XJ;)V

    goto :goto_2

    .line 55225
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 55226
    const/4 v0, -0x1

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55227
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55228
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/NQ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    .line 55229
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v6}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/NQ;->A06(Lcom/facebook/ads/redexgen/X/cD;I)V

    .line 55231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 55232
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/55;->A02(Z)V

    .line 55233
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "parentView":Landroid/view/ViewGroup;
    .end local v0
    .end local p1
    :goto_3
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    sget-object v6, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v6, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "92EI1RENbPFosgt8QuPbmuyLYPUfPd8U"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/Th;->A00:Landroid/view/View;

    .line 55234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/NZ;->setVisibility(I)V

    .line 55235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0, v4, v4}, Lcom/facebook/ads/redexgen/X/NZ;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 55236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 55237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 55238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5B;

    .line 55239
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5B;->A04()V

    .line 55240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->bringChildToFront(Landroid/view/View;)V

    .line 55241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Th;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/cD;)V

    .line 55243
    .end local v0
    goto/16 :goto_5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Th;->A0H(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55244
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 55245
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0B:Z

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1a(Z)V

    .line 55246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A00:Landroid/view/View;

    .line 55247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/NZ;->setVisibility(I)V

    .line 55248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0, v4, v4}, Lcom/facebook/ads/redexgen/X/NZ;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 55249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 55250
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55251
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    instance-of v0, v6, Lcom/facebook/ads/redexgen/X/NQ;

    if-eqz v0, :cond_c

    .line 55252
    check-cast v6, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NQ;->A05()V

    .line 55253
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->bringChildToFront(Landroid/view/View;)V

    .line 55254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 55255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5B;

    .line 55256
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5B;->A05(Lcom/facebook/ads/NativeAd;)V

    .line 55257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 55258
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A12()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 55259
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v2, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/XJ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    .line 55260
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(II)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/redexgen/X/cD;)V

    .line 55261
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A07(Lcom/facebook/ads/redexgen/X/Nb;)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    .line 55262
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A12()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 55263
    :cond_9
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55264
    sget-object v5, Lcom/facebook/ads/redexgen/X/Th;->A0F:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x105

    const/16 v1, 0x9

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A02(III)Ljava/lang/String;

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

    .line 55265
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Th;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/cD;)V

    .line 55266
    :cond_b
    :goto_5
    return-void

    .line 55267
    :cond_c
    check-cast v6, Lcom/facebook/ads/redexgen/X/Eq;

    sget-object v5, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v5, v0

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v5, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "aOStoZQ6HlGjIfWvjowDgm0JyWXySbfC"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    const-string v1, "db16XoSedMN3NVp1QVj7WgZqidqfP4Wc"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    goto/16 :goto_4

    .line 55268
    :cond_e
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 55269
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A07:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 55270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NZ;->getBodyImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A00:Landroid/view/View;

    .line 55271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 55272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 55273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5B;

    .line 55274
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5B;->A04()V

    .line 55275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 55276
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55277
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/NQ;

    if-eqz v0, :cond_10

    .line 55278
    check-cast v1, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A05()V

    .line 55279
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->bringChildToFront(Landroid/view/View;)V

    .line 55280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/NZ;->setVisibility(I)V

    .line 55281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v2, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Lcom/facebook/ads/redexgen/X/NZ;Lcom/facebook/ads/redexgen/X/XJ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    .line 55282
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(II)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tf;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Tf;-><init>(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/redexgen/X/cD;)V

    .line 55283
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A07(Lcom/facebook/ads/redexgen/X/Nb;)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    .line 55284
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A12()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 55285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Th;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/cD;)V

    goto/16 :goto_5

    .line 55286
    :cond_10
    check-cast v1, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    goto :goto_6
.end method

.method public final A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
    .locals 8

    .line 55287
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v3

    .line 55288
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/XJ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/XJ;->A0D(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 55289
    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/XJ;->A0C(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 55290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0C:Z

    .line 55291
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v6

    .line 55292
    .local p1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1P(Lcom/facebook/ads/MediaView;)V

    .line 55293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/NZ;->setVisibility(I)V

    .line 55294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/facebook/ads/redexgen/X/NZ;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 55295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 55296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 55297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5B;->A04()V

    .line 55298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 55299
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55300
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/NQ;

    if-eqz v0, :cond_5

    .line 55301
    check-cast v1, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A05()V

    .line 55302
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->bringChildToFront(Landroid/view/View;)V

    .line 55304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A00:Landroid/view/View;

    .line 55305
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/cD;->A13()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v2

    .line 55306
    .local p2, "adIcon":Lcom/facebook/ads/redexgen/X/JY;
    if-eqz v2, :cond_3

    .line 55307
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/cD;->A10()Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0I(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55308
    .local p1, "preloadedBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 55309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55310
    if-eqz p2, :cond_1

    .line 55311
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tb;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/Tb;-><init>(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/redexgen/X/cD;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->post(Ljava/lang/Runnable;)Z

    .line 55312
    .end local p1    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v0
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/Th;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/cD;)V

    .line 55313
    return-void

    .line 55314
    :cond_2
    invoke-direct {p0, v6, p2, v2}, Lcom/facebook/ads/redexgen/X/Th;->A0E(Lcom/facebook/ads/redexgen/X/cD;ZLcom/facebook/ads/redexgen/X/JY;)V

    goto :goto_1

    .line 55315
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/cD;->A14()Lcom/facebook/ads/redexgen/X/cE;

    move-result-object v7

    .line 55316
    .local p1, "adListener":Lcom/facebook/ads/redexgen/X/cE;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 55317
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    .line 55318
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/cD;->A0x()J

    move-result-wide v2

    .line 55319
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 55320
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 55321
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 55322
    if-eqz v7, :cond_4

    .line 55323
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Jl;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/facebook/ads/redexgen/X/JO;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 55324
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2e

    const/16 v1, 0x11

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55325
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    .line 55327
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0L:I

    const/16 v2, 0xc0

    const/16 v1, 0x17

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 55328
    const/16 v2, 0x102

    const/4 v1, 0x3

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1

    .line 55329
    :cond_5
    check-cast v1, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    goto/16 :goto_0
.end method

.method public final A0K()Z
    .locals 1

    .line 55330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A5U()Lcom/facebook/ads/redexgen/X/XJ;
    .locals 1

    .line 55331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    return-object v0
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 2

    .line 55332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 55333
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 55334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Lcom/facebook/ads/redexgen/X/P1;

    if-eqz v1, :cond_1

    .line 55335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 55336
    :cond_1
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 55337
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 55338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 55339
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 55340
    return-object p0
.end method

.method public final getAdContentsView()Landroid/view/View;
    .locals 1

    .line 55341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaHeight()I
    .locals 4

    .line 55342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NZ;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 55343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NZ;->getImageHeight()I

    move-result v0

    return v0

    .line 55344
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 55345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 55346
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 55347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v0

    return v0

    .line 55348
    :cond_2
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "3C5Zne3gt6SFfa7y1AnuQltffgpI3Oh8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final getMediaWidth()I
    .locals 4

    .line 55349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NZ;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 55350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NZ;->getImageWidth()I

    move-result v0

    return v0

    .line 55351
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 55352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 55353
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 55354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    return v0

    .line 55355
    :cond_2
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "pFreRfYdfw1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "pVUprXCJsnglf8IlGtX2XFBaJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaView;)V
    .locals 10

    .line 55356
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55357
    .local p0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    .line 55358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/XJ;->A0C(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 55359
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v1

    const/4 v3, 0x1

    move-object v9, p2

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 55360
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    .line 55361
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v6

    .line 55362
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v7

    .line 55363
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v8

    .line 55364
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Th;->A0A(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V

    .line 55365
    :goto_0
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/55;->A02(Z)V

    .line 55366
    return-void

    .line 55367
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    .line 55368
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    .line 55369
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v0

    .line 55370
    invoke-direct {p0, v2, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/Th;->A0B(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V

    .line 55371
    goto :goto_0

    .line 55372
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/Th;->A0C(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V

    .line 55373
    goto :goto_0

    .line 55374
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/Th;->A0D(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/MediaView;)V

    .line 55375
    goto :goto_0

    .line 55376
    :cond_3
    const/16 v2, 0x9b

    const/16 v1, 0x25

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 55377
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/55;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 55378
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Th;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 55379
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 5

    .line 55380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v1

    .line 55381
    .local p0, "currentWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v4

    .line 55382
    .local p1, "currentHeight":I
    if-lez v1, :cond_0

    if-lez v4, :cond_0

    .line 55383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    .line 55384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55385
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "Mgb6bOJjyiN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "MTEeDXbdwkPsq4eW7ABfM3WBi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55386
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    .line 55387
    :goto_0
    return-void

    .line 55388
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 2

    .line 55389
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Th;->A04:Lcom/facebook/ads/MediaViewListener;

    .line 55390
    if-nez p1, :cond_0

    .line 55391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5B;

    const/4 v0, 0x0

    .line 55392
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A08(Lcom/facebook/ads/redexgen/X/MH;)V

    .line 55393
    return-void

    .line 55394
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5B;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tg;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Tg;-><init>(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/MediaViewListener;)V

    .line 55395
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A08(Lcom/facebook/ads/redexgen/X/MH;)V

    .line 55396
    return-void
.end method

.method public final setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 4

    .line 55397
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0C:Z

    if-nez v0, :cond_3

    .line 55398
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0E:[Ljava/lang/String;

    const-string v1, "ifAS5bhxfK6Gg4eu5Yemnhg9EBEfp9jT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "R5YDbsM1msNnvJcIFydw3DY2O0brJ9d9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 55399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 55400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 55401
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5B;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    .line 55402
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A06(Lcom/facebook/ads/redexgen/X/JC;)V

    .line 55403
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 55404
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55405
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Th;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Th;->A07(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55407
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 55408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of v0, v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0B:Z

    .line 55409
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lh;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setId(I)V

    .line 55410
    return-void

    .line 55411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55412
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/16 v2, 0xd7

    const/16 v1, 0x2b

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
