.class final synthetic Lcom/google/android/gms/internal/ads/akr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/arg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/yd;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;

.field private final d:Lcom/google/android/gms/internal/ads/chh;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/chh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/akr;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/akr;->b:Lcom/google/android/gms/internal/ads/yd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/akr;->c:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/akr;->d:Lcom/google/android/gms/internal/ads/chh;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akr;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/akr;->b:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/akr;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/akr;->d:Lcom/google/android/gms/internal/ads/chh;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->m()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgr;->z:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/wf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    return-void
.end method
