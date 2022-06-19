.class public final Lcom/google/android/gms/internal/ads/bfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfb;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/ko;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfb;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bfg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfg;->a:Lcom/google/android/gms/internal/ads/bfb;

    .line 4
    return-void
.end method

.method private final b()Lcom/google/android/gms/internal/ads/ko;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ko;

    .line 36
    if-nez v0, :cond_0

    .line 37
    const-string/jumbo v0, "Unexpected call to adapter creator."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 39
    :cond_0
    return-object v0
.end method

.method private final b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/kp;
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bfg;->b()Lcom/google/android/gms/internal/ads/ko;

    move-result-object v1

    .line 26
    const-string/jumbo v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    :cond_0
    :try_start_0
    const-string/jumbo v0, "class_name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ko;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const-string/jumbo v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ko;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/kp;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 31
    :cond_1
    const-string/jumbo v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ko;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/kp;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string/jumbo v2, "Invalid custom event."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ko;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/kp;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/chs;
    .locals 3

    .prologue
    .line 7
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/chs;

    .line 8
    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/ll;

    new-instance v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v2}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/ll;-><init>(Lcom/google/android/gms/ads/mediation/f;)V

    .line 15
    :goto_0
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/chs;-><init>(Lcom/google/android/gms/internal/ads/kp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfg;->a:Lcom/google/android/gms/internal/ads/bfb;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/bfb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/chs;)V

    .line 20
    return-object v1

    .line 10
    :cond_0
    :try_start_1
    const-string/jumbo v0, "com.google.ads.mediation.AdUrlAdapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/ll;

    new-instance v2, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v2}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/ll;-><init>(Lcom/google/android/gms/ads/mediation/f;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdhk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :cond_1
    :try_start_2
    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/ll;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaol;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaol;-><init>()V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/ll;-><init>(Lcom/google/android/gms/ads/mediation/f;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bfg;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/kp;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mn;
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bfg;->b()Lcom/google/android/gms/internal/ads/ko;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ko;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mn;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bfg;->a:Lcom/google/android/gms/internal/ads/bfb;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/bfb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/mn;)V

    .line 23
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ko;)V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
