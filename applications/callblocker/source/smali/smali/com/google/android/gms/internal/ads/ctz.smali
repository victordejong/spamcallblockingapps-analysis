.class final Lcom/google/android/gms/internal/ads/ctz;
.super Lcom/google/android/gms/internal/ads/csw;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csw",
        "<",
        "Lcom/google/android/gms/internal/ads/cwd;",
        "Lcom/google/android/gms/internal/ads/cwc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ctx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ctx;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ctz;->a:Lcom/google/android/gms/internal/ads/ctx;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/csw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cwd;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cwd;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 2

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/cwd;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwd;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dao;->a(I)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctz;->a:Lcom/google/android/gms/internal/ads/ctx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwd;->a()Lcom/google/android/gms/internal/ads/cwg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ctx;->a(Lcom/google/android/gms/internal/ads/ctx;Lcom/google/android/gms/internal/ads/cwg;)V

    .line 15
    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cwd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cwc;->d()Lcom/google/android/gms/internal/ads/cwc$a;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwd;->a()Lcom/google/android/gms/internal/ads/cwg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwc$a;->a(Lcom/google/android/gms/internal/ads/cwg;)Lcom/google/android/gms/internal/ads/cwc$a;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwd;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/daj;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwc$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cwc$a;

    move-result-object v0

    .line 6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwc$a;->a(I)Lcom/google/android/gms/internal/ads/cwc$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cwc;

    .line 8
    return-object v0
.end method
