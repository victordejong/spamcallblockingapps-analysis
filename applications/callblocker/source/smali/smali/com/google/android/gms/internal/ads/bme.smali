.class public final Lcom/google/android/gms/internal/ads/bme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/apv;
.implements Lcom/google/android/gms/internal/ads/arg;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:I


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/bmj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bme;->a:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/internal/ads/bme;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/bmj;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bme;->c:Lcom/google/android/gms/internal/ads/bmj;

    .line 3
    return-void
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 18
    sget-object v1, Lcom/google/android/gms/internal/ads/bme;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/bme;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/internal/ads/bme;->b:I

    .line 20
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c()Z
    .locals 4

    .prologue
    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/bme;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget v2, Lcom/google/android/gms/internal/ads/bme;->b:I

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->db:Lcom/google/android/gms/internal/ads/ect;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->da:Lcom/google/android/gms/internal/ads/ect;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/bme;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bme;->c:Lcom/google/android/gms/internal/ads/bmj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bmj;->a(Z)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/bme;->b()V

    .line 10
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->da:Lcom/google/android/gms/internal/ads/ect;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/bme;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bme;->c:Lcom/google/android/gms/internal/ads/bmj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bmj;->a(Z)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/bme;->b()V

    .line 17
    :cond_0
    return-void
.end method
