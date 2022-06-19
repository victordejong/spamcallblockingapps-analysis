.class final synthetic Lcom/google/android/gms/internal/ads/azm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/atb;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzbar;

.field private final c:Lcom/google/android/gms/internal/ads/cov;

.field private final d:Lcom/google/android/gms/internal/ads/cpo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/cpo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azm;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azm;->b:Lcom/google/android/gms/internal/ads/zzbar;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/azm;->c:Lcom/google/android/gms/internal/ads/cov;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/azm;->d:Lcom/google/android/gms/internal/ads/cpo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azm;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azm;->b:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azm;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/azm;->d:Lcom/google/android/gms/internal/ads/cpo;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzam;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cov;->B:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzam;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
