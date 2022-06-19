.class public final Lcom/google/android/gms/internal/ads/zzcno;
.super Lcom/google/android/gms/internal/ads/zzatn;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final synthetic zzgot:Lcom/google/android/gms/internal/ads/zzcnl;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzcnl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzgot:Lcom/google/android/gms/internal/ads/zzcnl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/util/zzaq;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzgot:Lcom/google/android/gms/internal/ads/zzcnl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnl;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    .line 5
    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzap;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->zzacp:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->errorCode:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzap;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzb(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzgot:Lcom/google/android/gms/internal/ads/zzcnl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnl;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z

    return-void
.end method
