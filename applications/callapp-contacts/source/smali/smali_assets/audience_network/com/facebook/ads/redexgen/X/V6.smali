.class public final Lcom/facebook/ads/redexgen/X/V6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/V9;->A0I()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/V9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/V9;)V
    .locals 0

    .line 56268
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/V9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 56269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/V9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V9;->A01(Lcom/facebook/ads/redexgen/X/V9;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56270
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/V9;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/V9;->A01(Lcom/facebook/ads/redexgen/X/V9;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 56271
    :goto_0
    return-object v0

    .line 56272
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/V9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A06:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
