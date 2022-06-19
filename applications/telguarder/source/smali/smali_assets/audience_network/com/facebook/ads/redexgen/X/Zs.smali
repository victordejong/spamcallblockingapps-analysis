.class public final Lcom/facebook/ads/redexgen/X/Zs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zh;->A0Q()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zh;)V
    .locals 0

    .line 66514
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 66515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zh;->A02(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66516
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66517
    :goto_0
    return-object v0

    .line 66518
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
