.class public final Lcom/google/android/gms/internal/ads/bkd;
.super Lcom/google/android/gms/internal/ads/pt;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bke;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/bke;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkd;->a:Lcom/google/android/gms/internal/ads/bke;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkd;->a:Lcom/google/android/gms/internal/ads/bke;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bke;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 3
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/wi;)V
    .locals 4

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkd;->a:Lcom/google/android/gms/internal/ads/bke;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bke;->a:Lcom/google/android/gms/internal/ads/yo;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayd;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/wi;->a:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/gms/internal/ads/wi;->b:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 7
    return-void
.end method
