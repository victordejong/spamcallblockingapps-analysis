.class final Lcom/google/android/gms/internal/ads/cuy;
.super Lcom/google/android/gms/internal/ads/csz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csz",
        "<",
        "Lcom/google/android/gms/internal/ads/cst;",
        "Lcom/google/android/gms/internal/ads/cxg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/csz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cxg;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxg;->b()Lcom/google/android/gms/internal/ads/cxc;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cxc;->a()Lcom/google/android/gms/internal/ads/cxh;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxh;->a()Lcom/google/android/gms/internal/ads/cxk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxk;)Lcom/google/android/gms/internal/ads/czt;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxg;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxg;->d()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/czr;->a(Lcom/google/android/gms/internal/ads/czt;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v1

    .line 10
    new-instance v5, Lcom/google/android/gms/internal/ads/cve;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cxc;->b()Lcom/google/android/gms/internal/ads/cwy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwy;->a()Lcom/google/android/gms/internal/ads/cya;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/cve;-><init>(Lcom/google/android/gms/internal/ads/cya;)V

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/czm;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxh;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v2

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxh;->b()Lcom/google/android/gms/internal/ads/cxm;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxm;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cxc;->c()Lcom/google/android/gms/internal/ads/cww;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cww;)Lcom/google/android/gms/internal/ads/czw;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/czm;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/czw;Lcom/google/android/gms/internal/ads/czk;)V

    .line 16
    return-object v0
.end method
