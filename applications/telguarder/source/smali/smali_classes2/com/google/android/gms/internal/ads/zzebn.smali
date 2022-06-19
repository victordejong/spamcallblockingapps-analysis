.class final Lcom/google/android/gms/internal/ads/zzebn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzebm$zzb;


# instance fields
.field private final synthetic zzicf:Lcom/google/android/gms/internal/ads/zzebj;

.field private final synthetic zzicg:Lcom/google/android/gms/internal/ads/zzeax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebj;Lcom/google/android/gms/internal/ads/zzeax;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzicf:Lcom/google/android/gms/internal/ads/zzebj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzicg:Lcom/google/android/gms/internal/ads/zzeax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeaw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lcom/google/android/gms/internal/ads/zzeaw<",
            "TQ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzicf:Lcom/google/android/gms/internal/ads/zzebj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzicg:Lcom/google/android/gms/internal/ads/zzeax;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzebk;-><init>(Lcom/google/android/gms/internal/ads/zzebj;Lcom/google/android/gms/internal/ads/zzeax;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive type not supported"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzbam()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzicf:Lcom/google/android/gms/internal/ads/zzebj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeax;->zzbam()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final zzbax()Lcom/google/android/gms/internal/ads/zzeaw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeaw<",
            "*>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzicf:Lcom/google/android/gms/internal/ads/zzebj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzicg:Lcom/google/android/gms/internal/ads/zzeax;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeax;->zzban()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzebk;-><init>(Lcom/google/android/gms/internal/ads/zzebj;Lcom/google/android/gms/internal/ads/zzeax;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzbay()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzicf:Lcom/google/android/gms/internal/ads/zzebj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final zzbaz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzicg:Lcom/google/android/gms/internal/ads/zzeax;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
