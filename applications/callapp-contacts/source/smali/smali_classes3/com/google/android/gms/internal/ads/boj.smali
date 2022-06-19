.class public final Lcom/google/android/gms/internal/ads/boj;
.super Lcom/google/android/gms/internal/ads/sq;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bok;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/bok;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/boj;->a:Lcom/google/android/gms/internal/ads/bok;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boj;->a:Lcom/google/android/gms/internal/ads/bok;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bok;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/util/zzaq;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boj;->a:Lcom/google/android/gms/internal/ads/bok;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bok;->a:Lcom/google/android/gms/internal/ads/zp;

    .line 5
    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzap;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->zzacu:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->errorCode:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzap;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
