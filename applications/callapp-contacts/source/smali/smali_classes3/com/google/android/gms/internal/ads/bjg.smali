.class public final Lcom/google/android/gms/internal/ads/bjg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/bja;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/mm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bja;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bjg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjg;->a:Lcom/google/android/gms/internal/ads/bja;

    return-void
.end method

.method private final b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/mn;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bjg;->a()Lcom/google/android/gms/internal/ads/mm;

    move-result-object v0

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    if-nez v2, :cond_0

    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :try_start_0
    const-string v2, "class_name"

    .line 28
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/mm;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mn;

    move-result-object p1

    return-object p1

    .line 31
    :cond_1
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/mm;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mn;

    move-result-object p1

    return-object p1

    .line 33
    :cond_2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mn;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    const-string v1, "Invalid custom event."

    .line 35
    invoke-static {v1, p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mn;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/cqe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;
        }
    .end annotation

    .line 7
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cqe;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/nn;

    new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v1}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/nn;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.google.ads.mediation.AdUrlAdapter"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    new-instance p2, Lcom/google/android/gms/internal/ads/nn;

    new-instance v1, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v1}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/nn;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    new-instance p2, Lcom/google/android/gms/internal/ads/nn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaqt;-><init>()V

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/nn;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bjg;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/mn;

    move-result-object p2

    .line 15
    :goto_0
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/cqe;-><init>(Lcom/google/android/gms/internal/ads/mn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bjg;->a:Lcom/google/android/gms/internal/ads/bja;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/bja;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/cqe;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 18
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method final a()Lcom/google/android/gms/internal/ads/mm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/mm;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Unexpected call to adapter creator."

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/mm;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
