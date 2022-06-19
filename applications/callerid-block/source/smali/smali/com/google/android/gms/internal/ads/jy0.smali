.class public final Lcom/google/android/gms/internal/ads/jy0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fy0;

.field private final b:Lcom/google/android/gms/internal/ads/sz1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/sz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jy0;->a:Lcom/google/android/gms/internal/ads/fy0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jy0;->b:Lcom/google/android/gms/internal/ads/sz1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/uo1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/uo1<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy0;->b:Lcom/google/android/gms/internal/ads/sz1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy0;->a:Lcom/google/android/gms/internal/ads/fy0;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hy0;->a(Lcom/google/android/gms/internal/ads/fy0;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/sz1;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/iy0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/iy0;-><init>(Lcom/google/android/gms/internal/ads/jy0;Lcom/google/android/gms/internal/ads/uo1;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jy0;->b:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return-void
.end method
