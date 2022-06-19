.class final synthetic Lcom/google/android/gms/internal/ads/nh1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/th1;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/th1;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nh1;->a:Lcom/google/android/gms/internal/ads/th1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nh1;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nh1;->a:Lcom/google/android/gms/internal/ads/th1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nh1;->b:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/th1;->g(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/py;

    move-result-object p1

    return-object p1
.end method
