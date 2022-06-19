.class final Lcom/google/android/gms/internal/ads/b33;
.super Lcom/google/android/gms/internal/ads/v13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/v13<",
        "Lcom/google/android/gms/internal/ads/i13;",
        "Lcom/google/android/gms/internal/ads/j63;",
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
    check-cast p1, Lcom/google/android/gms/internal/ads/j63;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ua3;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j63;->E()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j63;->D()Lcom/google/android/gms/internal/ads/p63;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p63;->C()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ua3;-><init>([BI)V

    return-object v0
.end method
