.class final Lcom/mopub/nativeads/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/c;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/c;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/c;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 5

    .line 122
    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/mopub/nativeads/c;->c:Z

    .line 126
    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    iget p1, p1, Lcom/mopub/nativeads/c;->f:I

    sget-object v1, Lcom/mopub/nativeads/c;->a:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    .line 2257
    iput v0, p1, Lcom/mopub/nativeads/c;->f:I

    return-void

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    .line 3250
    iget v0, p1, Lcom/mopub/nativeads/c;->f:I

    sget-object v1, Lcom/mopub/nativeads/c;->a:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 3251
    iget v0, p1, Lcom/mopub/nativeads/c;->f:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/mopub/nativeads/c;->f:I

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    iput-boolean v2, p1, Lcom/mopub/nativeads/c;->d:Z

    .line 133
    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    invoke-static {p1}, Lcom/mopub/nativeads/c;->e(Lcom/mopub/nativeads/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    invoke-static {v0}, Lcom/mopub/nativeads/c;->d(Lcom/mopub/nativeads/c;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    .line 3262
    iget v3, v1, Lcom/mopub/nativeads/c;->f:I

    sget-object v4, Lcom/mopub/nativeads/c;->a:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 3263
    sget-object v3, Lcom/mopub/nativeads/c;->a:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/mopub/nativeads/c;->f:I

    .line 3265
    :cond_2
    sget-object v2, Lcom/mopub/nativeads/c;->a:[I

    iget v1, v1, Lcom/mopub/nativeads/c;->f:I

    aget v1, v2, v1

    int-to-long v1, v1

    .line 133
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    invoke-static {v0}, Lcom/mopub/nativeads/c;->a(Lcom/mopub/nativeads/c;)Lcom/mopub/nativeads/MoPubNative;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mopub/nativeads/c;->c:Z

    .line 108
    iget-object v0, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    iget v2, v0, Lcom/mopub/nativeads/c;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/mopub/nativeads/c;->e:I

    .line 109
    iget-object v0, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    .line 1257
    iput v1, v0, Lcom/mopub/nativeads/c;->f:I

    .line 111
    iget-object v0, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    invoke-static {v0}, Lcom/mopub/nativeads/c;->b(Lcom/mopub/nativeads/c;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativeads/k;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/k;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    invoke-static {p1}, Lcom/mopub/nativeads/c;->b(Lcom/mopub/nativeads/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    invoke-static {p1}, Lcom/mopub/nativeads/c;->c(Lcom/mopub/nativeads/c;)Lcom/mopub/nativeads/c$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    invoke-static {p1}, Lcom/mopub/nativeads/c;->c(Lcom/mopub/nativeads/c;)Lcom/mopub/nativeads/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/nativeads/c$a;->onAdsAvailable()V

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/mopub/nativeads/c$2;->a:Lcom/mopub/nativeads/c;

    invoke-virtual {p1}, Lcom/mopub/nativeads/c;->c()V

    return-void
.end method
