.class final Lcom/google/android/gms/internal/ads/s33;
.super Lcom/google/android/gms/internal/ads/v13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/v13<",
        "Lcom/google/android/gms/internal/ads/i13;",
        "Lcom/google/android/gms/internal/ads/aa3;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/v13;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/aa3;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aa3;->D()Lcom/google/android/gms/internal/ads/da3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/da3;->C()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/y13;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y13;->b()Lcom/google/android/gms/internal/ads/i13;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/r33;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aa3;->D()Lcom/google/android/gms/internal/ads/da3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/da3;->E()Lcom/google/android/gms/internal/ads/d93;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/r33;-><init>(Lcom/google/android/gms/internal/ads/d93;Lcom/google/android/gms/internal/ads/i13;)V

    return-object v1
.end method
