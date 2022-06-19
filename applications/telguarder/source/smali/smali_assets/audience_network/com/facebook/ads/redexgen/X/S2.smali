.class public final Lcom/facebook/ads/redexgen/X/S2;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NS;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NS;)V
    .locals 0

    .line 51235
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S2;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 51236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S2;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A0A(Lcom/facebook/ads/redexgen/X/NS;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51237
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S2;->A00:Lcom/facebook/ads/redexgen/X/NS;

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A07(Lcom/facebook/ads/redexgen/X/NS;ILjava/lang/String;)V

    .line 51238
    :cond_0
    return-void
.end method
