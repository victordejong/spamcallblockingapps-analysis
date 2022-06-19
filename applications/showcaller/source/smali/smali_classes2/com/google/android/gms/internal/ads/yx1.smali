.class final synthetic Lcom/google/android/gms/internal/ads/yx1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/by1;

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/gms/internal/ads/ej2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/by1;Landroid/view/View;Lcom/google/android/gms/internal/ads/ej2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yx1;->a:Lcom/google/android/gms/internal/ads/by1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yx1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yx1;->c:Lcom/google/android/gms/internal/ads/ej2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yx1;->a:Lcom/google/android/gms/internal/ads/by1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yx1;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yx1;->c:Lcom/google/android/gms/internal/ads/ej2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/by1;->e(Landroid/view/View;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
