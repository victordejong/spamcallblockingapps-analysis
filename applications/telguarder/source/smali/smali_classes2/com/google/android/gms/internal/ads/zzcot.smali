.class final synthetic Lcom/google/android/gms/internal/ads/zzcot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

.field private final zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

.field private final zzgpq:Lcom/google/android/gms/internal/ads/zzcol;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcol;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgpq:Lcom/google/android/gms/internal/ads/zzcol;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgpq:Lcom/google/android/gms/internal/ads/zzcol;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcol;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
