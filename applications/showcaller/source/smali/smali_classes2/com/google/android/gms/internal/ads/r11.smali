.class final synthetic Lcom/google/android/gms/internal/ads/r11;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final c:Lcom/google/android/gms/internal/ads/xj2;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/xj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r11;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r11;->b:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/r11;->c:Lcom/google/android/gms/internal/ads/xj2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r11;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r11;->b:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r11;->c:Lcom/google/android/gms/internal/ads/xj2;

    check-cast p1, Lcom/google/android/gms/internal/ads/ej2;

    new-instance v3, Lcom/google/android/gms/ads/internal/util/w;

    .line 2
    invoke-direct {v3, v0}, Lcom/google/android/gms/ads/internal/util/w;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ej2;->B:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/util/w;->e(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ej2;->C:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/w;->f(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/w;->d(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/w;->c(Ljava/lang/String;)V

    return-object v3
.end method
