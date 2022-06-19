.class final Lcom/mopub/nativeads/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/c$a;
    }
.end annotation


# static fields
.field static final a:[I


# instance fields
.field final b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field c:Z

.field d:Z

.field e:I

.field f:I

.field g:Lcom/mopub/nativeads/c$a;

.field h:Lcom/mopub/nativeads/RequestParameters;

.field i:Lcom/mopub/nativeads/MoPubNative;

.field final j:Lcom/mopub/nativeads/AdRendererRegistry;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/k<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;

.field private final m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/nativeads/c;->a:[I

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

.method constructor <init>()V
    .locals 3

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-direct {v2}, Lcom/mopub/nativeads/AdRendererRegistry;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/nativeads/c;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/k<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;",
            "Landroid/os/Handler;",
            "Lcom/mopub/nativeads/AdRendererRegistry;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/mopub/nativeads/c;->k:Ljava/util/List;

    .line 86
    iput-object p2, p0, Lcom/mopub/nativeads/c;->l:Landroid/os/Handler;

    .line 87
    new-instance p1, Lcom/mopub/nativeads/c$1;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/c$1;-><init>(Lcom/mopub/nativeads/c;)V

    iput-object p1, p0, Lcom/mopub/nativeads/c;->m:Ljava/lang/Runnable;

    .line 95
    iput-object p3, p0, Lcom/mopub/nativeads/c;->j:Lcom/mopub/nativeads/AdRendererRegistry;

    .line 98
    new-instance p1, Lcom/mopub/nativeads/c$2;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/c$2;-><init>(Lcom/mopub/nativeads/c;)V

    iput-object p1, p0, Lcom/mopub/nativeads/c;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lcom/mopub/nativeads/c;->e:I

    .line 1257
    iput p1, p0, Lcom/mopub/nativeads/c;->f:I

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/c;)Lcom/mopub/nativeads/MoPubNative;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/nativeads/c;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/c;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/nativeads/c;)Lcom/mopub/nativeads/c$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/c;->g:Lcom/mopub/nativeads/c$a;

    return-object p0
.end method

.method static synthetic d(Lcom/mopub/nativeads/c;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/c;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/nativeads/c;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/c;->l:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 202
    iput-object v1, p0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative;

    .line 205
    :cond_0
    iput-object v1, p0, Lcom/mopub/nativeads/c;->h:Lcom/mopub/nativeads/RequestParameters;

    .line 207
    iget-object v0, p0, Lcom/mopub/nativeads/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/k;

    .line 208
    iget-object v1, v1, Lcom/mopub/nativeads/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lcom/mopub/nativeads/c;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iput-boolean v1, p0, Lcom/mopub/nativeads/c;->c:Z

    .line 214
    iput v1, p0, Lcom/mopub/nativeads/c;->e:I

    .line 2257
    iput v1, p0, Lcom/mopub/nativeads/c;->f:I

    return-void
.end method

.method final b()Lcom/mopub/nativeads/NativeAd;
    .locals 8

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 233
    iget-boolean v2, p0, Lcom/mopub/nativeads/c;->c:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mopub/nativeads/c;->d:Z

    if-nez v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/mopub/nativeads/c;->l:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mopub/nativeads/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/mopub/nativeads/c;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/mopub/nativeads/c;->k:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/k;

    .line 241
    iget-wide v3, v2, Lcom/mopub/nativeads/k;->b:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xdbba00

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 242
    iget-object v0, v2, Lcom/mopub/nativeads/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final c()V
    .locals 3

    .line 275
    iget-boolean v0, p0, Lcom/mopub/nativeads/c;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/mopub/nativeads/c;->c:Z

    .line 277
    iget-object v0, p0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/c;->h:Lcom/mopub/nativeads/RequestParameters;

    iget v2, p0, Lcom/mopub/nativeads/c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mopub/nativeads/c;->j:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object p1

    return-object p1
.end method

.method public final getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mopub/nativeads/c;->j:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result p1

    return p1
.end method
