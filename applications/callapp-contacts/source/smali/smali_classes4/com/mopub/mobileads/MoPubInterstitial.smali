.class public Lcom/mopub/mobileads/MoPubInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/mopub/mobileads/AdViewController;

.field private b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

.field private c:Landroid/app/Activity;

.field private d:Landroid/os/Handler;

.field private volatile e:Lcom/mopub/mobileads/MoPubInterstitial$a;

.field private f:Lcom/mopub/network/AdResponse;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    .line 91
    invoke-static {p1, p0}, Lcom/mopub/mobileads/factories/AdViewControllerFactory;->create(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)Lcom/mopub/mobileads/AdViewController;

    move-result-object p1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Z)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->setAdViewController(Lcom/mopub/mobileads/AdViewController;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/MoPubInterstitial;->setAdUnitId(Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 98
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    .line 264
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    return-void
.end method

.method private declared-synchronized a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z
    .locals 7

    monitor-enter p0

    .line 118
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 130
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result v0

    aget v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_19

    if-eq v0, v1, :cond_11

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_0

    .line 254
    monitor-exit p0

    return v6

    .line 132
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v5, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    .line 161
    monitor-exit p0

    return v6

    .line 158
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    monitor-exit p0

    return v5

    .line 155
    :cond_2
    :try_start_3
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "No interstitial loading or loaded."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    monitor-exit p0

    return v6

    .line 151
    :cond_3
    :try_start_4
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Attempted transition from IDLE to READY failed due to no known load call."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    monitor-exit p0

    return v6

    .line 135
    :cond_4
    :try_start_5
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    .line 136
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 1268
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_5

    .line 1269
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1273
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1278
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1283
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_5

    .line 1284
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setWindowInsets(Landroid/view/WindowInsets;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 140
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_8

    .line 141
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->f()V

    goto :goto_0

    .line 143
    :cond_6
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->f:Lcom/mopub/network/AdResponse;

    if-eqz p1, :cond_7

    .line 144
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->fakeLoadAd(Lcom/mopub/network/AdResponse;)V

    goto :goto_0

    .line 147
    :cond_7
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->loadAd()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    :cond_8
    :goto_0
    monitor-exit p0

    return v5

    .line 251
    :cond_9
    :try_start_6
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "MoPubInterstitial destroyed. Ignoring all requests."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 252
    monitor-exit p0

    return v6

    .line 225
    :cond_a
    :try_start_7
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eq p1, v5, :cond_f

    if-eq p1, v4, :cond_e

    if-eq p1, v3, :cond_d

    if-eq p1, v2, :cond_b

    .line 247
    monitor-exit p0

    return v6

    :cond_b
    if-eqz p2, :cond_c

    .line 228
    :try_start_8
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Cannot force refresh while showing an interstitial."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 229
    monitor-exit p0

    return v6

    .line 232
    :cond_c
    :try_start_9
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    .line 233
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 234
    monitor-exit p0

    return v5

    .line 244
    :cond_d
    :try_start_a
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->a()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 245
    monitor-exit p0

    return v5

    .line 241
    :cond_e
    :try_start_b
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Already showing an interstitial. Cannot show it again."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 242
    monitor-exit p0

    return v6

    :cond_f
    if-nez p2, :cond_10

    .line 237
    :try_start_c
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Interstitial already showing. Not loading another."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 239
    :cond_10
    monitor-exit p0

    return v6

    .line 196
    :cond_11
    :try_start_d
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eq p1, v5, :cond_17

    if-eq p1, v4, :cond_15

    if-eq p1, v3, :cond_14

    if-eq p1, v2, :cond_12

    .line 222
    monitor-exit p0

    return v6

    :cond_12
    if-eqz p2, :cond_13

    .line 200
    :try_start_e
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    .line 201
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 202
    monitor-exit p0

    return v5

    .line 204
    :cond_13
    monitor-exit p0

    return v6

    .line 219
    :cond_14
    :try_start_f
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->a()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 220
    monitor-exit p0

    return v5

    .line 1319
    :cond_15
    :try_start_10
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_16

    .line 1320
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->h()V

    .line 216
    :cond_16
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 217
    monitor-exit p0

    return v5

    .line 207
    :cond_17
    :try_start_11
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Interstitial already loaded. Not loading another."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 209
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_18

    .line 210
    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 212
    :cond_18
    monitor-exit p0

    return v6

    .line 164
    :cond_19
    :try_start_12
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eq p1, v5, :cond_1f

    if-eq p1, v1, :cond_1d

    if-eq p1, v4, :cond_1c

    if-eq p1, v3, :cond_1b

    if-eq p1, v2, :cond_1a

    .line 193
    monitor-exit p0

    return v6

    .line 169
    :cond_1a
    :try_start_13
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    .line 170
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 171
    monitor-exit p0

    return v5

    .line 190
    :cond_1b
    :try_start_14
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->a()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 191
    monitor-exit p0

    return v5

    .line 187
    :cond_1c
    :try_start_15
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Interstitial is not ready to be shown yet."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 188
    monitor-exit p0

    return v6

    .line 180
    :cond_1d
    :try_start_16
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 181
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->READY:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 182
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_1e

    .line 183
    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 185
    :cond_1e
    monitor-exit p0

    return v5

    :cond_1f
    if-nez p2, :cond_20

    .line 175
    :try_start_17
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Already loading an interstitial."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 177
    :cond_20
    monitor-exit p0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 338
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$a;

    const/4 v1, 0x0

    .line 4102
    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    return-void
.end method

.method public fakeLoad(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 291
    new-instance v0, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v0}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/network/AdResponse$Builder;->setBaseAdClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->f:Lcom/mopub/network/AdResponse;

    .line 292
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    return-void
.end method

.method public synthetic fakeLoadAd(Lcom/mopub/network/AdResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$fakeLoadAd(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method public forceRefresh()V
    .locals 2

    .line 306
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    .line 307
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public getAdFormat()Lcom/mopub/common/AdFormat;
    .locals 1

    .line 463
    sget-object v0, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    return-object v0
.end method

.method public synthetic getAdHeight()I
    .locals 1

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$getAdHeight(Lcom/mopub/mobileads/MoPubAd;)I

    move-result v0

    return v0
.end method

.method public synthetic getAdUnitId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$getAdUnitId(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewController()Lcom/mopub/mobileads/AdViewController;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    return-object v0
.end method

.method public synthetic getAdWidth()I
    .locals 1

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$getAdWidth(Lcom/mopub/mobileads/MoPubAd;)I

    move-result v0

    return v0
.end method

.method public getInterstitialAdListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method public synthetic getKeywords()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$getKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLocalExtras()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$getLocalExtras(Lcom/mopub/mobileads/MoPubAd;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLocation()Landroid/location/Location;
    .locals 1

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$getLocation(Lcom/mopub/mobileads/MoPubAd;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getTesting()Z
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getTesting()Z

    move-result v0

    return v0

    .line 357
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t get testing status for destroyed AdViewController. Returning false."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v3
.end method

.method public synthetic getUserDataKeywords()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$getUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->READY:Lcom/mopub/mobileads/MoPubInterstitial$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 3

    .line 296
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 297
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 2102
    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    return-void
.end method

.method public synthetic loadAd()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$loadAd(Lcom/mopub/mobileads/MoPubAd;)V

    return-void
.end method

.method public synthetic loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$loadFailUrl(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result p1

    return p1
.end method

.method public onAdClicked()V
    .locals 2

    .line 420
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 423
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->e()V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_2

    .line 430
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_2
    return-void
.end method

.method public synthetic onAdCollapsed()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener$-CC;->$default$onAdCollapsed(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 3

    .line 450
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Interstitial finished."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 452
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/AdViewController;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 3

    .line 436
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 439
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 441
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 8102
    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    .line 443
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 444
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method

.method public synthetic onAdExpanded()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener$-CC;->$default$onAdExpanded(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .line 393
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 397
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 399
    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 402
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 7102
    invoke-direct {p0, p1, v3}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .line 379
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 383
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 385
    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 388
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 6102
    invoke-direct {p0, p1, v3}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 365
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->READY:Lcom/mopub/mobileads/MoPubInterstitial$a;

    const/4 v1, 0x0

    .line 5102
    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    return-void
.end method

.method public synthetic onAdPauseAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener$-CC;->$default$onAdPauseAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public synthetic onAdResumeAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener$-CC;->$default$onAdResumeAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdShown()V
    .locals 2

    .line 407
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 411
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 414
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method

.method public synthetic pauseAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$pauseAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V

    return-void
.end method

.method public resolveAdSize()Landroid/graphics/Point;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public synthetic resumeAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$resumeAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V

    return-void
.end method

.method public synthetic setAdContentView(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$setAdContentView(Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V

    return-void
.end method

.method public synthetic setAdUnitId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$setAdUnitId(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V

    return-void
.end method

.method public setAdViewController(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    return-void
.end method

.method public setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-void
.end method

.method public synthetic setKeywords(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$setKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic setLocalExtras(Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$setLocalExtras(Lcom/mopub/mobileads/MoPubAd;Ljava/util/Map;)V

    return-void
.end method

.method public setTesting(Z)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setTesting(Z)V

    :cond_0
    return-void
.end method

.method public synthetic setUserDataKeywords(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubAd$-CC;->$default$setUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V

    return-void
.end method

.method public show()Z
    .locals 3

    .line 301
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 302
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 3102
    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    move-result v0

    return v0
.end method
