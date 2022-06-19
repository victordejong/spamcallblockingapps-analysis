.class final synthetic Lcom/google/android/gms/internal/ads/sj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sk;

.field private final b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sk;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sj;->a:Lcom/google/android/gms/internal/ads/sk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sj;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj;->a:Lcom/google/android/gms/internal/ads/sk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sk;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
