.class public final Lcom/google/android/gms/internal/ads/bqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/arp;
.implements Lcom/google/android/gms/internal/ads/atb;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:I


# instance fields
.field private final c:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final d:Lcom/google/android/gms/internal/ads/bre;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bqz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/bre;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqz;->d:Lcom/google/android/gms/internal/ads/bre;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqz;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method

.method private final a(Z)V
    .locals 2

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dM:Lcom/google/android/gms/internal/ads/af;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqz;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/bqz;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqz;->d:Lcom/google/android/gms/internal/ads/bre;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bre;->a(Z)V

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/bqz;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 24
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/bqz;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/internal/ads/bqz;->b:I

    .line 25
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b()Z
    .locals 4

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/bqz;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/bqz;->b:I

    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->dN:Lcom/google/android/gms/internal/ads/af;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bqz;->a(Z)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bqz;->a(Z)V

    return-void
.end method
