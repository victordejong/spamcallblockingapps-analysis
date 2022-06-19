.class final synthetic Lcom/google/android/gms/internal/ads/zzbcc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzefe:I

.field private final zzenn:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzenn:Lcom/google/android/gms/internal/ads/zzbbr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzefe:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzenn:Lcom/google/android/gms/internal/ads/zzbbr;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzefe:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbr;->zzdr(I)V

    return-void
.end method
