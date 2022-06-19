.class final Lcom/google/android/gms/internal/ads/dci;
.super Lcom/google/android/gms/internal/ads/dbp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dbp<",
        "Lcom/google/android/gms/internal/ads/dbt<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dar<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dcf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dcf;Lcom/google/android/gms/internal/ads/dar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dar<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dci;->b:Lcom/google/android/gms/internal/ads/dcf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbp;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dar;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dci;->a:Lcom/google/android/gms/internal/ads/dar;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/dbt;

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dci;->b:Lcom/google/android/gms/internal/ads/dcf;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/dag;->a(Lcom/google/android/gms/internal/ads/dbt;)Z

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dci;->b:Lcom/google/android/gms/internal/ads/dcf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dag;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dci;->b:Lcom/google/android/gms/internal/ads/dcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dag;->isDone()Z

    move-result v0

    return v0
.end method

.method final synthetic c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dci;->a:Lcom/google/android/gms/internal/ads/dar;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dar;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dci;->a:Lcom/google/android/gms/internal/ads/dar;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 14
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbt;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dci;->a:Lcom/google/android/gms/internal/ads/dar;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
