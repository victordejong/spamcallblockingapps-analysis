.class final Lcom/google/android/gms/internal/ads/i32;
.super Lcom/google/android/gms/internal/ads/u02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/u02<",
        "Lcom/google/android/gms/internal/ads/a72;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/t02;

    new-instance v1, Lcom/google/android/gms/internal/ads/h32;

    const-class v2, Lcom/google/android/gms/internal/ads/n02;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/h32;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/a72;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/u02;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/t02;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzenx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzenx;->e:Lcom/google/android/gms/internal/ads/zzenx;

    return-object v0
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/a72;->I(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/a72;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/a72;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/a72;->E()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ra2;->b(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/a72;->F()Lcom/google/android/gms/internal/ads/t62;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p32;->a(Lcom/google/android/gms/internal/ads/t62;)V

    return-void
.end method
