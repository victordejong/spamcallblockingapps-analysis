.class public final Lcom/facebook/ads/redexgen/X/L6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L5;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/os/Handler;

.field public final A04:Lcom/facebook/ads/redexgen/X/L5;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/L6;->A02()V

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/L5;)V
    .locals 1

    .line 42222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/L6;-><init>(ILcom/facebook/ads/redexgen/X/L5;Landroid/os/Handler;)V

    .line 42223
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/L5;Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 42224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:Z

    .line 42226
    int-to-float v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:F

    .line 42227
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/L6;->A04:Lcom/facebook/ads/redexgen/X/L5;

    .line 42228
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/L6;->A03:Landroid/os/Handler;

    .line 42229
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/L6;)Landroid/os/Handler;
    .locals 0

    .line 42230
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/L6;->A03:Landroid/os/Handler;

    return-object p0
.end method

.method private A01()V
    .locals 4

    .line 42231
    iget v1, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:F

    const/high16 v0, 0x3e800000    # 0.25f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:F

    .line 42232
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L6;->A04:Lcom/facebook/ads/redexgen/X/L5;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:F

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/L5;->ABH(F)V

    .line 42233
    iget v1, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:F

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/L6;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/L6;->A05:[Ljava/lang/String;

    const-string v1, "KuCOx1ArmKJG2Js90Y8iwcXaowa3uSzZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 42234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:Z

    .line 42235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A04:Lcom/facebook/ads/redexgen/X/L5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/L5;->A9n()V

    .line 42236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:Z

    .line 42237
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AKWVUs1l0Ice5I6VX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CXPBWDMo1Zqj2yCW5W30Ut48PEWYgYey"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QYYsUNIn7qky9LY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uhDWqwwqE26XK4rQkizWNR4dlHqM4UZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZNpftHLPxc7R9PnANzOwdg7R2ap4pSI6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3ke"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xa09Mpjas6OdUQMP5Qo7kdS83JfCqy78"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "u6CBuCaaqyjpN4LkQhRqLLvzhKEDnG9S"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L6;->A05:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/L6;)V
    .locals 0

    .line 42238
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L6;->A01()V

    return-void
.end method


# virtual methods
.method public final A04()F
    .locals 1

    .line 42239
    iget v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:F

    return v0
.end method

.method public final A05()Z
    .locals 2

    .line 42240
    iget v1, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:F

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A06()Z
    .locals 1

    .line 42241
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:Z

    return v0
.end method

.method public final A07()Z
    .locals 2

    .line 42242
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L6;->A06()Z

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 42243
    return v0

    .line 42244
    :cond_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:Z

    .line 42245
    const/4 v0, 0x1

    return v0
.end method

.method public final A08()Z
    .locals 5

    .line 42246
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L6;->A05()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:Z

    if-nez v0, :cond_0

    .line 42247
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:Z

    .line 42248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A04:Lcom/facebook/ads/redexgen/X/L5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/L5;->A9n()V

    .line 42249
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L6;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L6;->A06()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42250
    :cond_1
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/L6;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/L6;->A05:[Ljava/lang/String;

    const-string v1, "u6tCNg8GXSpiTqjQspDcQdpU9nt4kRaX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "uRN5Zlx2bfjM01c7Y9BPyYrHFfBp2TpI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42251
    :cond_3
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:Z

    .line 42252
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L6;->A04:Lcom/facebook/ads/redexgen/X/L5;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:F

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/L5;->ABH(F)V

    .line 42253
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A03:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/cV;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/cV;-><init>(Lcom/facebook/ads/redexgen/X/L6;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42254
    return v4
.end method
