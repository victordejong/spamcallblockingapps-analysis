.class final Lcom/google/android/gms/internal/ads/zzecu;
.super Lcom/google/android/gms/internal/ads/zzeba;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeba<",
        "Lcom/google/android/gms/internal/ads/zzehd;",
        "Lcom/google/android/gms/internal/ads/zzehc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzidg:Lcom/google/android/gms/internal/ads/zzecs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzecs;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecu;->zzidg:Lcom/google/android/gms/internal/ads/zzecs;

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

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzehd;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzehd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzehc;->zzbfm()Lcom/google/android/gms/internal/ads/zzehc$zza;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzehc$zza;->zzfs(I)Lcom/google/android/gms/internal/ads/zzehc$zza;

    move-result-object p1

    const/16 v0, 0x20

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeiu;->zzft(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzejr;->zzt([B)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzehc$zza;->zzah(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzehc$zza;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzehc;

    return-object p1
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzehd;->zzaa(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzehd;

    move-result-object p1

    return-object p1
.end method
