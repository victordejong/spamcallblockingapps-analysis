.class public final Lcom/google/android/gms/internal/ads/k12;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sw1<",
        "Lcom/google/android/gms/internal/ads/r90;",
        "Lcom/google/android/gms/internal/ads/my1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/p22;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/p22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k12;->a:Lcom/google/android/gms/internal/ads/p22;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/tw1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/tw1<",
            "Lcom/google/android/gms/internal/ads/r90;",
            "Lcom/google/android/gms/internal/ads/my1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/k12;->a:Lcom/google/android/gms/internal/ads/p22;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/p22;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r90;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/my1;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/my1;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/tw1;

    .line 3
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/tw1;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/j41;Ljava/lang/String;)V

    return-object v1
.end method
