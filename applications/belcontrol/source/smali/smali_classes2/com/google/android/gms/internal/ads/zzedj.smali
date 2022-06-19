.class public final Lcom/google/android/gms/internal/ads/zzedj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehr;


# instance fields
.field private final zzido:Ljava/lang/String;

.field private final zzidp:I

.field private zzidq:Lcom/google/android/gms/internal/ads/zzees;

.field private zzidr:Lcom/google/android/gms/internal/ads/zzeec;

.field private zzids:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzegg;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegg;->zzbdx()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzido:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzebs;->zzick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegg;->zzbdy()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeev;->zzl(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeev;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebm;->zzb(Lcom/google/android/gms/internal/ads/zzegg;)Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzees;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidq:Lcom/google/android/gms/internal/ads/zzees;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeev;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidp:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzebs;->zzicj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegg;->zzbdy()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeef;->zzf(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeef;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebm;->zzb(Lcom/google/android/gms/internal/ads/zzegg;)Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeec;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidr:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeef;->zzbbq()Lcom/google/android/gms/internal/ads/zzeej;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeej;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzids:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeef;->zzbbr()Lcom/google/android/gms/internal/ads/zzefz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefz;->getKeySize()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzids:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidp:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzbbd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidp:I

    return v0
.end method

.method public final zzm([B)Lcom/google/android/gms/internal/ads/zzeaq;
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/ads/zzeaq;

    array-length v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidp:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzido:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzebs;->zzick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzees;->zzbci()Lcom/google/android/gms/internal/ads/zzees$zza;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidq:Lcom/google/android/gms/internal/ads/zzees;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzees$zza;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidp:I

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzejr;->zzi([BII)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzees$zza;->zzw(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzees$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzees;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzido:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeaq;

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzido:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzebs;->zzicj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzids:I

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzids:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidp:I

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeeg;->zzbbu()Lcom/google/android/gms/internal/ads/zzeeg$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidr:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeec;->zzbbm()Lcom/google/android/gms/internal/ads/zzeeg;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeeg$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzejr;->zzt([B)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzeeg$zza;->zzu(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzeeg$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefv;->zzbdp()Lcom/google/android/gms/internal/ads/zzefv$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidr:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeec;->zzbbn()Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzefv$zza;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejr;->zzt([B)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzefv$zza;->zzae(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzefv$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeec;->zzbbo()Lcom/google/android/gms/internal/ads/zzeec$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzidr:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeec;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeec$zza;->zzex(I)Lcom/google/android/gms/internal/ads/zzeec$zza;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzeec$zza;->zzc(Lcom/google/android/gms/internal/ads/zzeeg;)Lcom/google/android/gms/internal/ads/zzeec$zza;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeec$zza;->zzc(Lcom/google/android/gms/internal/ads/zzefv;)Lcom/google/android/gms/internal/ads/zzeec$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeec;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
