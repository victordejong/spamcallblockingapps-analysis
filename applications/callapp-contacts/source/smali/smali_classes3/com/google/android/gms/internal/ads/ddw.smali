.class public final Lcom/google/android/gms/internal/ads/ddw;
.super Lcom/google/android/gms/internal/ads/dcu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcu<",
        "Lcom/google/android/gms/internal/ads/dgj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/dgj;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dcw;

    new-instance v2, Lcom/google/android/gms/internal/ads/ddz;

    const-class v3, Lcom/google/android/gms/internal/ads/dkt;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/ddz;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/dcw;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dgj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1004
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgj;->zzihc:I

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->b(I)V

    .line 1011
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dgj;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->a(I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dgj;->a()Lcom/google/android/gms/internal/ads/dgn;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ddw;->a(Lcom/google/android/gms/internal/ads/dgn;)V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/dgn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2003
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgn;->zziht:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 3003
    iget p0, p0, Lcom/google/android/gms/internal/ads/dgn;->zziht:I

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dgj;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dgj;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/dgj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ddw;->a(Lcom/google/android/gms/internal/ads/dgj;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/dih$a;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dih$a;->zzika:Lcom/google/android/gms/internal/ads/dih$a;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dcx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dcx<",
            "Lcom/google/android/gms/internal/ads/dgm;",
            "Lcom/google/android/gms/internal/ads/dgj;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/ddy;

    const-class v1, Lcom/google/android/gms/internal/ads/dgm;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ddy;-><init>(Lcom/google/android/gms/internal/ads/ddw;Ljava/lang/Class;)V

    return-object v0
.end method
