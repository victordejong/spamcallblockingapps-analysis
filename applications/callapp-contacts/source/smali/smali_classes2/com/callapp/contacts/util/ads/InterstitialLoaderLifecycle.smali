.class public Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;,
        Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field private final e:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;

.field private f:Lcom/mopub/mobileads/MoPubInterstitial;

.field private g:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

.field private h:Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/util/Pair;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;",
            "Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->a:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->b:Landroid/util/Pair;

    .line 46
    iput-object p3, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 48
    iput-object p5, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->e:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Landroid/app/Activity;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;)Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->h:Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->f:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Landroid/util/Pair;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->b:Landroid/util/Pair;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->g:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->h:Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;

    return-object p0
.end method


# virtual methods
.method public loadAd()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 53
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->b:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->shouldShowInterstitial()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->e:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;

    invoke-interface {v1, v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;->shouldLoadIntervalPredicate(Lcom/callapp/contacts/util/ads/JSONAdPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->g:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    invoke-direct {v1}, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->g:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    .line 59
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->g:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 61
    :cond_0
    new-instance v1, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;-><init>(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;Lcom/callapp/contacts/util/ads/JSONAdPreferences;)V

    .line 120
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->h:Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;->b()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->f:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->f:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 137
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->g:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
