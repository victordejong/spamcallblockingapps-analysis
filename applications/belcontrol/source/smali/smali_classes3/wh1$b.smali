.class public Lwh1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwh1;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwh1;


# direct methods
.method public constructor <init>(Lwh1;)V
    .locals 0

    iput-object p1, p0, Lwh1$b;->a:Lwh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 3

    iget-object p1, p0, Lwh1$b;->a:Lwh1;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lwh1;->e:Z

    iget v0, p1, Lwh1;->h:I

    sget-object v1, Lwh1;->m:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lwh1;->n()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lwh1;->p()V

    iget-object p1, p0, Lwh1$b;->a:Lwh1;

    iput-boolean v2, p1, Lwh1;->f:Z

    invoke-static {p1}, Lwh1;->e(Lwh1;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lwh1$b;->a:Lwh1;

    invoke-static {v0}, Lwh1;->d(Lwh1;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lwh1$b;->a:Lwh1;

    invoke-virtual {v1}, Lwh1;->i()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .locals 3

    iget-object v0, p0, Lwh1$b;->a:Lwh1;

    invoke-static {v0}, Lwh1;->a(Lwh1;)Lcom/mopub/nativeads/MoPubNative;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwh1$b;->a:Lwh1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lwh1;->e:Z

    iget v1, v0, Lwh1;->g:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lwh1;->g:I

    invoke-virtual {v0}, Lwh1;->n()V

    iget-object v0, p0, Lwh1$b;->a:Lwh1;

    invoke-static {v0}, Lwh1;->b(Lwh1;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lei1;

    invoke-direct {v1, p1}, Lei1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lwh1$b;->a:Lwh1;

    invoke-static {p1}, Lwh1;->b(Lwh1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lwh1$b;->a:Lwh1;

    invoke-static {p1}, Lwh1;->c(Lwh1;)Lwh1$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lwh1$b;->a:Lwh1;

    invoke-static {p1}, Lwh1;->c(Lwh1;)Lwh1$c;

    move-result-object p1

    invoke-interface {p1}, Lwh1$c;->onAdsAvailable()V

    :cond_1
    iget-object p1, p0, Lwh1$b;->a:Lwh1;

    invoke-virtual {p1}, Lwh1;->m()V

    return-void
.end method
