.class public final Lcom/google/android/gms/internal/ads/cv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yu1;

.field private final b:Lcom/google/android/gms/internal/ads/s03;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yu1;Lcom/google/android/gms/internal/ads/s03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cv1;->a:Lcom/google/android/gms/internal/ads/yu1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cv1;->b:Lcom/google/android/gms/internal/ads/s03;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cn2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cn2<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cv1;->b:Lcom/google/android/gms/internal/ads/s03;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cv1;->a:Lcom/google/android/gms/internal/ads/yu1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/av1;->a(Lcom/google/android/gms/internal/ads/yu1;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bv1;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bv1;-><init>(Lcom/google/android/gms/internal/ads/cv1;Lcom/google/android/gms/internal/ads/cn2;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cv1;->b:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void
.end method
