.class public final Lcom/google/android/gms/internal/ads/g32;
.super Lcom/google/android/gms/internal/ads/g12;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/g12<",
        "Lcom/google/android/gms/internal/ads/x62;",
        "Lcom/google/android/gms/internal/ads/a72;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/t02;

    new-instance v1, Lcom/google/android/gms/internal/ads/e32;

    const-class v2, Lcom/google/android/gms/internal/ads/m02;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/e32;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/x62;

    const-class v2, Lcom/google/android/gms/internal/ads/a72;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/g12;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/t02;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzenx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzenx;->d:Lcom/google/android/gms/internal/ads/zzenx;

    return-object v0
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/x62;->H(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/x62;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/x62;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x62;->G()Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesf;->zzq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x62;->E()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ra2;->b(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x62;->F()Lcom/google/android/gms/internal/ads/a72;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/a72;->F()Lcom/google/android/gms/internal/ads/t62;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p32;->a(Lcom/google/android/gms/internal/ads/t62;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Lcom/google/android/gms/internal/ads/r02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r02<",
            "Lcom/google/android/gms/internal/ads/q62;",
            "Lcom/google/android/gms/internal/ads/x62;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/f32;

    const-class v1, Lcom/google/android/gms/internal/ads/q62;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/f32;-><init>(Lcom/google/android/gms/internal/ads/g32;Ljava/lang/Class;)V

    return-object v0
.end method
