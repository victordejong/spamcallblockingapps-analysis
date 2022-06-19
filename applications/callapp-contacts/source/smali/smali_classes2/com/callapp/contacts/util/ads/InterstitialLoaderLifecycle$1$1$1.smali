.class Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubInterstitial;

.field final synthetic b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->d(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    move-result-object v0

    .line 1286
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1288
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$2;

    invoke-direct {v3, v0, v1}, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$2;-><init>(Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method
