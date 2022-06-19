.class final synthetic Lcom/google/android/gms/ads/internal/overlay/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/overlay/k;

.field private final e:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/k;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/j;->d:Lcom/google/android/gms/ads/internal/overlay/k;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/j;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->d:Lcom/google/android/gms/ads/internal/overlay/k;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/j;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/k;->c:Lcom/google/android/gms/ads/internal/overlay/l;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
