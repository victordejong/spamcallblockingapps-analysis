.class public final synthetic Lcom/google/android/gms/internal/ads/zzawp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeah:Lcom/google/android/gms/internal/ads/zzawm;

.field private final zzeai:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawm;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzeah:Lcom/google/android/gms/internal/ads/zzawm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzeai:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzeah:Lcom/google/android/gms/internal/ads/zzawm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzeai:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Landroid/graphics/Bitmap;)V

    return-void
.end method
