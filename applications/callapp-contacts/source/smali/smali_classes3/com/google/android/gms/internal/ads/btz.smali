.class final synthetic Lcom/google/android/gms/internal/ads/btz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/btw;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/gms/internal/ads/cpk;

.field private final d:Lcom/google/android/gms/internal/ads/cov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/btw;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btz;->a:Lcom/google/android/gms/internal/ads/btw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btz;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/btz;->c:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/btz;->d:Lcom/google/android/gms/internal/ads/cov;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/btz;->a:Lcom/google/android/gms/internal/ads/btw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btz;->b:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btz;->c:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btz;->d:Lcom/google/android/gms/internal/ads/cov;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/btw;->a(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
