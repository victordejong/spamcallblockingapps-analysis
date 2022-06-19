.class public Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;
.super Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
.source "SourceFile"


# instance fields
.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/mopub/nativeads/MoPubNative;

.field private p:Lcom/mopub/mobileads/MoPubView;

.field private final q:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p7}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;-><init>(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->m:I

    .line 140
    new-instance p1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;-><init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->q:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->p:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->p:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->o:Lcom/mopub/nativeads/MoPubNative;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/callapp/contacts/util/ads/JSONAdUnit;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->getAdUnitId()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/mopub/nativeads/MoPubNative;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->o:Lcom/mopub/nativeads/MoPubNative;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->q:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)I
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->m:I

    return v0
.end method

.method static synthetic f(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V
    .locals 3

    .line 1227
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad loading failed for idx: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 1229
    iget v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->m:I

    .line 1230
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->a:Landroid/os/Handler;

    iget-object p0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getAdUnitId()Lcom/callapp/contacts/util/ads/JSONAdUnit;
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->n:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 235
    iget v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->m:I

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-object v1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->n:Ljava/util/List;

    iget v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->m:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/ads/JSONAdUnit;

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->c()V

    .line 57
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$1;-><init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->n:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->o:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->o:Lcom/mopub/nativeads/MoPubNative;

    .line 73
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$2;-><init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getAdRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 85
    new-instance v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;-><init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V

    return-object v0
.end method
