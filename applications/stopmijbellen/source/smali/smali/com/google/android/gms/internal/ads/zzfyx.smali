.class final Lcom/google/android/gms/internal/ads/zzfyx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfyz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfyu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfyi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfyu;Lcom/google/android/gms/internal/ads/zzfyi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zza:Lcom/google/android/gms/internal/ads/zzfyu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzb:Lcom/google/android/gms/internal/ads/zzfyi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzfya;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lcom/google/android/gms/internal/ads/zzfya<",
            "TQ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zza:Lcom/google/android/gms/internal/ads/zzfyu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzb:Lcom/google/android/gms/internal/ads/zzfyi;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfyt;-><init>(Lcom/google/android/gms/internal/ads/zzfyu;Lcom/google/android/gms/internal/ads/zzfyi;Ljava/lang/Class;)V
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

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfya;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfya<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zza:Lcom/google/android/gms/internal/ads/zzfyu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzb:Lcom/google/android/gms/internal/ads/zzfyi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfyi;->zzc()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfyt;-><init>(Lcom/google/android/gms/internal/ads/zzfyu;Lcom/google/android/gms/internal/ads/zzfyi;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zza:Lcom/google/android/gms/internal/ads/zzfyu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzb:Lcom/google/android/gms/internal/ads/zzfyi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zza:Lcom/google/android/gms/internal/ads/zzfyu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyi;->zzg()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
