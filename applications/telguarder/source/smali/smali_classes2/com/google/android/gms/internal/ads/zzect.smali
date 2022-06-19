.class final Lcom/google/android/gms/internal/ads/zzect;
.super Lcom/google/android/gms/internal/ads/zzeba;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeba<",
        "Lcom/google/android/gms/internal/ads/zzegw;",
        "Lcom/google/android/gms/internal/ads/zzegt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzidf:Lcom/google/android/gms/internal/ads/zzecr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzecr;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzect;->zzidf:Lcom/google/android/gms/internal/ads/zzecr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeba;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzegw;

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzemo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzegw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegt;->zzbfd()Lcom/google/android/gms/internal/ads/zzegt$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzegt$zza;->zzb(Lcom/google/android/gms/internal/ads/zzegw;)Lcom/google/android/gms/internal/ads/zzegt$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzegt$zza;->zzfq(I)Lcom/google/android/gms/internal/ads/zzegt$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegt;

    return-object p1
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzegw;->zzy(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzegw;

    move-result-object p1

    return-object p1
.end method
