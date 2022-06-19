.class public final Lcom/google/android/gms/internal/ads/zzedn;
.super Lcom/google/android/gms/internal/ads/zzeax;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeax<",
        "Lcom/google/android/gms/internal/ads/zzefv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/ads/zzefv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeaz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedq;

    const-class v3, Lcom/google/android/gms/internal/ads/zzebd;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzedq;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeaz;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzefv;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefv;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiv;->zzz(II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefv;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejr;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefv;->zzbdo()Lcom/google/android/gms/internal/ads/zzega;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzedn;->zza(Lcom/google/android/gms/internal/ads/zzega;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzega;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzega;->zzbbj()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeds;->zzidt:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzega;->zzbdu()Lcom/google/android/gms/internal/ads/zzeft;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzega;->zzbbj()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzega;->zzbbj()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzega;->zzbbj()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_5

    :goto_0
    return-void

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzega;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzedn;->zza(Lcom/google/android/gms/internal/ads/zzega;)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

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
            "Lcom/google/android/gms/internal/ads/zzefz;",
            "Lcom/google/android/gms/internal/ads/zzefv;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefz;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzedp;-><init>(Lcom/google/android/gms/internal/ads/zzedn;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzedn;->zza(Lcom/google/android/gms/internal/ads/zzefv;)V

    return-void
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzefv;->zzt(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object p1

    return-object p1
.end method
