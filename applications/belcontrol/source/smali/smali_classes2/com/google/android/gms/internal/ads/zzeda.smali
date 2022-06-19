.class public final Lcom/google/android/gms/internal/ads/zzeda;
.super Lcom/google/android/gms/internal/ads/zzeax;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeax<",
        "Lcom/google/android/gms/internal/ads/zzefo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/ads/zzefo;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeaz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedd;

    const-class v3, Lcom/google/android/gms/internal/ads/zzeat;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzedd;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeaz;)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    return-object v0
.end method

.method public final zzbal()Lcom/google/android/gms/internal/ads/zzegd$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd$zza;->zzigz:Lcom/google/android/gms/internal/ads/zzegd$zza;

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefo;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiv;->zzz(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefo;->zzbcu()Lcom/google/android/gms/internal/ads/zzefk;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzefk;)V

    return-void
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzefo;->zzs(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzefo;

    move-result-object p1

    return-object p1
.end method
