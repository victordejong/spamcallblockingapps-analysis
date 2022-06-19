.class final synthetic Lcom/google/android/gms/internal/ads/zzcue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

.field private final zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

.field private final zzguq:Lcom/google/android/gms/internal/ads/zzctx;

.field private final zzgut:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzguu:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzguv:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctx;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzguq:Lcom/google/android/gms/internal/ads/zzctx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzgut:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzguu:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzguv:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzguq:Lcom/google/android/gms/internal/ads/zzctx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzgut:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzguu:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzguv:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzctx;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcbu;

    move-result-object v0

    return-object v0
.end method
