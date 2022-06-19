.class public final Lcom/facebook/ads/redexgen/X/br;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/75;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bp;->A0A(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bp;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Wm;

.field public final synthetic A02:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bp;Lcom/facebook/ads/redexgen/X/Wm;Z)V
    .locals 0

    .line 70415
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/bp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/br;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/br;->A02:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Z)V
    .locals 5

    .line 70416
    if-eqz p1, :cond_1

    .line 70417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/br;->A02:Z

    if-eqz v0, :cond_0

    .line 70418
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/bp;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/br;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70419
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/bp;->A01(Lcom/facebook/ads/redexgen/X/bp;)Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bs;-><init>(Lcom/facebook/ads/redexgen/X/br;)V

    .line 70420
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;ILcom/facebook/ads/redexgen/X/OL;)Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v0

    .line 70421
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/bp;->A05(Lcom/facebook/ads/redexgen/X/bp;Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/ON;

    .line 70422
    :goto_0
    return-void

    .line 70423
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/bp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bp;->A03(Lcom/facebook/ads/redexgen/X/bp;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->A9M()V

    goto :goto_0

    .line 70424
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/bp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bp;->A03(Lcom/facebook/ads/redexgen/X/bp;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1a;->A9L(Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method


# virtual methods
.method public final A9g()V
    .locals 1

    .line 70425
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Z)V

    .line 70426
    return-void
.end method

.method public final A9n()V
    .locals 1

    .line 70427
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Z)V

    .line 70428
    return-void
.end method
