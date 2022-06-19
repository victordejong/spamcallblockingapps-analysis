.class public Lcom/criteo/publisher/CriteoInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final criteo:Lcom/criteo/publisher/Criteo;

.field private criteoInterstitialAdListener:Lcom/criteo/publisher/CriteoInterstitialAdListener;

.field private criteoInterstitialEventController:Lcom/criteo/publisher/m;

.field final interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

.field private final logger:Lcom/criteo/publisher/logging/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, v0}, Lcom/criteo/publisher/CriteoInterstitial;-><init>(Lcom/criteo/publisher/model/InterstitialAdUnit;Lcom/criteo/publisher/Criteo;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/model/InterstitialAdUnit;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/CriteoInterstitial;-><init>(Lcom/criteo/publisher/model/InterstitialAdUnit;Lcom/criteo/publisher/Criteo;)V

    return-void
.end method

.method constructor <init>(Lcom/criteo/publisher/model/InterstitialAdUnit;Lcom/criteo/publisher/Criteo;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    .line 83
    iput-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 84
    iput-object p2, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteo:Lcom/criteo/publisher/Criteo;

    .line 85
    invoke-static {p1}, Lcom/criteo/publisher/j/b;->a(Lcom/criteo/publisher/model/InterstitialAdUnit;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method private doLoadAd(Lcom/criteo/publisher/Bid;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0, p1}, Lcom/criteo/publisher/j/b;->a(Lcom/criteo/publisher/CriteoInterstitial;Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 141
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getIntegrationRegistry()Lcom/criteo/publisher/i/c;

    move-result-object v0

    sget-object v1, Lcom/criteo/publisher/i/a;->d:Lcom/criteo/publisher/i/a;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/i/c;->a(Lcom/criteo/publisher/i/a;)V

    .line 142
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Lcom/criteo/publisher/m;

    move-result-object v0

    .line 1094
    iget-object v1, v0, Lcom/criteo/publisher/m;->c:Lcom/criteo/publisher/j/a;

    invoke-virtual {v1}, Lcom/criteo/publisher/j/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1095
    invoke-virtual {v0}, Lcom/criteo/publisher/m;->a()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1099
    :cond_1
    sget-object v1, Lcom/criteo/publisher/m0/a;->b:Lcom/criteo/publisher/m0/a;

    invoke-virtual {p1, v1}, Lcom/criteo/publisher/Bid;->a(Lcom/criteo/publisher/m0/a;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 1102
    invoke-virtual {v0}, Lcom/criteo/publisher/m;->a()V

    return-void

    .line 1104
    :cond_2
    invoke-virtual {v0, p1}, Lcom/criteo/publisher/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method private doLoadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0}, Lcom/criteo/publisher/j/b;->a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 113
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getIntegrationRegistry()Lcom/criteo/publisher/i/c;

    move-result-object v0

    sget-object v1, Lcom/criteo/publisher/i/a;->c:Lcom/criteo/publisher/i/a;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/i/c;->a(Lcom/criteo/publisher/i/a;)V

    .line 114
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Lcom/criteo/publisher/m;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 1069
    iget-object v2, v0, Lcom/criteo/publisher/m;->c:Lcom/criteo/publisher/j/a;

    invoke-virtual {v2}, Lcom/criteo/publisher/j/a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1070
    invoke-virtual {v0}, Lcom/criteo/publisher/m;->a()V

    return-void

    .line 1074
    :cond_0
    iget-object v2, v0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v2}, Lcom/criteo/publisher/model/a0;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1078
    iget-object v2, v0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v2}, Lcom/criteo/publisher/model/a0;->b()V

    .line 1079
    iget-object v2, v0, Lcom/criteo/publisher/m;->b:Lcom/criteo/publisher/Criteo;

    new-instance v3, Lcom/criteo/publisher/m$a;

    invoke-direct {v3, v0}, Lcom/criteo/publisher/m$a;-><init>(Lcom/criteo/publisher/m;)V

    invoke-virtual {v2, v1, p1, v3}, Lcom/criteo/publisher/Criteo;->getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    :cond_1
    return-void
.end method

.method private doShow()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0}, Lcom/criteo/publisher/j/b;->d(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 171
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Lcom/criteo/publisher/m;

    move-result-object v0

    .line 2065
    iget-object v1, v0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/a0;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    iget-object v1, v0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/a0;->d()Ljava/lang/String;

    move-result-object v1

    .line 1126
    iget-object v2, v0, Lcom/criteo/publisher/m;->c:Lcom/criteo/publisher/j/a;

    iget-object v3, v0, Lcom/criteo/publisher/m;->d:Lcom/criteo/publisher/l/d;

    invoke-virtual {v2, v1, v3}, Lcom/criteo/publisher/j/a;->a(Ljava/lang/String;Lcom/criteo/publisher/l/d;)V

    .line 1127
    iget-object v1, v0, Lcom/criteo/publisher/m;->d:Lcom/criteo/publisher/l/d;

    sget-object v2, Lcom/criteo/publisher/o;->f:Lcom/criteo/publisher/o;

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/l/d;->a(Lcom/criteo/publisher/o;)V

    .line 1129
    iget-object v0, v0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->g()V

    :cond_0
    return-void
.end method

.method private getCriteo()Lcom/criteo/publisher/Criteo;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteo:Lcom/criteo/publisher/Criteo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getIntegrationRegistry()Lcom/criteo/publisher/i/c;
    .locals 1

    .line 203
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->u()Lcom/criteo/publisher/i/c;

    move-result-object v0

    return-object v0
.end method

.method private getPubSdkApi()Lcom/criteo/publisher/j0/g;
    .locals 1

    .line 208
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->e()Lcom/criteo/publisher/j0/g;

    move-result-object v0

    return-object v0
.end method

.method private getRunOnUiThreadExecutor()Lcom/criteo/publisher/e/c;
    .locals 1

    .line 213
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getOrCreateController()Lcom/criteo/publisher/m;
    .locals 6

    .line 177
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialEventController:Lcom/criteo/publisher/m;

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getCriteo()Lcom/criteo/publisher/Criteo;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/criteo/publisher/l/d;

    iget-object v2, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialAdListener:Lcom/criteo/publisher/CriteoInterstitialAdListener;

    .line 183
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getRunOnUiThreadExecutor()Lcom/criteo/publisher/e/c;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/criteo/publisher/l/d;-><init>(Lcom/criteo/publisher/CriteoInterstitial;Lcom/criteo/publisher/CriteoInterstitialAdListener;Lcom/criteo/publisher/e/c;)V

    .line 186
    new-instance v2, Lcom/criteo/publisher/m;

    new-instance v3, Lcom/criteo/publisher/model/a0;

    .line 187
    invoke-virtual {v0}, Lcom/criteo/publisher/Criteo;->getConfig()Lcom/criteo/publisher/model/t;

    move-result-object v4

    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getPubSdkApi()Lcom/criteo/publisher/j0/g;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/criteo/publisher/model/a0;-><init>(Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/j0/g;)V

    .line 188
    invoke-virtual {v0}, Lcom/criteo/publisher/Criteo;->getInterstitialActivityHelper()Lcom/criteo/publisher/j/a;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/criteo/publisher/m;-><init>(Lcom/criteo/publisher/model/a0;Lcom/criteo/publisher/j/a;Lcom/criteo/publisher/Criteo;Lcom/criteo/publisher/l/d;)V

    iput-object v2, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialEventController:Lcom/criteo/publisher/m;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialEventController:Lcom/criteo/publisher/m;

    return-object v0
.end method

.method public isAdLoaded()Z
    .locals 3

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Lcom/criteo/publisher/m;

    move-result-object v0

    .line 3065
    iget-object v0, v0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->e()Z

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0, v0}, Lcom/criteo/publisher/j/b;->a(Lcom/criteo/publisher/CriteoInterstitial;Z)Lcom/criteo/publisher/logging/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 151
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {v0}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .locals 1

    .line 95
    new-instance v0, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v0}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/CriteoInterstitial;->loadAd(Lcom/criteo/publisher/context/ContextData;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/Bid;)V
    .locals 1

    .line 118
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    invoke-static {}, Lcom/criteo/publisher/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {}, Lcom/criteo/publisher/j/b;->a()Lcom/criteo/publisher/logging/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void

    .line 124
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/CriteoInterstitial;->doLoadAd(Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 126
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    invoke-static {}, Lcom/criteo/publisher/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {}, Lcom/criteo/publisher/j/b;->a()Lcom/criteo/publisher/logging/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/CriteoInterstitial;->doLoadAd(Lcom/criteo/publisher/context/ContextData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 107
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public loadAdWithDisplayData(Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    invoke-static {}, Lcom/criteo/publisher/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {}, Lcom/criteo/publisher/j/b;->a()Lcom/criteo/publisher/logging/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Lcom/criteo/publisher/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setCriteoInterstitialAdListener(Lcom/criteo/publisher/CriteoInterstitialAdListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialAdListener:Lcom/criteo/publisher/CriteoInterstitialAdListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 157
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    invoke-static {}, Lcom/criteo/publisher/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {}, Lcom/criteo/publisher/j/b;->a()Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void

    .line 163
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->doShow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 165
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {v0}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method
