.class public final synthetic Lcom/google/android/gms/internal/ads/zzbqt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfyl:Lcom/google/android/gms/internal/ads/zzbqu;

.field private final zzfym:Lcom/google/android/gms/internal/ads/zzdzw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbqu;Lcom/google/android/gms/internal/ads/zzdzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzfyl:Lcom/google/android/gms/internal/ads/zzbqu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzfyl:Lcom/google/android/gms/internal/ads/zzbqu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqu;->zzc(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzatq;

    move-result-object v0

    return-object v0
.end method
