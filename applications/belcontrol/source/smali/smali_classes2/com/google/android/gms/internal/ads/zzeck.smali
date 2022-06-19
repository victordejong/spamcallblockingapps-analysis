.class public final Lcom/google/android/gms/internal/ads/zzeck;
.super Lcom/google/android/gms/internal/ads/zzeba;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeba<",
        "Lcom/google/android/gms/internal/ads/zzefd;",
        "Lcom/google/android/gms/internal/ads/zzefa;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzida:Lcom/google/android/gms/internal/ads/zzeci;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeci;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeck;->zzida:Lcom/google/android/gms/internal/ads/zzeci;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeba;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefd;

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzemo;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefa;->zzbco()Lcom/google/android/gms/internal/ads/zzefa$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzefa$zza;->zzfc(I)Lcom/google/android/gms/internal/ads/zzefa$zza;

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeiu;->zzft(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzejr;->zzt([B)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzefa$zza;->zzy(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzefa$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefa;

    return-object p1
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzefd;->zzp(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzefd;

    move-result-object p1

    return-object p1
.end method
