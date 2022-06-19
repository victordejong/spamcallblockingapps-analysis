.class public final Lcom/google/android/gms/internal/ads/n22;
.super Lcom/google/android/gms/internal/ads/u02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/u02<",
        "Lcom/google/android/gms/internal/ads/j82;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/t02;

    new-instance v1, Lcom/google/android/gms/internal/ads/l22;

    const-class v2, Lcom/google/android/gms/internal/ads/i02;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/l22;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/j82;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/u02;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/t02;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzenx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzenx;->f:Lcom/google/android/gms/internal/ads/zzenx;

    return-object v0
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/j82;->G(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/j82;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/j82;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j82;->E()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ra2;->b(II)V

    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/r02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r02<",
            "Lcom/google/android/gms/internal/ads/m82;",
            "Lcom/google/android/gms/internal/ads/j82;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/m22;

    const-class v1, Lcom/google/android/gms/internal/ads/m82;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/m22;-><init>(Lcom/google/android/gms/internal/ads/n22;Ljava/lang/Class;)V

    return-object v0
.end method
