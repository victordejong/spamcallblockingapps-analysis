.class final synthetic Lcom/google/android/gms/internal/ads/bcl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcf;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcf;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcl;->a:Lcom/google/android/gms/internal/ads/bcf;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/bcl;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcl;->a:Lcom/google/android/gms/internal/ads/bcf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bcl;->b:Z

    .line 1250
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bcf;->b:Lcom/google/android/gms/internal/ads/bcz;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bcf;->p:Lcom/google/android/gms/internal/ads/ben;

    .line 1251
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ben;->c()Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bcf;->p:Lcom/google/android/gms/internal/ads/ben;

    .line 1252
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ben;->e()Ljava/util/Map;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->p:Lcom/google/android/gms/internal/ads/ben;

    .line 1253
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ben;->f()Ljava/util/Map;

    move-result-object v0

    .line 1254
    invoke-interface {v2, v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/bcz;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method
