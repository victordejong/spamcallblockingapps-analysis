.class public Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/presenter/AdPresenter;


# instance fields
.field private final mAd:Lnet/pubnative/lite/sdk/models/Ad;

.field private final mContext:Landroid/content/Context;

.field private mImpressionListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;

.field private mIsDestroyed:Z

.field private mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

.field private mLoaded:Z

.field private mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

.field private final mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

.field private mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mLoaded:Z

    .line 132
    new-instance v0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter$1;-><init>(Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    .line 55
    iput-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mIsDestroyed:Z

    return p0
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mLoaded:Z

    return p0
.end method

.method static synthetic access$102(Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;)Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;
    .locals 0

    .line 42
    iget-object p0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    return-object p0
.end method

.method static synthetic access$300(Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;)Landroid/view/View;
    .locals 0

    .line 42
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->buildView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;)Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mImpressionListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;

    return-object p0
.end method

.method private buildView()Landroid/view/View;
    .locals 4

    .line 115
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 117
    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v2, -0x1000000

    .line 119
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 121
    iget-object v2, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lnet/pubnative/lite/sdk/models/Ad;->getContentInfoContainer(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 97
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mIsDestroyed:Z

    return-void
.end method

.method public getAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    .line 71
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    return-object v0
.end method

.method public load()V
    .locals 3

    .line 76
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mIsDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "VastMRectPresenter is destroyed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mAd:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/models/Ad;->getVast()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    .line 81
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    .line 82
    iget-object v1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->bindView(Lnet/pubnative/lite/sdk/vpaid/VideoAdView;)V

    .line 83
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setAdListener(Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;)V

    .line 85
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/Ad;->getZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getVideoAdCache()Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    move-result-object v0

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/Ad;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;->remove(Ljava/lang/String;)Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setVideoCacheItem(Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->load()V

    return-void
.end method

.method public setImpressionListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mImpressionListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;

    return-void
.end method

.method public setListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    return-void
.end method

.method public startTracking()V
    .locals 1

    .line 106
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->show()V

    return-void
.end method

.method public stopTracking()V
    .locals 1

    .line 111
    iget-object v0, p0, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->dismiss()V

    return-void
.end method
