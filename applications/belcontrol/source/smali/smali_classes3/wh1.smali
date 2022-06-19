.class public Lwh1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwh1$c;
    }
.end annotation


# static fields
.field public static final m:[I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lei1<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field public e:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public f:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public g:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public h:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public i:Lwh1$c;

.field public j:Lcom/mopub/nativeads/RequestParameters;

.field public k:Lcom/mopub/nativeads/MoPubNative;

.field public final l:Lcom/mopub/nativeads/AdRendererRegistry;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lwh1;->m:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0xbb8
        0x1388
        0x61a8
        0xea60
        0x493e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-direct {v2}, Lcom/mopub/nativeads/AdRendererRegistry;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lwh1;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lei1<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;",
            "Landroid/os/Handler;",
            "Lcom/mopub/nativeads/AdRendererRegistry;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwh1;->a:Ljava/util/List;

    iput-object p2, p0, Lwh1;->b:Landroid/os/Handler;

    new-instance p1, Lwh1$a;

    invoke-direct {p1, p0}, Lwh1$a;-><init>(Lwh1;)V

    iput-object p1, p0, Lwh1;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lwh1;->l:Lcom/mopub/nativeads/AdRendererRegistry;

    new-instance p1, Lwh1$b;

    invoke-direct {p1, p0}, Lwh1$b;-><init>(Lwh1;)V

    iput-object p1, p0, Lwh1;->d:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    const/4 p1, 0x0

    iput p1, p0, Lwh1;->g:I

    invoke-virtual {p0}, Lwh1;->n()V

    return-void
.end method

.method public static synthetic a(Lwh1;)Lcom/mopub/nativeads/MoPubNative;
    .locals 0

    iget-object p0, p0, Lwh1;->k:Lcom/mopub/nativeads/MoPubNative;

    return-object p0
.end method

.method public static synthetic b(Lwh1;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lwh1;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lwh1;)Lwh1$c;
    .locals 0

    iget-object p0, p0, Lwh1;->i:Lwh1$c;

    return-object p0
.end method

.method public static synthetic d(Lwh1;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lwh1;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e(Lwh1;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lwh1;->b:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lwh1;->k:Lcom/mopub/nativeads/MoPubNative;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    iput-object v1, p0, Lwh1;->k:Lcom/mopub/nativeads/MoPubNative;

    :cond_0
    iput-object v1, p0, Lwh1;->j:Lcom/mopub/nativeads/RequestParameters;

    iget-object v0, p0, Lwh1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lei1;

    iget-object v1, v1, Lei1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lwh1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lwh1;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lwh1;->e:Z

    iput v1, p0, Lwh1;->g:I

    invoke-virtual {p0}, Lwh1;->n()V

    return-void
.end method

.method public g()Lcom/mopub/nativeads/NativeAd;
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lwh1;->e:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lwh1;->f:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lwh1;->b:Landroid/os/Handler;

    iget-object v3, p0, Lwh1;->c:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v2, p0, Lwh1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lwh1;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lei1;

    iget-wide v3, v2, Lei1;->b:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xdbba00

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    iget-object v0, v2, Lei1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1

    iget-object v0, p0, Lwh1;->l:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I
    .locals 1

    iget-object v0, p0, Lwh1;->l:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result p1

    return p1
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lwh1;->l:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getAdRendererCount()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget v0, p0, Lwh1;->h:I

    sget-object v1, Lwh1;->m:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lwh1;->h:I

    :cond_0
    iget v0, p0, Lwh1;->h:I

    aget v0, v1, v0

    return v0
.end method

.method public j(Landroid/app/Activity;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 2

    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lwh1;->d:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    invoke-virtual {p0, p3, v0}, Lwh1;->k(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V

    return-void
.end method

.method public k(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lwh1;->f()V

    iget-object v0, p0, Lwh1;->l:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererIterable()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/MoPubAdRenderer;

    invoke-virtual {p2, v1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lwh1;->j:Lcom/mopub/nativeads/RequestParameters;

    iput-object p2, p0, Lwh1;->k:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {p0}, Lwh1;->m()V

    return-void
.end method

.method public l(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1

    iget-object v0, p0, Lwh1;->l:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    iget-object v0, p0, Lwh1;->k:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lwh1;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwh1;->k:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwh1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput-boolean v1, p0, Lwh1;->e:Z

    iget-object v0, p0, Lwh1;->k:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lwh1;->j:Lcom/mopub/nativeads/RequestParameters;

    iget v2, p0, Lwh1;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lwh1;->h:I

    return-void
.end method

.method public o(Lwh1$c;)V
    .locals 0

    iput-object p1, p0, Lwh1;->i:Lwh1$c;

    return-void
.end method

.method public p()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget v0, p0, Lwh1;->h:I

    sget-object v1, Lwh1;->m:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lwh1;->h:I

    :cond_0
    return-void
.end method
