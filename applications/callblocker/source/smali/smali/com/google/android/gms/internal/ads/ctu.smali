.class final Lcom/google/android/gms/internal/ads/ctu;
.super Lcom/google/android/gms/internal/ads/csw;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csw",
        "<",
        "Lcom/google/android/gms/internal/ads/cvz;",
        "Lcom/google/android/gms/internal/ads/cvy;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ctt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ctt;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ctu;->a:Lcom/google/android/gms/internal/ads/ctt;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/csw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cvz;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cvz;

    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 2

    .prologue
    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/cvz;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/ctx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ctx;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->f()Lcom/google/android/gms/internal/ads/csw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvz;->a()Lcom/google/android/gms/internal/ads/cwd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/csw;->a(Lcom/google/android/gms/internal/ads/deg;)V

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/cvi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvi;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->f()Lcom/google/android/gms/internal/ads/csw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvz;->b()Lcom/google/android/gms/internal/ads/cxq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/csw;->a(Lcom/google/android/gms/internal/ads/deg;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvz;->a()Lcom/google/android/gms/internal/ads/cwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwd;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dao;->a(I)V

    .line 20
    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cvz;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/ctx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ctx;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->f()Lcom/google/android/gms/internal/ads/csw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvz;->a()Lcom/google/android/gms/internal/ads/cwd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/csw;->b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cwc;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/cvi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/cvi;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/csx;->f()Lcom/google/android/gms/internal/ads/csw;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvz;->b()Lcom/google/android/gms/internal/ads/cxq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/csw;->b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cxp;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvy;->d()Lcom/google/android/gms/internal/ads/cvy$a;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/cvy$a;->a(Lcom/google/android/gms/internal/ads/cwc;)Lcom/google/android/gms/internal/ads/cvy$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cvy$a;->a(Lcom/google/android/gms/internal/ads/cxp;)Lcom/google/android/gms/internal/ads/cvy$a;

    move-result-object v0

    .line 9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cvy$a;->a(I)Lcom/google/android/gms/internal/ads/cvy$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cvy;

    .line 11
    return-object v0
.end method
