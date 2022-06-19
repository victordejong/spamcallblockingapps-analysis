.class public final Lcom/google/android/gms/internal/ads/bqv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bqt;

.field private final b:Lcom/google/android/gms/internal/ads/dbs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bqt;Lcom/google/android/gms/internal/ads/dbs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqv;->a:Lcom/google/android/gms/internal/ads/bqt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqv;->b:Lcom/google/android/gms/internal/ads/dbs;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/css;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/css<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqv;->b:Lcom/google/android/gms/internal/ads/dbs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqv;->a:Lcom/google/android/gms/internal/ads/bqt;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bqu;->a(Lcom/google/android/gms/internal/ads/bqt;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/bqx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bqx;-><init>(Lcom/google/android/gms/internal/ads/bqv;Lcom/google/android/gms/internal/ads/css;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bqv;->b:Lcom/google/android/gms/internal/ads/dbs;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void
.end method
