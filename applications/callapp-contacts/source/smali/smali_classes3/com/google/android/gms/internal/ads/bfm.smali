.class final synthetic Lcom/google/android/gms/internal/ads/bfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfi;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfm;->a:Lcom/google/android/gms/internal/ads/bfi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bfm;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 14

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bfm;->a:Lcom/google/android/gms/internal/ads/bfi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfm;->b:Ljava/lang/String;

    .line 1133
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkw()Lcom/google/android/gms/internal/ads/aeb;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/bfi;->a:Landroid/content/Context;

    .line 1134
    invoke-static {}, Lcom/google/android/gms/internal/ads/afh;->a()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v2

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/bfi;->b:Lcom/google/android/gms/internal/ads/die;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/bfi;->c:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/bfi;->d:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v11, p1, Lcom/google/android/gms/internal/ads/bfi;->e:Lcom/google/android/gms/internal/ads/ehk;

    const-string v3, "native-omid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1135
    invoke-static/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/aeb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object p1

    .line 1136
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zm;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zm;

    move-result-object v1

    .line 1138
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bfq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/bfq;-><init>(Lcom/google/android/gms/internal/ads/zm;)V

    .line 1139
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afd;)V

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    .line 1140
    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/adt;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
