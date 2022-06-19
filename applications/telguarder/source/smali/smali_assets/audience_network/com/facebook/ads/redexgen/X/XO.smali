.class public final Lcom/facebook/ads/redexgen/X/XO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XF;->A0I()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XF;)V
    .locals 0

    .line 65067
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 65068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65069
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65070
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_1

    .line 65071
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65072
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
