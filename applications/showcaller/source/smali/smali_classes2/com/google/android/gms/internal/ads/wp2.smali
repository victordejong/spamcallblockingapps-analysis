.class public final Lcom/google/android/gms/internal/ads/wp2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/wp2;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Z

.field private f:Lcom/google/android/gms/internal/ads/bq2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/wp2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wp2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/wp2;->a:Lcom/google/android/gms/internal/ads/wp2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/wp2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/wp2;->a:Lcom/google/android/gms/internal/ads/wp2;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/wp2;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wp2;->e:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wp2;->e:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/wp2;->d:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wp2;->h()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wp2;->f:Lcom/google/android/gms/internal/ads/bq2;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wp2;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yq2;->f()Lcom/google/android/gms/internal/ads/yq2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yq2;->g()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/yq2;->f()Lcom/google/android/gms/internal/ads/yq2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yq2;->i()V

    :cond_1
    return-void
.end method

.method private final h()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wp2;->e:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/up2;->a()Lcom/google/android/gms/internal/ads/up2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/up2;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/np2;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/np2;->g()Lcom/google/android/gms/internal/ads/iq2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/iq2;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-eq v3, v0, :cond_1

    const-string v4, "foregrounded"

    goto :goto_1

    :cond_1
    const-string v4, "backgrounded"

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/aq2;->a()Lcom/google/android/gms/internal/ads/aq2;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/iq2;->d()Landroid/webkit/WebView;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "setState"

    .line 3
    invoke-virtual {v5, v2, v4, v3}, Lcom/google/android/gms/internal/ads/aq2;->g(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wp2;->b:Landroid/content/Context;

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/vp2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vp2;-><init>(Lcom/google/android/gms/internal/ads/wp2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wp2;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wp2;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wp2;->c:Landroid/content/BroadcastReceiver;

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wp2;->d:Z

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wp2;->h()V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wp2;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wp2;->c:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wp2;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wp2;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wp2;->e:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wp2;->f:Lcom/google/android/gms/internal/ads/bq2;

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wp2;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/bq2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wp2;->f:Lcom/google/android/gms/internal/ads/bq2;

    return-void
.end method
