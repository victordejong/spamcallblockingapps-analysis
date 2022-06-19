.class public final Lcom/facebook/ads/redexgen/X/9A;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9B;->A00()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9B;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9B;)V
    .locals 0

    .line 19390
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9A;->A00:Lcom/facebook/ads/redexgen/X/9B;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 19391
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A2N:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A03(I)V

    .line 19392
    const/4 v0, 0x1

    return v0
.end method
