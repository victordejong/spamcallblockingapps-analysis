.class final synthetic Lcom/google/android/gms/internal/ads/xe0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/cf0;

.field private final e:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cf0;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xe0;->d:Lcom/google/android/gms/internal/ads/cf0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xe0;->e:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xe0;->d:Lcom/google/android/gms/internal/ads/cf0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xe0;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cf0;->g(Landroid/graphics/Bitmap;)V

    return-void
.end method
