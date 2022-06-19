.class final Lcom/google/android/gms/internal/ads/o33;
.super Lcom/google/android/gms/internal/ads/v13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/v13<",
        "Lcom/google/android/gms/internal/ads/i13;",
        "Lcom/google/android/gms/internal/ads/u93;",
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
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/u93;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u93;->D()Lcom/google/android/gms/internal/ads/x93;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x93;->C()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/z13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/y13;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/y13;->b()Lcom/google/android/gms/internal/ads/i13;

    move-result-object p1

    return-object p1
.end method
