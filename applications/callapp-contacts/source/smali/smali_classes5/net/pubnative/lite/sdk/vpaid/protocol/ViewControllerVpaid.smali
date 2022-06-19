.class public Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

.field private mEndCardLayout:Landroid/view/View;

.field private mEndCardView:Landroid/widget/ImageView;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdController;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;)Lnet/pubnative/lite/sdk/vpaid/VideoAdController;
    .locals 0

    .line 17
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mAdController:Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    return-object p0
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->showControls()V

    return-void
.end method

.method private showControls()V
    .locals 2

    .line 69
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mEndCardLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public buildVideoAdView(Lnet/pubnative/lite/sdk/vpaid/VideoAdView;Landroid/webkit/WebView;)V
    .locals 4

    .line 30
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mWebView:Landroid/webkit/WebView;

    .line 33
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->removeAllViews()V

    .line 34
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lnet/pubnative/lite/sdk/core/R$layout;->end_card:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mEndCardLayout:Landroid/view/View;

    const/16 v2, 0x8

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mEndCardLayout:Landroid/view/View;

    sget v2, Lnet/pubnative/lite/sdk/core/R$id;->endCardView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mEndCardView:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mEndCardLayout:Landroid/view/View;

    sget v2, Lnet/pubnative/lite/sdk/core/R$id;->closeView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    new-instance v2, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid$1;

    invoke-direct {v2, p0}, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid$1;-><init>(Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mEndCardLayout:Landroid/view/View;

    sget v2, Lnet/pubnative/lite/sdk/core/R$id;->replayView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    new-instance v2, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid$2;

    invoke-direct {v2, p0}, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid$2;-><init>(Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mEndCardLayout:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p1, p2, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/high16 p2, -0x1000000

    .line 65
    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->setBackgroundColor(I)V

    return-void
.end method

.method public showEndCard(Ljava/lang/String;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mEndCardLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->mEndCardView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils;->setScaledImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
