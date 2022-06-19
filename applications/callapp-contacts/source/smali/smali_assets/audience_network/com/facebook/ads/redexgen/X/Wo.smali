.class public final Lcom/facebook/ads/redexgen/X/Wo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Wq;->A0Q()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wq;)V
    .locals 0

    .line 57328
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wo;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 57329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wo;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wq;->A03(Lcom/facebook/ads/redexgen/X/Wq;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57330
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wo;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Wq;->A03(Lcom/facebook/ads/redexgen/X/Wq;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 57331
    :goto_0
    return-object v0

    .line 57332
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wo;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
