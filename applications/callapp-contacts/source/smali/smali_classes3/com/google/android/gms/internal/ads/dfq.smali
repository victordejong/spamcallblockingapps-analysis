.class final Lcom/google/android/gms/internal/ads/dfq;
.super Lcom/google/android/gms/internal/ads/dcx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcx<",
        "Lcom/google/android/gms/internal/ads/dga;",
        "Lcom/google/android/gms/internal/ads/dfz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dfo;Ljava/lang/Class;)V
    .locals 0

    .line 1
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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dga;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dga;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/dga;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dga;->a()Lcom/google/android/gms/internal/ads/dge;

    move-result-object v0

    .line 2022
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dfo;->a(Lcom/google/android/gms/internal/ads/dge;)V

    .line 3003
    iget p1, p1, Lcom/google/android/gms/internal/ads/dga;->zzihg:I

    .line 3023
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dfo;->a(I)V

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
    check-cast p1, Lcom/google/android/gms/internal/ads/dga;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dfz;->b()Lcom/google/android/gms/internal/ads/dfz$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfz$a;->a()Lcom/google/android/gms/internal/ads/dfz$a;

    move-result-object v0

    .line 1003
    iget v1, p1, Lcom/google/android/gms/internal/ads/dga;->zzihg:I

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dkz;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dfz$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dfz$a;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dga;->a()Lcom/google/android/gms/internal/ads/dge;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dfz$a;->a(Lcom/google/android/gms/internal/ads/dge;)Lcom/google/android/gms/internal/ads/dfz$a;

    move-result-object p1

    .line 1067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dfz;

    return-object p1
.end method
