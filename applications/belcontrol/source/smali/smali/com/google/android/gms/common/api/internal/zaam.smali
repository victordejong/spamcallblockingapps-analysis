.class public final Lcom/google/android/gms/common/api/internal/zaam;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaaf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zaaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaaf;Lcom/google/android/gms/common/api/internal/zaae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaam;-><init>(Lcom/google/android/gms/common/api/internal/zaaf;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zai(Lcom/google/android/gms/common/api/internal/zaaf;)Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ClientSettings;->zae()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zaf(Lcom/google/android/gms/common/api/internal/zaaf;)Lcom/google/android/gms/signin/zad;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaak;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zaak;-><init>(Lcom/google/android/gms/common/api/internal/zaaf;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/signin/zad;->zaa(Lcom/google/android/gms/signin/internal/zac;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zaf(Lcom/google/android/gms/common/api/internal/zaaf;)Lcom/google/android/gms/signin/zad;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/signin/zad;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaak;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zaak;-><init>(Lcom/google/android/gms/common/api/internal/zaaf;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/signin/zad;->zaa(Lcom/google/android/gms/signin/internal/zac;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zab(Lcom/google/android/gms/common/api/internal/zaaf;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zaj(Lcom/google/android/gms/common/api/internal/zaaf;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zak(Lcom/google/android/gms/common/api/internal/zaaf;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zaa(Lcom/google/android/gms/common/api/internal/zaaf;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
