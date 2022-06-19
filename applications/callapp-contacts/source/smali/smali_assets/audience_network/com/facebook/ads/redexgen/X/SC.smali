.class public final Lcom/facebook/ads/redexgen/X/SC;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/1j;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1j;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1j;)V
    .locals 0

    .line 52059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Lcom/facebook/ads/redexgen/X/1j;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 52060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Lcom/facebook/ads/redexgen/X/1j;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/1j;->A00:Z

    if-nez v0, :cond_0

    .line 52061
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Lcom/facebook/ads/redexgen/X/1j;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/1j;->A03(Lcom/facebook/ads/redexgen/X/1j;Landroid/webkit/WebResourceError;)V

    .line 52062
    :cond_0
    return-void
.end method
