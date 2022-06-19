.class public final Lcom/facebook/ads/redexgen/X/NM;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NN;->A0F()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NN;)V
    .locals 0

    .line 45059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NM;->A00:Lcom/facebook/ads/redexgen/X/NN;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 45060
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A2O:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NN;->A03(I)V

    .line 45061
    const/4 v0, 0x1

    return v0
.end method
