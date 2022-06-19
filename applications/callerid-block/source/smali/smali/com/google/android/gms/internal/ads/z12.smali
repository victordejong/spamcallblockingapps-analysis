.class final Lcom/google/android/gms/internal/ads/z12;
.super Lcom/google/android/gms/internal/ads/t02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t02<",
        "Lcom/google/android/gms/internal/ads/i02;",
        "Lcom/google/android/gms/internal/ads/f52;",
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
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/f52;

    new-instance v0, Lcom/google/android/gms/internal/ads/h92;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f52;->G()Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzesf;->zzy()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f52;->F()Lcom/google/android/gms/internal/ads/l52;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/l52;->E()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/h92;-><init>([BI)V

    return-object v0
.end method
