.class public final Lcom/google/android/gms/internal/ads/zzdci;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdcj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzgzy:Ljava/lang/String;

.field private final zzhbq:Lcom/google/android/gms/internal/ads/zzcip;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzv;Lcom/google/android/gms/internal/ads/zzcip;Lcom/google/android/gms/internal/ads/zzdnp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzhbq:Lcom/google/android/gms/internal/ads/zzcip;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzgzy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdcj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdcl;-><init>(Lcom/google/android/gms/internal/ads/zzdci;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzate()Lcom/google/android/gms/internal/ads/zzdcj;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzhbq:Lcom/google/android/gms/internal/ads/zzcip;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzgzy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcip;->zzq(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzhbq:Lcom/google/android/gms/internal/ads/zzcip;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcip;->zzapx()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdcj;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v2
.end method
