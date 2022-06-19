.class final Lcom/google/android/gms/internal/ads/d22;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/vi0;

.field final synthetic b:Lcom/google/android/gms/internal/ads/rj2;

.field final synthetic c:Lcom/google/android/gms/internal/ads/ej2;

.field final synthetic d:Lcom/google/android/gms/internal/ads/j22;

.field final synthetic e:Lcom/google/android/gms/internal/ads/e22;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e22;Lcom/google/android/gms/internal/ads/vi0;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/j22;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d22;->e:Lcom/google/android/gms/internal/ads/e22;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d22;->a:Lcom/google/android/gms/internal/ads/vi0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/d22;->b:Lcom/google/android/gms/internal/ads/rj2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/d22;->c:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/d22;->d:Lcom/google/android/gms/internal/ads/j22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d22;->a:Lcom/google/android/gms/internal/ads/vi0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d22;->e:Lcom/google/android/gms/internal/ads/e22;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/e22;->d(Lcom/google/android/gms/internal/ads/e22;)Lcom/google/android/gms/internal/ads/n22;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/d22;->b:Lcom/google/android/gms/internal/ads/rj2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/d22;->c:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/d22;->d:Lcom/google/android/gms/internal/ads/j22;

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/n22;->a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Landroid/view/View;Lcom/google/android/gms/internal/ads/j22;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z

    return-void
.end method
