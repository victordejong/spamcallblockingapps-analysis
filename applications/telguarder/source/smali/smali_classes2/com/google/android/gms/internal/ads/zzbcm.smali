.class final synthetic Lcom/google/android/gms/internal/ads/zzbcm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzoq;


# instance fields
.field private final zzehv:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcm;->zzehv:[B

    return-void
.end method


# virtual methods
.method public final zzip()Lcom/google/android/gms/internal/ads/zzon;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcm;->zzehv:[B

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoo;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzoo;-><init>([B)V

    return-object v1
.end method
