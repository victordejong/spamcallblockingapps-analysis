.class final synthetic Lcom/google/android/gms/internal/ads/ajx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adt;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/adt;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajx;->a:Lcom/google/android/gms/internal/ads/adt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ajx;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajx;->a:Lcom/google/android/gms/internal/ads/adt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajx;->b:Lorg/json/JSONObject;

    const-string v2, "AFMA_updateActiveView"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/adt;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
