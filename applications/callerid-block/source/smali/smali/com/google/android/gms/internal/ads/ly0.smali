.class public final Lcom/google/android/gms/internal/ads/ly0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/f90;
.implements Lcom/google/android/gms/internal/ads/v70;


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:I


# instance fields
.field private final b:Lcom/google/android/gms/ads/internal/util/a1;

.field private final c:Lcom/google/android/gms/internal/ads/uy0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ly0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/uy0;Lcom/google/android/gms/ads/internal/util/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ly0;->c:Lcom/google/android/gms/internal/ads/uy0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ly0;->b:Lcom/google/android/gms/ads/internal/util/a1;

    return-void
.end method

.method private final a(Z)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->N3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0;->b:Lcom/google/android/gms/ads/internal/util/a1;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/a1;->K()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/ly0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/ly0;->e:I

    sget-object v2, Lcom/google/android/gms/internal/ads/m3;->O3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly0;->c:Lcom/google/android/gms/internal/ads/uy0;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/uy0;->a(Z)V

    monitor-enter v0

    :try_start_1
    sget p1, Lcom/google/android/gms/internal/ads/ly0;->e:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/google/android/gms/internal/ads/ly0;->e:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public final f0(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ly0;->a(Z)V

    return-void
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ly0;->a(Z)V

    return-void
.end method
