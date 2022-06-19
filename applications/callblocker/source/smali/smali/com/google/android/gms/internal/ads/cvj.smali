.class final Lcom/google/android/gms/internal/ads/cvj;
.super Lcom/google/android/gms/internal/ads/csw;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csw",
        "<",
        "Lcom/google/android/gms/internal/ads/cvu;",
        "Lcom/google/android/gms/internal/ads/cvr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cvh;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cvu;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cvu;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/cvu;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvu;->b()Lcom/google/android/gms/internal/ads/cvv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvh;->a(Lcom/google/android/gms/internal/ads/cvv;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvu;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvh;->a(I)V

    .line 15
    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cvu;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvr;->d()Lcom/google/android/gms/internal/ads/cvr$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cvr$a;->a(I)Lcom/google/android/gms/internal/ads/cvr$a;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvu;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/daj;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cvr$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cvr$a;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvu;->b()Lcom/google/android/gms/internal/ads/cvv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cvr$a;->a(Lcom/google/android/gms/internal/ads/cvv;)Lcom/google/android/gms/internal/ads/cvr$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cvr;

    .line 8
    return-object v0
.end method
