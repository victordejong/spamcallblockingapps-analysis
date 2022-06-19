.class final Lcom/google/android/gms/internal/ads/s32;
.super Lcom/google/android/gms/internal/ads/t02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t02<",
        "Lcom/google/android/gms/internal/ads/y02;",
        "Lcom/google/android/gms/internal/ads/g42;",
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
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/g42;

    new-instance v0, Lcom/google/android/gms/internal/ads/ma2;

    new-instance v1, Lcom/google/android/gms/internal/ads/ja2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g42;->F()Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzesf;->zzy()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ja2;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g42;->G()Lcom/google/android/gms/internal/ads/m42;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/m42;->E()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ma2;-><init>(Lcom/google/android/gms/internal/ads/d42;I)V

    return-object v0
.end method
