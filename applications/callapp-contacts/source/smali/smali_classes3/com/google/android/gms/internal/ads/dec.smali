.class public final Lcom/google/android/gms/internal/ads/dec;
.super Lcom/google/android/gms/internal/ads/dcu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcu<",
        "Lcom/google/android/gms/internal/ads/dgq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/dgq;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dcw;

    new-instance v2, Lcom/google/android/gms/internal/ads/dea;

    const-class v3, Lcom/google/android/gms/internal/ads/dcn;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dea;-><init>(Ljava/lang/Class;)V

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

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dgq;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dgq;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/dgq;

    .line 1004
    iget v0, p1, Lcom/google/android/gms/internal/ads/dgq;->zzihc:I

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->b(I)V

    .line 1011
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dgq;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->a(I)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgq;->a()Lcom/google/android/gms/internal/ads/dgu;

    move-result-object v0

    .line 2003
    iget v0, v0, Lcom/google/android/gms/internal/ads/dgu;->zziht:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgq;->a()Lcom/google/android/gms/internal/ads/dgu;

    move-result-object p1

    .line 3003
    iget p1, p1, Lcom/google/android/gms/internal/ads/dgu;->zziht:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
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
            "Lcom/google/android/gms/internal/ads/dgr;",
            "Lcom/google/android/gms/internal/ads/dgq;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dee;

    const-class v1, Lcom/google/android/gms/internal/ads/dgr;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/dee;-><init>(Lcom/google/android/gms/internal/ads/dec;Ljava/lang/Class;)V

    return-object v0
.end method
