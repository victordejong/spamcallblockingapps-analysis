.class public Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoAdProcessor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;->prepare(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;)V

    return-void
.end method

.method private getAdSpotDimensions(Landroid/content/Context;Landroid/view/View;)Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;
    .locals 1

    if-eqz p2, :cond_0

    .line 57
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-direct {p1, v0, p2}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;-><init>(II)V

    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 60
    new-instance p2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p2, v0, p1}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;-><init>(II)V

    return-object p2
.end method

.method private prepare(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;)V
    .locals 2

    .line 37
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;-><init>()V

    .line 38
    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$2;

    invoke-direct {v1, p0, p3, p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$2;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;)V

    invoke-virtual {v0, p2, p1, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->load(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;)V

    return-void
.end method


# virtual methods
.method public process(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;)V
    .locals 1

    .line 20
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;

    invoke-direct {p0, p1, p3}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;->getAdSpotDimensions(Landroid/content/Context;Landroid/view/View;)Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)V

    .line 21
    new-instance p3, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$1;

    invoke-direct {p3, p0, p1, p4}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$1;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;)V

    invoke-virtual {v0, p2, p3}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->parseResponse(Ljava/lang/String;Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;)V

    return-void
.end method
