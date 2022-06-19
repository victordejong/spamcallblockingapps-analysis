.class public final Lcom/facebook/ads/redexgen/X/UE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UO;->A0R()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UO;)V
    .locals 0

    .line 55845
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UE;->A00:Lcom/facebook/ads/redexgen/X/UO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 55846
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    .line 55847
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UE;->A00:Lcom/facebook/ads/redexgen/X/UO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 55848
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A00:Lcom/facebook/ads/redexgen/X/UO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UO;->A02(Lcom/facebook/ads/redexgen/X/UO;)Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55849
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UE;->A00:Lcom/facebook/ads/redexgen/X/UO;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/UO;->A02(Lcom/facebook/ads/redexgen/X/UO;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 55850
    :goto_0
    return-object v0

    .line 55851
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UE;->A00:Lcom/facebook/ads/redexgen/X/UO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
