.class final synthetic Lcom/google/android/gms/internal/ads/akg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/akh;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/akh;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/akg;->a:Lcom/google/android/gms/internal/ads/akh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/akg;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akg;->a:Lcom/google/android/gms/internal/ads/akh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/akg;->b:Lorg/json/JSONObject;

    .line 1031
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/akh;->a:Lcom/google/android/gms/internal/ads/adt;

    const-string v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/adt;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
