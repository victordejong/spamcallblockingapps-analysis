.class final Lcom/mopub/nativeads/FacebookAdRenderer$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/FacebookAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/RelativeLayout;

.field f:Lcom/facebook/ads/MediaView;

.field g:Lcom/facebook/ads/MediaView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdChoicesContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getAdIconView()Lcom/facebook/ads/MediaView;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->g:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method public final getAdvertiserNameView()Landroid/widget/TextView;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getCallToActionView()Landroid/widget/TextView;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMainView()Landroid/view/View;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->a:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaView()Lcom/facebook/ads/MediaView;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->f:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method public final getSponsoredLabelView()Landroid/widget/TextView;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->b:Landroid/widget/TextView;

    return-object v0
.end method
