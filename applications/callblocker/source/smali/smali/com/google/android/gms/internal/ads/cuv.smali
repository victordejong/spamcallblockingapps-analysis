.class final Lcom/google/android/gms/internal/ads/cuv;
.super Lcom/google/android/gms/internal/ads/csx;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csx",
        "<",
        "Lcom/google/android/gms/internal/ads/cxg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/cxg;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/csz;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gms/internal/ads/cuy;

    const-class v4, Lcom/google/android/gms/internal/ads/cst;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/cuy;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/csx;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/csz;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cxg;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cxg;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 2

    .prologue
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/cxg;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxg;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dao;->a(II)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxg;->b()Lcom/google/android/gms/internal/ads/cxc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxc;)V

    .line 8
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cxu$b;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/cxu$b;->d:Lcom/google/android/gms/internal/ads/cxu$b;

    return-object v0
.end method
