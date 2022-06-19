.class final synthetic Lcom/google/android/gms/internal/ads/zzbex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzefe:I

.field private final zzeff:I

.field private final zzers:Z

.field private final zzert:Z

.field private final zzeug:Lcom/google/android/gms/internal/ads/zzbev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbev;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzeug:Lcom/google/android/gms/internal/ads/zzbev;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzefe:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzeff:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzers:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzert:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzeug:Lcom/google/android/gms/internal/ads/zzbev;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzefe:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzeff:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzers:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbex;->zzert:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbev;->zzb(IIZZ)V

    return-void
.end method
