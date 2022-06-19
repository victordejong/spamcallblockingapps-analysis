.class public abstract Lcom/google/android/gms/ads/internal/util/z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private volatile b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/a;-><init>(Lcom/google/android/gms/ads/internal/util/z;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/z;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/util/z;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/z;->b:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Lcom/google/android/gms/internal/ads/rz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/z;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/sz1;->e(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    return-object v0
.end method
