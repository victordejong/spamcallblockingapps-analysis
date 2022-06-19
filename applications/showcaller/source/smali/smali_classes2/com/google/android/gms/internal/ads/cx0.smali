.class final synthetic Lcom/google/android/gms/internal/ads/cx0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n41;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final f:Lcom/google/android/gms/internal/ads/ej2;

.field private final g:Lcom/google/android/gms/internal/ads/xj2;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/xj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cx0;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cx0;->e:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cx0;->f:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cx0;->g:Lcom/google/android/gms/internal/ads/xj2;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cx0;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cx0;->e:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cx0;->f:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cx0;->g:Lcom/google/android/gms/internal/ads/xj2;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->n()Lcom/google/android/gms/ads/internal/util/a0;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ej2;->C:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/a0;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
