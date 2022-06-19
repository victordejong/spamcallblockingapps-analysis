.class final Lcom/google/android/gms/internal/ads/dfb;
.super Lcom/google/android/gms/internal/ads/dcu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcu<",
        "Lcom/google/android/gms/internal/ads/dhr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/dhr;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dcw;

    new-instance v2, Lcom/google/android/gms/internal/ads/dff;

    const-class v3, Lcom/google/android/gms/internal/ads/dcq;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dff;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/dcw;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dhr;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dhr;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/dhr;

    .line 1005
    iget v0, p1, Lcom/google/android/gms/internal/ads/dhr;->zzihc:I

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->b(I)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhr;->a()Lcom/google/android/gms/internal/ads/dhn;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dfj;->a(Lcom/google/android/gms/internal/ads/dhn;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/dih$a;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dih$a;->zzikc:Lcom/google/android/gms/internal/ads/dih$a;

    return-object v0
.end method
