.class final synthetic Lcom/google/android/gms/internal/ads/zzcuc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzguq:Lcom/google/android/gms/internal/ads/zzctx;

.field private final zzgur:Lcom/google/android/gms/internal/ads/zzcgk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctx;Lcom/google/android/gms/internal/ads/zzcgk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuc;->zzguq:Lcom/google/android/gms/internal/ads/zzctx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuc;->zzgur:Lcom/google/android/gms/internal/ads/zzcgk;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuc;->zzguq:Lcom/google/android/gms/internal/ads/zzctx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuc;->zzgur:Lcom/google/android/gms/internal/ads/zzcgk;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzctx;->zza(Lcom/google/android/gms/internal/ads/zzcgk;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
