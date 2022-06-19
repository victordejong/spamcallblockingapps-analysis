.class public final Lcom/google/android/gms/internal/ads/is1;
.super Lcom/google/android/gms/internal/ads/uc0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/ls1;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/ls1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/is1;->d:Lcom/google/android/gms/internal/ads/ls1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uc0;-><init>()V

    return-void
.end method


# virtual methods
.method public final C6(Lcom/google/android/gms/ads/internal/util/zzbc;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/is1;->d:Lcom/google/android/gms/internal/ads/ls1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ls1;->a:Lcom/google/android/gms/internal/ads/vi0;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzbb;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/zzbc;->d:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/zzbc;->e:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzbb;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final s4(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/is1;->d:Lcom/google/android/gms/internal/ads/ls1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ls1;->a:Lcom/google/android/gms/internal/ads/vi0;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z

    return-void
.end method
