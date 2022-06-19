.class public final Lcom/google/android/gms/internal/ads/cvh;
.super Lcom/google/android/gms/internal/ads/csx;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csx",
        "<",
        "Lcom/google/android/gms/internal/ads/cvr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/cvr;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/csz;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gms/internal/ads/cvg;

    const-class v4, Lcom/google/android/gms/internal/ads/ctd;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/cvg;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/csx;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/csz;)V

    .line 2
    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cvh;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cvv;)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cvh;->b(Lcom/google/android/gms/internal/ads/cvv;)V

    return-void
.end method

.method private static b(I)V
    .locals 2

    .prologue
    .line 10
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    .line 11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "AesCmacKey size wrong, must be 16 bytes"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_0
    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/ads/cvv;)V
    .locals 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cvv;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cvv;->a()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cvr;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cvr;

    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 2

    .prologue
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/cvr;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvr;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dao;->a(II)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvr;->b()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvh;->b(I)V

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvr;->c()Lcom/google/android/gms/internal/ads/cvv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvh;->b(Lcom/google/android/gms/internal/ads/cvv;)V

    .line 18
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cxu$b;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/cxu$b;->b:Lcom/google/android/gms/internal/ads/cxu$b;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/csw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/csw",
            "<",
            "Lcom/google/android/gms/internal/ads/cvu;",
            "Lcom/google/android/gms/internal/ads/cvr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/cvj;

    const-class v1, Lcom/google/android/gms/internal/ads/cvu;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/cvj;-><init>(Lcom/google/android/gms/internal/ads/cvh;Ljava/lang/Class;)V

    return-object v0
.end method
