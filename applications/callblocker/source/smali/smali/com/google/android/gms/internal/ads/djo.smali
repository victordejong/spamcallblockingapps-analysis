.class public final Lcom/google/android/gms/internal/ads/djo;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static volatile d:Ljava/lang/String;

.field private static final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/djo;->d:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/djo;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V
    .locals 7

    .prologue
    .line 1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djo;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    const-string/jumbo v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/atw$a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/djo;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/djo;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/djo;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djo;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/ads/djo;->d:Ljava/lang/String;

    .line 8
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djo;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v1

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djo;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    sget-object v2, Lcom/google/android/gms/internal/ads/djo;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/atw$a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 11
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 8
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 11
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
