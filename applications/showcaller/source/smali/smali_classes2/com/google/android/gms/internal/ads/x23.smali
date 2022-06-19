.class public final Lcom/google/android/gms/internal/ads/x23;
.super Lcom/google/android/gms/internal/ads/w13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/w13<",
        "Lcom/google/android/gms/internal/ads/u53;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/v13;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/v23;

    const-class v2, Lcom/google/android/gms/internal/ads/i13;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/v23;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/u53;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/w13;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/v13;)V

    return-void
.end method

.method static synthetic k(IIIIII)Lcom/google/android/gms/internal/ads/t13;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Lcom/google/android/gms/internal/ads/t13<",
            "Lcom/google/android/gms/internal/ads/x53;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/t13;

    invoke-static {}, Lcom/google/android/gms/internal/ads/d63;->F()Lcom/google/android/gms/internal/ads/c63;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/g63;->D()Lcom/google/android/gms/internal/ads/f63;

    move-result-object p4

    const/16 v0, 0x10

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/f63;->q(I)Lcom/google/android/gms/internal/ads/f63;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/g63;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/c63;->q(Lcom/google/android/gms/internal/ads/g63;)Lcom/google/android/gms/internal/ads/c63;

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/c63;->r(I)Lcom/google/android/gms/internal/ads/c63;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/d63;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/u83;->F()Lcom/google/android/gms/internal/ads/t83;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/x83;->D()Lcom/google/android/gms/internal/ads/w83;

    move-result-object p4

    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/w83;->r(I)Lcom/google/android/gms/internal/ads/w83;

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/w83;->q(I)Lcom/google/android/gms/internal/ads/w83;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/x83;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/t83;->q(Lcom/google/android/gms/internal/ads/x83;)Lcom/google/android/gms/internal/ads/t83;

    const/16 p3, 0x20

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/t83;->r(I)Lcom/google/android/gms/internal/ads/t83;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/u83;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/x53;->F()Lcom/google/android/gms/internal/ads/w53;

    move-result-object p3

    .line 10
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/w53;->q(Lcom/google/android/gms/internal/ads/d63;)Lcom/google/android/gms/internal/ads/w53;

    .line 11
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/w53;->r(Lcom/google/android/gms/internal/ads/u83;)Lcom/google/android/gms/internal/ads/w53;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/x53;

    .line 13
    invoke-direct {p1, p0, p5}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/u53;->F(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/u53;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/u53;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u53;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gc3;->b(II)V

    new-instance v0, Lcom/google/android/gms/internal/ads/a33;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a33;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u53;->D()Lcom/google/android/gms/internal/ads/a63;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/a33;->l(Lcom/google/android/gms/internal/ads/a63;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/c53;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/c53;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u53;->E()Lcom/google/android/gms/internal/ads/r83;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/c53;->l(Lcom/google/android/gms/internal/ads/r83;)V

    return-void
.end method

.method public final h()Lcom/google/android/gms/internal/ads/u13;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/u13<",
            "Lcom/google/android/gms/internal/ads/x53;",
            "Lcom/google/android/gms/internal/ads/u53;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/w23;

    const-class v1, Lcom/google/android/gms/internal/ads/x53;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/w23;-><init>(Lcom/google/android/gms/internal/ads/x23;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
