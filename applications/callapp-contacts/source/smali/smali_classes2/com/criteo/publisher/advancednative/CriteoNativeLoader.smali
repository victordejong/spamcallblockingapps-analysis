.class public Lcom/criteo/publisher/advancednative/CriteoNativeLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

.field private final listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

.field private final logger:Lcom/criteo/publisher/logging/g;

.field private final publisherRenderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

.field private renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;-><init>(Lcom/criteo/publisher/model/NativeAdUnit;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/model/NativeAdUnit;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->logger:Lcom/criteo/publisher/logging/g;

    .line 78
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    .line 79
    new-instance v1, Lcom/criteo/publisher/advancednative/k;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, p2, v2}, Lcom/criteo/publisher/advancednative/k;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Ljava/lang/ref/Reference;)V

    iput-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    .line 80
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->publisherRenderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 81
    invoke-static {p1}, Lcom/criteo/publisher/advancednative/m;->a(Lcom/criteo/publisher/model/NativeAdUnit;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    return-void
.end method

.method private synthetic a(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdReceived(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method

.method static synthetic access$000(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/model/b0/n;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->handleNativeAssets(Lcom/criteo/publisher/model/b0/n;)V

    return-void
.end method

.method private doLoad(Lcom/criteo/publisher/Bid;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0, p1}, Lcom/criteo/publisher/advancednative/m;->a(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 180
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getIntegrationRegistry()Lcom/criteo/publisher/i/c;

    move-result-object v0

    sget-object v1, Lcom/criteo/publisher/i/a;->d:Lcom/criteo/publisher/i/a;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/i/c;->a(Lcom/criteo/publisher/i/a;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/criteo/publisher/Bid;->b()Lcom/criteo/publisher/model/b0/n;

    move-result-object p1

    .line 183
    :goto_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->handleNativeAssets(Lcom/criteo/publisher/model/b0/n;)V

    return-void
.end method

.method private doLoad(Lcom/criteo/publisher/context/ContextData;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0}, Lcom/criteo/publisher/advancednative/m;->a(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 155
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getIntegrationRegistry()Lcom/criteo/publisher/i/c;

    move-result-object v0

    sget-object v1, Lcom/criteo/publisher/i/a;->c:Lcom/criteo/publisher/i/a;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/i/c;->a(Lcom/criteo/publisher/i/a;)V

    .line 157
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getBidManager()Lcom/criteo/publisher/e;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    new-instance v2, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;

    invoke-direct {v2, p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    return-void
.end method

.method private getAdChoiceOverlay()Lcom/criteo/publisher/advancednative/b;
    .locals 1

    .line 233
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->s()Lcom/criteo/publisher/advancednative/b;

    move-result-object v0

    return-object v0
.end method

.method private getBidManager()Lcom/criteo/publisher/e;
    .locals 1

    .line 228
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->l()Lcom/criteo/publisher/e;

    move-result-object v0

    return-object v0
.end method

.method private static getImageLoaderHolder()Lcom/criteo/publisher/advancednative/h;
    .locals 1

    .line 238
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->t()Lcom/criteo/publisher/advancednative/h;

    move-result-object v0

    return-object v0
.end method

.method private getIntegrationRegistry()Lcom/criteo/publisher/i/c;
    .locals 1

    .line 243
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->u()Lcom/criteo/publisher/i/c;

    move-result-object v0

    return-object v0
.end method

.method private getNativeAdMapper()Lcom/criteo/publisher/advancednative/l;
    .locals 1

    .line 218
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->q()Lcom/criteo/publisher/advancednative/l;

    move-result-object v0

    return-object v0
.end method

.method private getRenderer()Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->publisherRenderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getAdChoiceOverlay()Lcom/criteo/publisher/advancednative/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/b;)V

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    return-object v0
.end method

.method private getUiThreadExecutor()Lcom/criteo/publisher/e/c;
    .locals 1

    .line 223
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object v0

    return-object v0
.end method

.method private handleNativeAssets(Lcom/criteo/publisher/model/b0/n;)V
    .locals 13

    if-nez p1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->notifyForFailureAsync()V

    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getNativeAdMapper()Lcom/criteo/publisher/advancednative/l;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getRenderer()Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    move-result-object v11

    .line 1065
    new-instance v6, Lcom/criteo/publisher/advancednative/j;

    .line 1066
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->g()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/criteo/publisher/advancednative/l;->b:Lcom/criteo/publisher/advancednative/i;

    invoke-direct {v6, v2, v1, v3}, Lcom/criteo/publisher/advancednative/j;-><init>(Ljava/lang/Iterable;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/i;)V

    .line 1070
    new-instance v8, Lcom/criteo/publisher/advancednative/c;

    .line 1071
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/criteo/publisher/model/b0/r;->b()Ljava/net/URI;

    move-result-object v2

    iget-object v3, v0, Lcom/criteo/publisher/advancednative/l;->d:Lcom/criteo/publisher/advancednative/f;

    invoke-direct {v8, v2, v1, v3}, Lcom/criteo/publisher/advancednative/c;-><init>(Ljava/net/URI;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/f;)V

    .line 1076
    new-instance v9, Lcom/criteo/publisher/advancednative/a;

    .line 1077
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->l()Ljava/net/URI;

    move-result-object v2

    iget-object v3, v0, Lcom/criteo/publisher/advancednative/l;->d:Lcom/criteo/publisher/advancednative/f;

    invoke-direct {v9, v2, v1, v3}, Lcom/criteo/publisher/advancednative/a;-><init>(Ljava/net/URI;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/f;)V

    .line 1082
    iget-object v1, v0, Lcom/criteo/publisher/advancednative/l;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/criteo/publisher/model/b0/r;->e()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V

    .line 1083
    iget-object v1, v0, Lcom/criteo/publisher/advancednative/l;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->f()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V

    .line 1084
    iget-object v1, v0, Lcom/criteo/publisher/advancednative/l;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->m()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V

    .line 1086
    new-instance v1, Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    iget-object v5, v0, Lcom/criteo/publisher/advancednative/l;->a:Lcom/criteo/publisher/advancednative/q;

    iget-object v7, v0, Lcom/criteo/publisher/advancednative/l;->c:Lcom/criteo/publisher/advancednative/e;

    iget-object v10, v0, Lcom/criteo/publisher/advancednative/l;->e:Lcom/criteo/publisher/advancednative/b;

    iget-object v12, v0, Lcom/criteo/publisher/advancednative/l;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;-><init>(Lcom/criteo/publisher/model/b0/n;Lcom/criteo/publisher/advancednative/q;Lcom/criteo/publisher/advancednative/j;Lcom/criteo/publisher/advancednative/e;Lcom/criteo/publisher/advancednative/n;Lcom/criteo/publisher/advancednative/n;Lcom/criteo/publisher/advancednative/b;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/RendererHelper;)V

    .line 196
    invoke-direct {p0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->notifyForAdAsync(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method

.method public static synthetic lambda$BJcgVvav5sviXc-UDLxnWFpFBHs(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->a(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method

.method public static synthetic lambda$_mIWf17QnqUkmoIdnUN7E8yNdsU(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->a()V

    return-void
.end method

.method private notifyForAdAsync(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 2

    .line 201
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getUiThreadExecutor()Lcom/criteo/publisher/e/c;

    move-result-object v0

    new-instance v1, Lcom/criteo/publisher/advancednative/-$$Lambda$CriteoNativeLoader$BJcgVvav5sviXc-UDLxnWFpFBHs;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/advancednative/-$$Lambda$CriteoNativeLoader$BJcgVvav5sviXc-UDLxnWFpFBHs;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyForFailureAsync()V
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getUiThreadExecutor()Lcom/criteo/publisher/e/c;

    move-result-object v0

    new-instance v1, Lcom/criteo/publisher/advancednative/-$$Lambda$CriteoNativeLoader$_mIWf17QnqUkmoIdnUN7E8yNdsU;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/advancednative/-$$Lambda$CriteoNativeLoader$_mIWf17QnqUkmoIdnUN7E8yNdsU;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setImageLoader(Lcom/criteo/publisher/advancednative/ImageLoader;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getImageLoaderHolder()Lcom/criteo/publisher/advancednative/h;

    move-result-object v0

    .line 1045
    iget-object v0, v0, Lcom/criteo/publisher/advancednative/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createEmptyNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getRenderer()Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public loadAd()V
    .locals 1

    .line 135
    new-instance v0, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v0}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->loadAd(Lcom/criteo/publisher/context/ContextData;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/Bid;)V
    .locals 0

    .line 172
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->doLoad(Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 174
    invoke-static {p1}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 0

    .line 147
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->doLoad(Lcom/criteo/publisher/context/ContextData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 149
    invoke-static {p1}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    return-void
.end method
