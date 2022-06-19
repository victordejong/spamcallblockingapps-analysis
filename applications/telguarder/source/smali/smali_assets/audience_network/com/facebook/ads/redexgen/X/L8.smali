.class public final Lcom/facebook/ads/redexgen/X/L8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L7;
    }
.end annotation


# instance fields
.field public A00:F

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/os/Handler;

.field public final A04:Lcom/facebook/ads/redexgen/X/L7;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/L7;)V
    .locals 1

    .line 42208
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/L8;-><init>(ILcom/facebook/ads/redexgen/X/L7;Landroid/os/Handler;)V

    .line 42209
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/L7;Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 42210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A02:Z

    .line 42212
    int-to-float v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:F

    .line 42213
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/L8;->A04:Lcom/facebook/ads/redexgen/X/L7;

    .line 42214
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/L8;->A03:Landroid/os/Handler;

    .line 42215
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/L8;)Landroid/os/Handler;
    .locals 0

    .line 42216
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/L8;->A03:Landroid/os/Handler;

    return-object p0
.end method

.method private A01()V
    .locals 2

    .line 42217
    iget v1, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:F

    const/high16 v0, 0x3e800000    # 0.25f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:F

    .line 42218
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L8;->A04:Lcom/facebook/ads/redexgen/X/L7;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:F

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/L7;->ABH(F)V

    .line 42219
    iget v1, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:F

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A01:Z

    if-nez v0, :cond_0

    .line 42220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A01:Z

    .line 42221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A04:Lcom/facebook/ads/redexgen/X/L7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/L7;->A9m()V

    .line 42222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A02:Z

    .line 42223
    :cond_0
    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/L8;)V
    .locals 0

    .line 42224
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L8;->A01()V

    return-void
.end method


# virtual methods
.method public final A03()F
    .locals 1

    .line 42225
    iget v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:F

    return v0
.end method

.method public final A04()Z
    .locals 2

    .line 42226
    iget v1, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:F

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

.method public final A05()Z
    .locals 1

    .line 42227
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A02:Z

    return v0
.end method

.method public final A06()Z
    .locals 2

    .line 42228
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L8;->A05()Z

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 42229
    return v0

    .line 42230
    :cond_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A02:Z

    .line 42231
    const/4 v0, 0x1

    return v0
.end method

.method public final A07()Z
    .locals 5

    .line 42232
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L8;->A04()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A01:Z

    if-nez v0, :cond_0

    .line 42233
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/L8;->A01:Z

    .line 42234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A04:Lcom/facebook/ads/redexgen/X/L7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/L7;->A9m()V

    .line 42235
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L8;->A04()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L8;->A05()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42236
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 42237
    :cond_2
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/L8;->A02:Z

    .line 42238
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L8;->A04:Lcom/facebook/ads/redexgen/X/L7;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:F

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/L7;->ABH(F)V

    .line 42239
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/L8;->A03:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sn;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Sn;-><init>(Lcom/facebook/ads/redexgen/X/L8;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42240
    return v4
.end method
