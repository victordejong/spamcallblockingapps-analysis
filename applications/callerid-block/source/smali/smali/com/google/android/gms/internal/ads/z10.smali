.class final synthetic Lcom/google/android/gms/internal/ads/z10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/f90;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final d:Lcom/google/android/gms/internal/ads/al1;

.field private final e:Lcom/google/android/gms/internal/ads/sl1;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/sl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z10;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z10;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/z10;->d:Lcom/google/android/gms/internal/ads/al1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/z10;->e:Lcom/google/android/gms/internal/ads/sl1;

    return-void
.end method


# virtual methods
.method public final s()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z10;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z10;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/z10;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/z10;->e:Lcom/google/android/gms/internal/ads/sl1;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->n()Lcom/google/android/gms/ads/internal/util/o;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbq;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/al1;->B:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/o;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
