.class public final Lcom/google/android/gms/internal/ads/u32;
.super Lcom/google/android/gms/internal/ads/u02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/u02<",
        "Lcom/google/android/gms/internal/ads/g42;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/t02;

    new-instance v1, Lcom/google/android/gms/internal/ads/s32;

    const-class v2, Lcom/google/android/gms/internal/ads/y02;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/s32;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/g42;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/u02;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/t02;)V

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/m42;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/u32;->l(Lcom/google/android/gms/internal/ads/m42;)V

    return-void
.end method

.method static synthetic k(I)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/u32;->m(I)V

    return-void
.end method

.method private static l(Lcom/google/android/gms/internal/ads/m42;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/m42;->E()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/m42;->E()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too long"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static m(I)V
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzenx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzenx;->c:Lcom/google/android/gms/internal/ads/zzenx;

    return-object v0
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/g42;->H(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/g42;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/g42;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g42;->E()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ra2;->b(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g42;->F()Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesf;->zzc()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/u32;->m(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g42;->G()Lcom/google/android/gms/internal/ads/m42;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/u32;->l(Lcom/google/android/gms/internal/ads/m42;)V

    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/r02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r02<",
            "Lcom/google/android/gms/internal/ads/j42;",
            "Lcom/google/android/gms/internal/ads/g42;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/t32;

    const-class v1, Lcom/google/android/gms/internal/ads/j42;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/t32;-><init>(Lcom/google/android/gms/internal/ads/u32;Ljava/lang/Class;)V

    return-object v0
.end method
