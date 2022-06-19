.class final synthetic Lcom/google/android/gms/internal/ads/l00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/m00;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/m00;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l00;->b:Lcom/google/android/gms/internal/ads/m00;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l00;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l00;->b:Lcom/google/android/gms/internal/ads/m00;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l00;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/m00;->f(Lorg/json/JSONObject;)V

    return-void
.end method
