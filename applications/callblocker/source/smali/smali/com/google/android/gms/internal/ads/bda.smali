.class final synthetic Lcom/google/android/gms/internal/ads/bda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcy;

.field private final b:Ljava/lang/String;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcy;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bda;->a:Lcom/google/android/gms/internal/ads/bcy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bda;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bda;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bda;->a:Lcom/google/android/gms/internal/ads/bcy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bda;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bda;->c:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/act;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
