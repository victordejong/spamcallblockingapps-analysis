.class final Lcom/google/android/gms/internal/ads/l23;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o23;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/w13;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/w13;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l23;->a:Lcom/google/android/gms/internal/ads/w13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/o13;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/o13<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/q13;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l23;->a:Lcom/google/android/gms/internal/ads/w13;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/w13;->g()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/q13;-><init>(Lcom/google/android/gms/internal/ads/w13;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l23;->a:Lcom/google/android/gms/internal/ads/w13;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/o13;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lcom/google/android/gms/internal/ads/o13<",
            "TQ;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/q13;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l23;->a:Lcom/google/android/gms/internal/ads/w13;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/q13;-><init>(Lcom/google/android/gms/internal/ads/w13;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive type not supported"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l23;->a:Lcom/google/android/gms/internal/ads/w13;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/w13;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
