.class public final Lcom/google/android/gms/internal/ads/ez1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sw1<",
        "Lcom/google/android/gms/internal/ads/ok2;",
        "Lcom/google/android/gms/internal/ads/my1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ol1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ol1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ez1;->a:Lcom/google/android/gms/internal/ads/ol1;

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
            "Lcom/google/android/gms/internal/ads/ok2;",
            "Lcom/google/android/gms/internal/ads/my1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ez1;->a:Lcom/google/android/gms/internal/ads/ol1;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ol1;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ok2;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/my1;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/my1;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/tw1;

    .line 3
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/tw1;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/j41;Ljava/lang/String;)V

    return-object v1
.end method
