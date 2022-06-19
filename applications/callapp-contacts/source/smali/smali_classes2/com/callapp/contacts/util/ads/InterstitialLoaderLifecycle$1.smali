.class Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

.field final synthetic b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;Lcom/callapp/contacts/util/ads/JSONAdPreferences;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->a:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->a(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->b(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Landroid/util/Pair;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;-><init>(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;)V

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ads/loaders/AdLoaderFactory;->a(Landroid/app/Activity;Landroid/util/Pair;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->a(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;)Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->e(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;->a()V

    return-void
.end method
