.class public final Lcom/google/android/gms/internal/ads/dfo;
.super Lcom/google/android/gms/internal/ads/dcu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcu<",
        "Lcom/google/android/gms/internal/ads/dfz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/dfz;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dcw;

    new-instance v2, Lcom/google/android/gms/internal/ads/dfn;

    const-class v3, Lcom/google/android/gms/internal/ads/ddb;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dfn;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/dcw;)V

    return-void
.end method

.method static a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Lcom/google/android/gms/internal/ads/dge;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1003
    iget v0, p0, Lcom/google/android/gms/internal/ads/dge;->zzihi:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 2003
    iget p0, p0, Lcom/google/android/gms/internal/ads/dge;->zzihi:I

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too long"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too short"

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

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dfz;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dfz;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/dfz;

    .line 2004
    iget v0, p1, Lcom/google/android/gms/internal/ads/dfz;->zzihc:I

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->b(I)V

    .line 2007
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dfz;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dfo;->a(I)V

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dfz;->a()Lcom/google/android/gms/internal/ads/dge;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dfo;->a(Lcom/google/android/gms/internal/ads/dge;)V

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
            "Lcom/google/android/gms/internal/ads/dga;",
            "Lcom/google/android/gms/internal/ads/dfz;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/dfq;

    const-class v1, Lcom/google/android/gms/internal/ads/dga;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/dfq;-><init>(Lcom/google/android/gms/internal/ads/dfo;Ljava/lang/Class;)V

    return-object v0
.end method
