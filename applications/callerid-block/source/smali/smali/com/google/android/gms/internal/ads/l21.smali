.class public final Lcom/google/android/gms/internal/ads/l21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/xz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/xz0<",
        "Lcom/google/android/gms/internal/ads/im1;",
        "Lcom/google/android/gms/internal/ads/s11;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fp0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fp0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l21;->a:Lcom/google/android/gms/internal/ads/fp0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/yz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/yz0<",
            "Lcom/google/android/gms/internal/ads/im1;",
            "Lcom/google/android/gms/internal/ads/s11;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l21;->a:Lcom/google/android/gms/internal/ads/fp0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/fp0;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/im1;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/s11;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s11;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/yz0;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/yz0;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/b90;Ljava/lang/String;)V

    return-object v1
.end method
