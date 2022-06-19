.class final synthetic Lcom/google/android/gms/internal/ads/eo0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tz2;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/u;

.field private final c:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final d:Lcom/google/android/gms/ads/internal/a;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/ads/internal/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eo0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eo0;->b:Lcom/google/android/gms/internal/ads/u;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/eo0;->c:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/eo0;->d:Lcom/google/android/gms/ads/internal/a;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/eo0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo0;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eo0;->b:Lcom/google/android/gms/internal/ads/u;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eo0;->c:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/eo0;->d:Lcom/google/android/gms/ads/internal/a;

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/eo0;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/ads/ho0;

    invoke-static {}, Lcom/google/android/gms/internal/ads/mp0;->b()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pm;->a()Lcom/google/android/gms/internal/ads/pm;

    move-result-object v11

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 3
    invoke-static/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/ho0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mp0;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ax;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ui0;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ui0;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/go0;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/go0;-><init>(Lcom/google/android/gms/internal/ads/ui0;)V

    .line 6
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/jp0;->f0(Lcom/google/android/gms/internal/ads/hp0;)V

    .line 7
    invoke-interface {v0, v14}, Lcom/google/android/gms/internal/ads/wn0;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
