.class public Lcom/google/android/gms/internal/ads/ddk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/dci;


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/dbi;

.field private volatile c:Lcom/google/android/gms/internal/ads/deg;

.field private volatile d:Lcom/google/android/gms/internal/ads/dbi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ddk;->a:Lcom/google/android/gms/internal/ads/dci;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    if-nez v0, :cond_0

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    if-eqz v0, :cond_1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    return-object v0

    .line 22
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 26
    :catch_0
    move-exception v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/deg;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ddk;->b:Lcom/google/android/gms/internal/ads/dbi;

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    .line 34
    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    .line 39
    :goto_0
    return v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/deg;->q()I

    move-result v0

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;

    .line 48
    :goto_0
    return-object v0

    .line 42
    :cond_0
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;

    monitor-exit p0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    if-nez v0, :cond_2

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;

    .line 48
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;

    monitor-exit p0

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/deg;->k()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->d:Lcom/google/android/gms/internal/ads/dbi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 15
    :goto_0
    return v0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ddk;

    if-nez v0, :cond_1

    .line 5
    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/ddk;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    .line 8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ddk;->c:Lcom/google/android/gms/internal/ads/deg;

    .line 9
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ddk;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ddk;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dbi;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 11
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 13
    :cond_3
    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/deg;->w()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/ddk;->b(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 15
    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/deg;->w()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ddk;->b(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
