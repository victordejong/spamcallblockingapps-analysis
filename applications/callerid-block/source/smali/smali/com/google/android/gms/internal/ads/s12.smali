.class final Lcom/google/android/gms/internal/ads/s12;
.super Lcom/google/android/gms/internal/ads/t02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t02<",
        "Lcom/google/android/gms/internal/ads/i02;",
        "Lcom/google/android/gms/internal/ads/p42;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/t02;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/p42;

    new-instance v0, Lcom/google/android/gms/internal/ads/y92;

    new-instance v1, Lcom/google/android/gms/internal/ads/y12;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/y12;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p42;->F()Lcom/google/android/gms/internal/ads/v42;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/ha2;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/u02;->f(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ha2;

    new-instance v2, Lcom/google/android/gms/internal/ads/y32;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/y32;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p42;->G()Lcom/google/android/gms/internal/ads/g72;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/ads/y02;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/u02;->f(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/y02;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p42;->G()Lcom/google/android/gms/internal/ads/g72;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g72;->F()Lcom/google/android/gms/internal/ads/m72;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/m72;->F()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/y92;-><init>(Lcom/google/android/gms/internal/ads/ha2;Lcom/google/android/gms/internal/ads/y02;I)V

    return-object v0
.end method
