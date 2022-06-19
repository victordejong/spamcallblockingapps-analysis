.class public Lcom/mopub/nativeads/PangleAdNativeViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mopub/nativeads/PangleAdNativeViewHolder;


# instance fields
.field public mAdvertiserNameView:Landroid/widget/TextView;

.field public mCallToActionView:Landroid/widget/TextView;

.field public mDescription:Landroid/widget/TextView;

.field public mIcon:Landroid/widget/ImageView;

.field public mLogoView:Landroid/widget/ImageView;

.field public mMediaView:Lcom/bytedance/sdk/openadsdk/adapter/MediaView;

.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/PangleAdNativeViewHolder;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->a:Lcom/mopub/nativeads/PangleAdNativeViewHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;Lcom/mopub/nativeads/PangleAdViewBinder;)Lcom/mopub/nativeads/PangleAdNativeViewHolder;
    .locals 3

    .line 44
    new-instance v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/PangleAdNativeViewHolder;-><init>()V

    .line 46
    :try_start_0
    iget v1, p1, Lcom/mopub/nativeads/PangleAdViewBinder;->mTitleId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 47
    iget v1, p1, Lcom/mopub/nativeads/PangleAdViewBinder;->mDescriptionTextId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mDescription:Landroid/widget/TextView;

    .line 48
    iget v1, p1, Lcom/mopub/nativeads/PangleAdViewBinder;->mCallToActionId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    .line 49
    iget v1, p1, Lcom/mopub/nativeads/PangleAdViewBinder;->mSourceId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mAdvertiserNameView:Landroid/widget/TextView;

    .line 50
    iget v1, p1, Lcom/mopub/nativeads/PangleAdViewBinder;->mIconImageId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 51
    iget v1, p1, Lcom/mopub/nativeads/PangleAdViewBinder;->mLogoViewId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mLogoView:Landroid/widget/ImageView;

    .line 52
    iget p1, p1, Lcom/mopub/nativeads/PangleAdViewBinder;->mMediaViewId:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/adapter/MediaView;

    iput-object p0, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mMediaView:Lcom/bytedance/sdk/openadsdk/adapter/MediaView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 55
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Could not cast from id in PangleAdViewBinder to expected View type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 57
    sget-object p0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->a:Lcom/mopub/nativeads/PangleAdNativeViewHolder;

    return-object p0
.end method
