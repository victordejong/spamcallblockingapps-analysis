.class final synthetic Lcom/google/android/gms/internal/ads/aea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/die;

.field private final c:Lcom/google/android/gms/internal/ads/zzbar;

.field private final d:Lcom/google/android/gms/ads/internal/zzb;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aea;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aea;->b:Lcom/google/android/gms/internal/ads/die;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aea;->c:Lcom/google/android/gms/internal/ads/zzbar;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aea;->d:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aea;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aea;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aea;->b:Lcom/google/android/gms/internal/ads/die;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aea;->c:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/aea;->d:Lcom/google/android/gms/ads/internal/zzb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aea;->e:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkw()Lcom/google/android/gms/internal/ads/aeb;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/afh;->a()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v1

    .line 1001
    new-instance v10, Lcom/google/android/gms/internal/ads/ehk;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/ehk;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 5
    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/aeb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zm;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zm;

    move-result-object v1

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/aec;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/aec;-><init>(Lcom/google/android/gms/internal/ads/zm;)V

    .line 9
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afd;)V

    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/adt;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
