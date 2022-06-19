.class public final Lcom/facebook/ads/redexgen/X/Sa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SY;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/M7;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SY;Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 0

    .line 52501
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/SY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAz(Ljava/lang/String;)V
    .locals 2

    .line 52502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/SY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SY;->A01(Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->setProgress(I)V

    .line 52503
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/SY;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A06(Lcom/facebook/ads/redexgen/X/SY;Z)Z

    .line 52504
    return-void
.end method

.method public final AB1(Ljava/lang/String;)V
    .locals 2

    .line 52505
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/SY;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A06(Lcom/facebook/ads/redexgen/X/SY;Z)Z

    .line 52506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/SY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/N9;->setUrl(Ljava/lang/String;)V

    .line 52507
    return-void
.end method

.method public final ABI(I)V
    .locals 1

    .line 52508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/SY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SY;->A05(Lcom/facebook/ads/redexgen/X/SY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/SY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SY;->A01(Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NA;->setProgress(I)V

    .line 52510
    :cond_0
    return-void
.end method

.method public final ABN(Ljava/lang/String;)V
    .locals 1

    .line 52511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/SY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/N9;->setTitle(Ljava/lang/String;)V

    .line 52512
    return-void
.end method

.method public final ABP()V
    .locals 2

    .line 52513
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:Lcom/facebook/ads/redexgen/X/M7;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A9d(I)V

    .line 52514
    return-void
.end method
