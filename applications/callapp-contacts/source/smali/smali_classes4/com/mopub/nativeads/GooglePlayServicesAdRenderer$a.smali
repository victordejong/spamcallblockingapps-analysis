.class final Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final m:Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/FrameLayout;

.field l:Lcom/google/android/gms/ads/formats/MediaView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    invoke-direct {v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->m:Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/GooglePlayServicesViewBinder;)Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;
    .locals 3

    .line 311
    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    invoke-direct {v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;-><init>()V

    .line 312
    iput-object p0, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->a:Landroid/view/View;

    .line 314
    :try_start_0
    iget v1, p1, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->c:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->b:Landroid/widget/TextView;

    .line 315
    iget v1, p1, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->d:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->c:Landroid/widget/TextView;

    .line 316
    iget v1, p1, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->e:I

    .line 317
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->d:Landroid/widget/TextView;

    .line 319
    iget v1, p1, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->f:I

    .line 320
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->e:Landroid/widget/ImageView;

    .line 321
    iget v1, p1, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->g:I

    .line 322
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->f:Landroid/widget/ImageView;

    .line 325
    iget v1, p1, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->b:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/formats/MediaView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->l:Lcom/google/android/gms/ads/formats/MediaView;

    .line 327
    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->i:Ljava/util/Map;

    const-string v1, "key_star_rating"

    .line 328
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->g:Landroid/widget/TextView;

    :cond_0
    const-string v1, "key_advertiser"

    .line 333
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->h:Landroid/widget/TextView;

    :cond_1
    const-string v1, "key_store"

    .line 338
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->i:Landroid/widget/TextView;

    :cond_2
    const-string v1, "key_price"

    .line 342
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 344
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->j:Landroid/widget/TextView;

    :cond_3
    const-string v1, "ad_choices_container"

    .line 347
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 350
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    iput-object p0, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->k:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    .line 354
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Could not cast from id in ViewBinder to expected View type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 356
    sget-object p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->m:Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    return-object p0
.end method
