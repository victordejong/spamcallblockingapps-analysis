.class public final Lcom/google/android/gms/internal/ads/vv0;
.super Lcom/google/android/gms/internal/ads/fj;
.source ""


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/wv0;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/wv0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vv0;->b:Lcom/google/android/gms/internal/ads/wv0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fj;-><init>()V

    return-void
.end method


# virtual methods
.method public final D2(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv0;->b:Lcom/google/android/gms/internal/ads/wv0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fp;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final O5(Lcom/google/android/gms/ads/internal/util/zzaq;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv0;->b:Lcom/google/android/gms/internal/ads/wv0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzap;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->b:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->c:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
