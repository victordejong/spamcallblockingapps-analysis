.class final synthetic Lcom/google/android/gms/internal/ads/hk0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/h9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mk0;

.field private final b:Landroid/view/WindowManager;

.field private final c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mk0;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hk0;->a:Lcom/google/android/gms/internal/ads/mk0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hk0;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hk0;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hk0;->a:Lcom/google/android/gms/internal/ads/mk0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hk0;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hk0;->c:Landroid/view/View;

    check-cast p1, Lcom/google/android/gms/internal/ads/jt;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/mk0;->d(Landroid/view/WindowManager;Landroid/view/View;Lcom/google/android/gms/internal/ads/jt;Ljava/util/Map;)V

    return-void
.end method
