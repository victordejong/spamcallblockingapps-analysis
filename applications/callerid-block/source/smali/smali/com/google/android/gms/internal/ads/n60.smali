.class final synthetic Lcom/google/android/gms/internal/ads/n60;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/fw1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final c:Lcom/google/android/gms/internal/ads/sl1;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/sl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n60;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n60;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/n60;->c:Lcom/google/android/gms/internal/ads/sl1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n60;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n60;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n60;->c:Lcom/google/android/gms/internal/ads/sl1;

    check-cast p1, Lcom/google/android/gms/internal/ads/al1;

    new-instance v3, Lcom/google/android/gms/ads/internal/util/l;

    invoke-direct {v3, v0}, Lcom/google/android/gms/ads/internal/util/l;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/al1;->A:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/util/l;->e(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/al1;->B:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/l;->f(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbbq;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/l;->d(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/l;->c(Ljava/lang/String;)V

    return-object v3
.end method
