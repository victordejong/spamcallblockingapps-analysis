.class final Lcom/google/android/gms/internal/ads/zzbaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzejo:Lcom/google/android/gms/internal/ads/zzbam;

.field private final synthetic zzejq:Ljava/lang/String;

.field private final synthetic zzejr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzejq:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzejr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zza(Lcom/google/android/gms/internal/ads/zzbam;)Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zza(Lcom/google/android/gms/internal/ads/zzbam;)Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzejq:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzejr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbaw;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
