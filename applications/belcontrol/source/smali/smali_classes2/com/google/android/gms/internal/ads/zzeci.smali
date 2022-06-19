.class public final Lcom/google/android/gms/internal/ads/zzeci;
.super Lcom/google/android/gms/internal/ads/zzeax;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeax<",
        "Lcom/google/android/gms/internal/ads/zzefa;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/ads/zzefa;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeaz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzecl;

    const-class v3, Lcom/google/android/gms/internal/ads/zzeaq;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzecl;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeaz;)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

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
            "Lcom/google/android/gms/internal/ads/zzefd;",
            "Lcom/google/android/gms/internal/ads/zzefa;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeck;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefd;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzeck;-><init>(Lcom/google/android/gms/internal/ads/zzeci;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefa;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiv;->zzz(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefa;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejr;->size()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ChaCha20Poly1305Key: incorrect key length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzefa;->zzo(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzefa;

    move-result-object p1

    return-object p1
.end method
