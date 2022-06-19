.class final Lcom/google/android/gms/internal/ads/cto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cti$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ctj;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/csx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ctj;Lcom/google/android/gms/internal/ads/csx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cto;->a:Lcom/google/android/gms/internal/ads/ctj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cto;->b:Lcom/google/android/gms/internal/ads/csx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/css;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/css",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/ctg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cto;->a:Lcom/google/android/gms/internal/ads/ctj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cto;->b:Lcom/google/android/gms/internal/ads/csx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cto;->a:Lcom/google/android/gms/internal/ads/ctj;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/csx;->e()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ctg;-><init>(Lcom/google/android/gms/internal/ads/ctj;Lcom/google/android/gms/internal/ads/csx;Ljava/lang/Class;)V

    .line 7
    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/css;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TQ;>;)",
            "Lcom/google/android/gms/internal/ads/css",
            "<TQ;>;"
        }
    .end annotation

    .prologue
    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ctg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cto;->a:Lcom/google/android/gms/internal/ads/ctj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cto;->b:Lcom/google/android/gms/internal/ads/csx;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/ctg;-><init>(Lcom/google/android/gms/internal/ads/ctj;Lcom/google/android/gms/internal/ads/csx;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "Primitive type not supported"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cto;->a:Lcom/google/android/gms/internal/ads/ctj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cto;->a:Lcom/google/android/gms/internal/ads/ctj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cto;->b:Lcom/google/android/gms/internal/ads/csx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
