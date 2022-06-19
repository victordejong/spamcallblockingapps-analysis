.class public final synthetic Lcom/google/android/gms/internal/ads/zzbqj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# instance fields
.field private final zzcmi:Landroid/content/Context;

.field private final zzfuz:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzfxx:Lcom/google/android/gms/internal/ads/zzdnp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzdnp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->zzcmi:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqj;->zzfuz:Lcom/google/android/gms/internal/ads/zzazn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqj;->zzfxx:Lcom/google/android/gms/internal/ads/zzdnp;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqj;->zzcmi:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->zzfuz:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqj;->zzfxx:Lcom/google/android/gms/internal/ads/zzdnp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmw;

    new-instance v3, Lcom/google/android/gms/ads/internal/util/zzad;

    invoke-direct {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzad;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzdwd:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzad;->zzem(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjl:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzen(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzu(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->setAdUnitId(Ljava/lang/String;)V

    return-object v3
.end method
