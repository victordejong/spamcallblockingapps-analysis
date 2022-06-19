.class final Lcom/google/android/gms/internal/ads/ctw;
.super Lcom/google/android/gms/internal/ads/csz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csz",
        "<",
        "Lcom/google/android/gms/internal/ads/dai;",
        "Lcom/google/android/gms/internal/ads/cwc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/csz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cwc;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/cyz;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwc;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwc;->b()Lcom/google/android/gms/internal/ads/cwg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cwg;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cyz;-><init>([BI)V

    .line 5
    return-object v0
.end method
