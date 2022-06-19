.class public final Lcom/facebook/ads/redexgen/X/aE;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NX;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NX;)V
    .locals 0

    .line 67132
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 67133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/NX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05(Lcom/facebook/ads/redexgen/X/NX;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67134
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/NX;

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A04(Lcom/facebook/ads/redexgen/X/NX;ILjava/lang/String;)V

    .line 67135
    :cond_0
    return-void
.end method
