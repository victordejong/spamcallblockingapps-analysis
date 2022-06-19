.class public final Lcom/google/android/gms/internal/ads/zzebw;
.super Lcom/google/android/gms/internal/ads/zzeax;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeax<",
        "Lcom/google/android/gms/internal/ads/zzeeg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/ads/zzeeg;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeaz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebz;

    const-class v3, Lcom/google/android/gms/internal/ads/zzeio;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzebz;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeaz;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzebw;Lcom/google/android/gms/internal/ads/zzeek;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zza(Lcom/google/android/gms/internal/ads/zzeek;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzeeg;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeg;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiv;->zzz(II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeg;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejr;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeiv;->zzfu(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeg;->zzbbt()Lcom/google/android/gms/internal/ads/zzeek;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebw;->zza(Lcom/google/android/gms/internal/ads/zzeek;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzeek;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeek;->zzbbz()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeek;->zzbbz()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    return-object v0
.end method

.method public final zzbal()Lcom/google/android/gms/internal/ads/zzegd$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd$zza;->zzigx:Lcom/google/android/gms/internal/ads/zzegd$zza;

    return-object v0
.end method

.method public final zzbao()Lcom/google/android/gms/internal/ads/zzeba;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeba<",
            "Lcom/google/android/gms/internal/ads/zzeej;",
            "Lcom/google/android/gms/internal/ads/zzeeg;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeby;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeej;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzeby;-><init>(Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zza(Lcom/google/android/gms/internal/ads/zzeeg;)V

    return-void
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeeg;->zzg(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeeg;

    move-result-object p1

    return-object p1
.end method
