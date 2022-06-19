.class final Lcom/google/android/gms/internal/ads/dfr;
.super Lcom/google/android/gms/internal/ads/dcx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcx<",
        "Lcom/google/android/gms/internal/ads/dic;",
        "Lcom/google/android/gms/internal/ads/dhy;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/internal/ads/dfp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dfp;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfr;->b:Lcom/google/android/gms/internal/ads/dfp;

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dic;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dic;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/dic;

    .line 2004
    iget v0, p1, Lcom/google/android/gms/internal/ads/dic;->zzihg:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dic;->a()Lcom/google/android/gms/internal/ads/did;

    move-result-object p1

    .line 2026
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dfp;->a(Lcom/google/android/gms/internal/ads/did;)V

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/dot;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dic;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dhy;->b()Lcom/google/android/gms/internal/ads/dhy$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dhy$a;->a()Lcom/google/android/gms/internal/ads/dhy$a;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dic;->a()Lcom/google/android/gms/internal/ads/did;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dhy$a;->a(Lcom/google/android/gms/internal/ads/did;)Lcom/google/android/gms/internal/ads/dhy$a;

    move-result-object v0

    .line 1004
    iget p1, p1, Lcom/google/android/gms/internal/ads/dic;->zzihg:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dkz;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dhy$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dhy$a;

    move-result-object p1

    .line 1067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dhy;

    return-object p1
.end method
