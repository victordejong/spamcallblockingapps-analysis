.class final synthetic Lcom/google/android/gms/internal/ads/aoq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/yd;

.field private final c:Lcom/google/android/gms/internal/ads/chh;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/chh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aoq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aoq;->b:Lcom/google/android/gms/internal/ads/yd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aoq;->c:Lcom/google/android/gms/internal/ads/chh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoq;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aoq;->b:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aoq;->c:Lcom/google/android/gms/internal/ads/chh;

    check-cast p1, Lcom/google/android/gms/internal/ads/cgr;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/vv;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/vv;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cgr;->y:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/vv;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cgr;->z:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/vv;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/vv;->b(Ljava/lang/String;)V

    .line 6
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/vv;->a(Ljava/lang/String;)V

    .line 8
    return-object v3
.end method
