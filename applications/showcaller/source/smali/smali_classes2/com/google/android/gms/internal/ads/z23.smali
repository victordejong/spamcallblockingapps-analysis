.class final Lcom/google/android/gms/internal/ads/z23;
.super Lcom/google/android/gms/internal/ads/u13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/u13<",
        "Lcom/google/android/gms/internal/ads/d63;",
        "Lcom/google/android/gms/internal/ads/a63;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/a33;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/a33;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z23;->b:Lcom/google/android/gms/internal/ads/a33;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/u13;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static final g(Lcom/google/android/gms/internal/ads/d63;)Lcom/google/android/gms/internal/ads/a63;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/a63;->G()Lcom/google/android/gms/internal/ads/z53;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/d63;->C()Lcom/google/android/gms/internal/ads/g63;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z53;->r(Lcom/google/android/gms/internal/ads/g63;)Lcom/google/android/gms/internal/ads/z53;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/d63;->D()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ec3;->a(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/z53;->s(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/z53;

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/z53;->q(I)Lcom/google/android/gms/internal/ads/z53;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/a63;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/d63;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/z23;->f(Lcom/google/android/gms/internal/ads/d63;)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/d63;->E(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/d63;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/d63;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/z23;->g(Lcom/google/android/gms/internal/ads/d63;)Lcom/google/android/gms/internal/ads/a63;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/d63;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/d63;->D()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc3;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z23;->b:Lcom/google/android/gms/internal/ads/a33;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/d63;->C()Lcom/google/android/gms/internal/ads/g63;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/a33;->k(Lcom/google/android/gms/internal/ads/a33;Lcom/google/android/gms/internal/ads/g63;)V

    return-void
.end method
