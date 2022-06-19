.class final synthetic Lcom/google/android/gms/internal/ads/zz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/jt;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jt;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zz;->b:Lcom/google/android/gms/internal/ads/jt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zz;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zz;->b:Lcom/google/android/gms/internal/ads/jt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zz;->c:Lorg/json/JSONObject;

    const-string v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/yb;->m0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
