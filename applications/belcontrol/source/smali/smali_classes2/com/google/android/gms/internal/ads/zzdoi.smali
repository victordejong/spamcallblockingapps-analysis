.class public final Lcom/google/android/gms/internal/ads/zzdoi;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zze(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzdoh;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method
