.class public final Lcom/google/android/gms/internal/ads/cuu;
.super Lcom/google/android/gms/internal/ads/ctj;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ctj",
        "<",
        "Lcom/google/android/gms/internal/ads/cxd;",
        "Lcom/google/android/gms/internal/ads/cxg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/cxd;

    const-class v1, Lcom/google/android/gms/internal/ads/cxg;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/csz;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/internal/ads/cut;

    const-class v5, Lcom/google/android/gms/internal/ads/csq;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/cut;-><init>(Ljava/lang/Class;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ctj;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/csz;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cxd;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cxd;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 2

    .prologue
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/cxd;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxd;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "invalid ECIES private key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxd;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dao;->a(II)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxd;->b()Lcom/google/android/gms/internal/ads/cxg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxg;->b()Lcom/google/android/gms/internal/ads/cxc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxc;)V

    .line 11
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cxu$b;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/cxu$b;->c:Lcom/google/android/gms/internal/ads/cxu$b;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/csw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/csw",
            "<",
            "Lcom/google/android/gms/internal/ads/cwz;",
            "Lcom/google/android/gms/internal/ads/cxd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/cuw;

    const-class v1, Lcom/google/android/gms/internal/ads/cwz;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/cuw;-><init>(Lcom/google/android/gms/internal/ads/cuu;Ljava/lang/Class;)V

    return-object v0
.end method
