.class public final Lcom/google/android/gms/internal/ads/zzecz;
.super Lcom/google/android/gms/internal/ads/zzebj;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzebj<",
        "Lcom/google/android/gms/internal/ads/zzefn;",
        "Lcom/google/android/gms/internal/ads/zzefo;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzidj:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 15
    sput-object v0, Lcom/google/android/gms/internal/ads/zzecz;->zzidj:[B

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzefn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefo;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzeaz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzecy;

    const-class v4, Lcom/google/android/gms/internal/ads/zzeau;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzecy;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzebj;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeaz;)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final zzbal()Lcom/google/android/gms/internal/ads/zzegd$zza;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd$zza;->zzigy:Lcom/google/android/gms/internal/ads/zzegd$zza;

    return-object v0
.end method

.method public final zzbao()Lcom/google/android/gms/internal/ads/zzeba;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeba<",
            "Lcom/google/android/gms/internal/ads/zzefj;",
            "Lcom/google/android/gms/internal/ads/zzefn;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefj;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzedb;-><init>(Lcom/google/android/gms/internal/ads/zzecz;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefn;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefn;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefn;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiv;->zzz(II)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefn;->zzbdb()Lcom/google/android/gms/internal/ads/zzefo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefo;->zzbcu()Lcom/google/android/gms/internal/ads/zzefk;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzefk;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzefn;->zzr(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzefn;

    move-result-object p1

    return-object p1
.end method
