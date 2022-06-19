.class final synthetic Lcom/google/android/gms/internal/ads/ej1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qj1;

.field private final b:Ljava/lang/String;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->a:Lcom/google/android/gms/internal/ads/qj1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ej1;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->a:Lcom/google/android/gms/internal/ads/qj1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ej1;->c:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/qj1;->j(Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/wn0;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
