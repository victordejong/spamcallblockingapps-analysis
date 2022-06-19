.class public final Lcom/google/android/gms/internal/ads/djc;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static d:Lcom/google/android/gms/internal/ads/dkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dkd",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/dkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dkd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/djc;->d:Lcom/google/android/gms/internal/ads/dkd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;IILandroid/content/Context;)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0x1d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/djc;->e:Landroid/content/Context;

    .line 3
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djc;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    const-string/jumbo v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/atw$a$a;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/djc;->d:Lcom/google/android/gms/internal/ads/dkd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djc;->e:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dkd;->a(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djc;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/djc;->e:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djc;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v1

    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djc;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/bkl;->a([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 15
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 11
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 15
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
