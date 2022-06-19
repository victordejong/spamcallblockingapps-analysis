.class final Lcom/google/android/gms/internal/ads/bus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bap;


# instance fields
.field a:Lcom/google/android/gms/internal/ads/asc;

.field private final b:Lcom/google/android/gms/internal/ads/cov;

.field private final c:Lcom/google/android/gms/internal/ads/os;

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/os;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bus;->a:Lcom/google/android/gms/internal/ads/asc;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bus;->b:Lcom/google/android/gms/internal/ads/cov;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bus;->c:Lcom/google/android/gms/internal/ads/os;

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/bus;->d:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcbq;
        }
    .end annotation

    .line 7
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/bus;->d:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bus;->c:Lcom/google/android/gms/internal/ads/os;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/os;->c(Lcom/google/android/gms/dynamic/b;)Z

    move-result p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bus;->c:Lcom/google/android/gms/internal/ads/os;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/os;->b(Lcom/google/android/gms/dynamic/b;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bus;->a:Lcom/google/android/gms/internal/ads/asc;

    if-nez p1, :cond_1

    return-void

    .line 17
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->bb:Lcom/google/android/gms/internal/ads/af;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bus;->b:Lcom/google/android/gms/internal/ads/cov;

    iget p1, p1, Lcom/google/android/gms/internal/ads/cov;->S:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bus;->a:Lcom/google/android/gms/internal/ads/asc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/asc;->a()V

    :cond_2
    return-void

    .line 14
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcbq;

    const-string p2, "Adapter failed to show."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcbq;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcbq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcbq;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
