.class final Lcom/google/android/gms/internal/ads/dee;
.super Lcom/google/android/gms/internal/ads/dcx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcx<",
        "Lcom/google/android/gms/internal/ads/dgr;",
        "Lcom/google/android/gms/internal/ads/dgq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/internal/ads/dec;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dec;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dee;->b:Lcom/google/android/gms/internal/ads/dec;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dcx;-><init>(Ljava/lang/Class;)V

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dgr;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dgr;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/dgr;

    .line 2004
    iget v0, p1, Lcom/google/android/gms/internal/ads/dgr;->zzihg:I

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->a(I)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgr;->a()Lcom/google/android/gms/internal/ads/dgu;

    move-result-object v0

    .line 3003
    iget v0, v0, Lcom/google/android/gms/internal/ads/dgu;->zziht:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgr;->a()Lcom/google/android/gms/internal/ads/dgu;

    move-result-object p1

    .line 4003
    iget p1, p1, Lcom/google/android/gms/internal/ads/dgu;->zziht:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/dot;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dgr;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgq;->b()Lcom/google/android/gms/internal/ads/dgq$a;

    move-result-object v0

    .line 1004
    iget v1, p1, Lcom/google/android/gms/internal/ads/dgr;->zzihg:I

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dkz;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dgq$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dgq$a;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgr;->a()Lcom/google/android/gms/internal/ads/dgu;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dgq$a;->a(Lcom/google/android/gms/internal/ads/dgu;)Lcom/google/android/gms/internal/ads/dgq$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgq$a;->a()Lcom/google/android/gms/internal/ads/dgq$a;

    move-result-object p1

    .line 1067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dgq;

    return-object p1
.end method
