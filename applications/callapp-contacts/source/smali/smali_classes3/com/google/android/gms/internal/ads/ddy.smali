.class final Lcom/google/android/gms/internal/ads/ddy;
.super Lcom/google/android/gms/internal/ads/dcx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcx<",
        "Lcom/google/android/gms/internal/ads/dgm;",
        "Lcom/google/android/gms/internal/ads/dgj;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/internal/ads/ddw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ddw;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddy;->b:Lcom/google/android/gms/internal/ads/ddw;

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dgm;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dgm;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/dgm;

    .line 2004
    iget v0, p1, Lcom/google/android/gms/internal/ads/dgm;->zzihg:I

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->a(I)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgm;->a()Lcom/google/android/gms/internal/ads/dgn;

    move-result-object p1

    .line 2017
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ddw;->a(Lcom/google/android/gms/internal/ads/dgn;)V

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
    check-cast p1, Lcom/google/android/gms/internal/ads/dgm;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgj;->b()Lcom/google/android/gms/internal/ads/dgj$a;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgm;->a()Lcom/google/android/gms/internal/ads/dgn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dgj$a;->a(Lcom/google/android/gms/internal/ads/dgn;)Lcom/google/android/gms/internal/ads/dgj$a;

    move-result-object v0

    .line 1004
    iget p1, p1, Lcom/google/android/gms/internal/ads/dgm;->zzihg:I

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dkz;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dgj$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dgj$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgj$a;->a()Lcom/google/android/gms/internal/ads/dgj$a;

    move-result-object p1

    .line 1067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dgj;

    return-object p1
.end method
