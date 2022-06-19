.class final synthetic Lcom/google/android/gms/internal/ads/zzcsj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzgtn:Lcom/google/android/gms/internal/ads/zzcsg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsj;->zzgtn:Lcom/google/android/gms/internal/ads/zzcsg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsj;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsj;->zzgtn:Lcom/google/android/gms/internal/ads/zzcsg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsj;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsg;->zzl(Lcom/google/android/gms/internal/ads/zzbeb;)V

    return-void
.end method
