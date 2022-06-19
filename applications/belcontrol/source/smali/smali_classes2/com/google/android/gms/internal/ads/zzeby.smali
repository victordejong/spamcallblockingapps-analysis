.class public final Lcom/google/android/gms/internal/ads/zzeby;
.super Lcom/google/android/gms/internal/ads/zzeba;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeba<",
        "Lcom/google/android/gms/internal/ads/zzeej;",
        "Lcom/google/android/gms/internal/ads/zzeeg;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzicw:Lcom/google/android/gms/internal/ads/zzebw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeby;->zzicw:Lcom/google/android/gms/internal/ads/zzebw;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeba;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeej;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeej;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeiv;->zzfu(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeby;->zzicw:Lcom/google/android/gms/internal/ads/zzebw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeej;->zzbbt()Lcom/google/android/gms/internal/ads/zzeek;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzebw;->zza(Lcom/google/android/gms/internal/ads/zzebw;Lcom/google/android/gms/internal/ads/zzeek;)V

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzemo;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeej;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeeg;->zzbbu()Lcom/google/android/gms/internal/ads/zzeeg$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeej;->zzbbt()Lcom/google/android/gms/internal/ads/zzeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeeg$zza;->zzc(Lcom/google/android/gms/internal/ads/zzeek;)Lcom/google/android/gms/internal/ads/zzeeg$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeej;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzft(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejr;->zzt([B)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeeg$zza;->zzu(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzeeg$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeeg$zza;->zzey(I)Lcom/google/android/gms/internal/ads/zzeeg$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeeg;

    return-object p1
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeej;->zzh(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeej;

    move-result-object p1

    return-object p1
.end method
