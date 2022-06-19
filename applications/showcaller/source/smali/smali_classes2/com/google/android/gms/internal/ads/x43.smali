.class final Lcom/google/android/gms/internal/ads/x43;
.super Lcom/google/android/gms/internal/ads/v13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/v13<",
        "Lcom/google/android/gms/internal/ads/a23;",
        "Lcom/google/android/gms/internal/ads/l53;",
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
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/l53;

    new-instance v0, Lcom/google/android/gms/internal/ads/cc3;

    new-instance v1, Lcom/google/android/gms/internal/ads/zb3;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/l53;->D()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zb3;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/l53;->E()Lcom/google/android/gms/internal/ads/r53;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r53;->C()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cc3;-><init>(Lcom/google/android/gms/internal/ads/i53;I)V

    return-object v0
.end method
