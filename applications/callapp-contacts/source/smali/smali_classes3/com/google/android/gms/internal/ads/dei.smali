.class public final Lcom/google/android/gms/internal/ads/dei;
.super Lcom/google/android/gms/internal/ads/dcu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcu<",
        "Lcom/google/android/gms/internal/ads/dgz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/dgz;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dcw;

    new-instance v2, Lcom/google/android/gms/internal/ads/deh;

    const-class v3, Lcom/google/android/gms/internal/ads/dcn;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/deh;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/dcw;)V

    return-void
.end method

.method static e()Z
    .locals 1

    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    .line 6
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dgz;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dgz;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/dgz;

    .line 1004
    iget v0, p1, Lcom/google/android/gms/internal/ads/dgz;->zzihc:I

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->b(I)V

    .line 1007
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dgz;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dla;->a(I)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/dih$a;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dih$a;->zzika:Lcom/google/android/gms/internal/ads/dih$a;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dcx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dcx<",
            "Lcom/google/android/gms/internal/ads/dhc;",
            "Lcom/google/android/gms/internal/ads/dgz;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dek;

    const-class v1, Lcom/google/android/gms/internal/ads/dhc;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/dek;-><init>(Lcom/google/android/gms/internal/ads/dei;Ljava/lang/Class;)V

    return-object v0
.end method
