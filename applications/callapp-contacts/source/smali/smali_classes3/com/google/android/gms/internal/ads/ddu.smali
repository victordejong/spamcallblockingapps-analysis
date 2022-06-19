.class final Lcom/google/android/gms/internal/ads/ddu;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw<",
        "Lcom/google/android/gms/internal/ads/dcn;",
        "Lcom/google/android/gms/internal/ads/dgf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dcw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dgf;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dkg;

    new-instance v1, Lcom/google/android/gms/internal/ads/ddw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ddw;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgf;->a()Lcom/google/android/gms/internal/ads/dgj;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/dkt;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dcu;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dkt;

    new-instance v2, Lcom/google/android/gms/internal/ads/dfp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/dfp;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgf;->b()Lcom/google/android/gms/internal/ads/dhy;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/ads/ddb;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/dcu;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ddb;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgf;->b()Lcom/google/android/gms/internal/ads/dhy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhy;->a()Lcom/google/android/gms/internal/ads/did;

    move-result-object p1

    .line 1005
    iget p1, p1, Lcom/google/android/gms/internal/ads/did;->zzihi:I

    .line 6
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/dkg;-><init>(Lcom/google/android/gms/internal/ads/dkt;Lcom/google/android/gms/internal/ads/ddb;I)V

    return-object v0
.end method
