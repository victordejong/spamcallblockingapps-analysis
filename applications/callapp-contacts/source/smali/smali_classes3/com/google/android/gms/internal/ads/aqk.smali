.class final synthetic Lcom/google/android/gms/internal/ads/aqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzbar;

.field private final c:Lcom/google/android/gms/internal/ads/cpo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/cpo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqk;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aqk;->b:Lcom/google/android/gms/internal/ads/zzbar;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aqk;->c:Lcom/google/android/gms/internal/ads/cpo;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqk;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqk;->b:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqk;->c:Lcom/google/android/gms/internal/ads/cpo;

    check-cast p1, Lcom/google/android/gms/internal/ads/cov;

    .line 2
    new-instance v3, Lcom/google/android/gms/ads/internal/util/zzad;

    invoke-direct {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzad;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cov;->A:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzad;->zzeo(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cov;->B:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzep(Ljava/lang/String;)V

    .line 5
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzu(Ljava/lang/String;)V

    .line 6
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->setAdUnitId(Ljava/lang/String;)V

    return-object v3
.end method
