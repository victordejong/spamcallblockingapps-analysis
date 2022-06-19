.class public final Lcom/google/android/gms/internal/ads/chu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .prologue
    .line 1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 3
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v3, Lcom/google/android/gms/internal/ads/cht;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/cht;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 5
    return-object v1
.end method
