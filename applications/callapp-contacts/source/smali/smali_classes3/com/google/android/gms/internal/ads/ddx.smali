.class final Lcom/google/android/gms/internal/ads/ddx;
.super Lcom/google/android/gms/internal/ads/dcx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcx<",
        "Lcom/google/android/gms/internal/ads/dgi;",
        "Lcom/google/android/gms/internal/ads/dgf;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/internal/ads/ddv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ddv;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddx;->b:Lcom/google/android/gms/internal/ads/ddv;

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

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dgi;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dgi;

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

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/dgi;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/ddw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ddw;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->d()Lcom/google/android/gms/internal/ads/dcx;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgi;->a()Lcom/google/android/gms/internal/ads/dgm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dcx;->a(Lcom/google/android/gms/internal/ads/dot;)V

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfp;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->d()Lcom/google/android/gms/internal/ads/dcx;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgi;->b()Lcom/google/android/gms/internal/ads/dic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dcx;->a(Lcom/google/android/gms/internal/ads/dot;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgi;->a()Lcom/google/android/gms/internal/ads/dgm;

    move-result-object p1

    .line 2004
    iget p1, p1, Lcom/google/android/gms/internal/ads/dgm;->zzihg:I

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dla;->a(I)V

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
    check-cast p1, Lcom/google/android/gms/internal/ads/dgi;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/ddw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ddw;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcu;->d()Lcom/google/android/gms/internal/ads/dcx;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgi;->a()Lcom/google/android/gms/internal/ads/dgm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dcx;->b(Lcom/google/android/gms/internal/ads/dot;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgj;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/dfp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dfp;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcu;->d()Lcom/google/android/gms/internal/ads/dcx;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgi;->b()Lcom/google/android/gms/internal/ads/dic;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dcx;->b(Lcom/google/android/gms/internal/ads/dot;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dhy;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgf;->c()Lcom/google/android/gms/internal/ads/dgf$a;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dgf$a;->a(Lcom/google/android/gms/internal/ads/dgj;)Lcom/google/android/gms/internal/ads/dgf$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dgf$a;->a(Lcom/google/android/gms/internal/ads/dhy;)Lcom/google/android/gms/internal/ads/dgf$a;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dgf$a;->a(I)Lcom/google/android/gms/internal/ads/dgf$a;

    move-result-object p1

    .line 1067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dgf;

    return-object p1
.end method
