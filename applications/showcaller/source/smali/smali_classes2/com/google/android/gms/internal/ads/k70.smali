.class public final Lcom/google/android/gms/internal/ads/k70;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/k70;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/k70;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/k70;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/k70;->a:Lcom/google/android/gms/internal/ads/k70;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/k70;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/k70;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/k70;->a:Lcom/google/android/gms/internal/ads/k70;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/k70;->a:Lcom/google/android/gms/internal/ads/k70;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k70;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/i70;

    .line 2
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/i70;-><init>(Lcom/google/android/gms/internal/ads/k70;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method
