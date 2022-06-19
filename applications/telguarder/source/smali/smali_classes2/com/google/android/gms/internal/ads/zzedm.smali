.class public final Lcom/google/android/gms/internal/ads/zzedm;
.super Lcom/google/android/gms/internal/ads/zzeax;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeax<",
        "Lcom/google/android/gms/internal/ads/zzedx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzedx;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeaz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedl;

    const-class v3, Lcom/google/android/gms/internal/ads/zzebd;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzedl;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeaz;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzeeb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeb;->zzbbj()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeb;->zzbbj()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too long"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzeeb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzedm;->zza(Lcom/google/android/gms/internal/ads/zzeeb;)V

    return-void
.end method

.method private static zzeu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzev(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzedm;->zzeu(I)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    return-object v0
.end method

.method public final zzbal()Lcom/google/android/gms/internal/ads/zzegd$zza;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd$zza;->zzigx:Lcom/google/android/gms/internal/ads/zzegd$zza;

    return-object v0
.end method

.method public final zzbao()Lcom/google/android/gms/internal/ads/zzeba;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeba<",
            "Lcom/google/android/gms/internal/ads/zzedy;",
            "Lcom/google/android/gms/internal/ads/zzedx;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedo;

    const-class v1, Lcom/google/android/gms/internal/ads/zzedy;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzedo;-><init>(Lcom/google/android/gms/internal/ads/zzedm;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedx;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedx;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiv;->zzz(II)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedx;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejr;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzedm;->zzeu(I)V

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedx;->zzbbf()Lcom/google/android/gms/internal/ads/zzeeb;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzedm;->zza(Lcom/google/android/gms/internal/ads/zzeeb;)V

    return-void
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzedx;->zzc(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzedx;

    move-result-object p1

    return-object p1
.end method
