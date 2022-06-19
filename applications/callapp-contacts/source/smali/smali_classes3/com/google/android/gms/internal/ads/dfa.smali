.class public final Lcom/google/android/gms/internal/ads/dfa;
.super Lcom/google/android/gms/internal/ads/ddj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ddj<",
        "Lcom/google/android/gms/internal/ads/dhq;",
        "Lcom/google/android/gms/internal/ads/dhr;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 15
    sput-object v0, Lcom/google/android/gms/internal/ads/dfa;->c:[B

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/dhq;

    const-class v1, Lcom/google/android/gms/internal/ads/dhr;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/dcw;

    new-instance v3, Lcom/google/android/gms/internal/ads/dez;

    const-class v4, Lcom/google/android/gms/internal/ads/dcr;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/dez;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ddj;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/dcw;)V

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

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dhq;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dhq;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/dhq;

    .line 1011
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dhq;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2004
    iget v0, p1, Lcom/google/android/gms/internal/ads/dhq;->zzihc:I

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->b(I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhq;->a()Lcom/google/android/gms/internal/ads/dhr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhr;->a()Lcom/google/android/gms/internal/ads/dhn;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dfj;->a(Lcom/google/android/gms/internal/ads/dhn;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/dih$a;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dih$a;->zzikb:Lcom/google/android/gms/internal/ads/dih$a;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dcx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dcx<",
            "Lcom/google/android/gms/internal/ads/dhm;",
            "Lcom/google/android/gms/internal/ads/dhq;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dfd;

    const-class v1, Lcom/google/android/gms/internal/ads/dhm;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/dfd;-><init>(Lcom/google/android/gms/internal/ads/dfa;Ljava/lang/Class;)V

    return-object v0
.end method
