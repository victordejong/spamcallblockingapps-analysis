.class public final Lcom/facebook/ads/redexgen/X/Zp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zh;->A0M()Lcom/facebook/ads/redexgen/X/6e;
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

    .line 66494
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 66495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zh;->A03(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66496
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Zh;->A03(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66497
    :goto_0
    return-object v0

    .line 66498
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
