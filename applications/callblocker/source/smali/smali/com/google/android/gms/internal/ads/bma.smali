.class public final Lcom/google/android/gms/internal/ads/bma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bly;

.field private final b:Lcom/google/android/gms/internal/ads/crs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bly;Lcom/google/android/gms/internal/ads/crs;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bma;->a:Lcom/google/android/gms/internal/ads/bly;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bma;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ckg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ckg",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bma;->b:Lcom/google/android/gms/internal/ads/crs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bma;->a:Lcom/google/android/gms/internal/ads/bly;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/blz;->a(Lcom/google/android/gms/internal/ads/bly;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/bmc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bmc;-><init>(Lcom/google/android/gms/internal/ads/bma;Lcom/google/android/gms/internal/ads/ckg;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bma;->b:Lcom/google/android/gms/internal/ads/crs;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 8
    return-void
.end method
