.class public Lcom/google/android/gms/internal/ads/zzelt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zziln:Lcom/google/android/gms/internal/ads/zzeko;


# instance fields
.field private zzirv:Lcom/google/android/gms/internal/ads/zzejr;

.field private volatile zzirw:Lcom/google/android/gms/internal/ads/zzemo;

.field private volatile zzirx:Lcom/google/android/gms/internal/ads/zzejr;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzelt;->zziln:Lcom/google/android/gms/internal/ads/zzeko;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzelt;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzelt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelt;->zzbfz()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelt;->zzbfz()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzejr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzemq;->zzbiq()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzelt;->zzm(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzemq;->zzbiq()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzelt;->zzm(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzbfz()Lcom/google/android/gms/internal/ads/zzejr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzemo;->zzbfz()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzbik()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejr;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzemo;->zzbik()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirv:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirx:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelt;->zzirw:Lcom/google/android/gms/internal/ads/zzemo;

    return-object v0
.end method
