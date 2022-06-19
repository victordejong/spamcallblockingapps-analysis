.class final synthetic Lcom/google/android/gms/internal/ads/jl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/ol;

.field private final c:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ol;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jl;->b:Lcom/google/android/gms/internal/ads/ol;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jl;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jl;->b:Lcom/google/android/gms/internal/ads/ol;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jl;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ol;->f(Landroid/graphics/Bitmap;)V

    return-void
.end method
