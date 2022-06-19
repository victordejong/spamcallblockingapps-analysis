.class public Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PNAPIContentInfoView"


# instance fields
.field private mCloseTask:Ljava/lang/Runnable;

.field private mContentInfoIcon:Landroid/widget/ImageView;

.field private mContentInfoText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$1;-><init>(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mCloseTask:Ljava/lang/Runnable;

    .line 60
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$1;

    invoke-direct {p2, p0}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$1;-><init>(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mCloseTask:Ljava/lang/Runnable;

    .line 65
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p2, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$1;

    invoke-direct {p2, p0}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$1;-><init>(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mCloseTask:Ljava/lang/Runnable;

    .line 70
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mContentInfoIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public closeLayout()V
    .locals 2

    .line 87
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mHandler:Landroid/os/Handler;

    .line 76
    sget v0, Lnet/pubnative/lite/sdk/source/pnapi/R$layout;->content_info_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 77
    sget v0, Lnet/pubnative/lite/sdk/source/pnapi/R$id;->ic_context_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mContentInfoIcon:Landroid/widget/ImageView;

    .line 78
    sget v0, Lnet/pubnative/lite/sdk/source/pnapi/R$id;->tv_context_text:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->openLayout()V

    return-void
.end method

.method public openLayout()V
    .locals 4

    .line 82
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mCloseTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setContextText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setIconClickUrl(Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    new-instance v1, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$3;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$3;-><init>(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 4

    .line 91
    new-instance v0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;-><init>()V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mContentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->mContentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    new-instance v3, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$2;

    invoke-direct {v3, p0}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$2;-><init>(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->download(Ljava/lang/String;IILnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;)V

    return-void
.end method
