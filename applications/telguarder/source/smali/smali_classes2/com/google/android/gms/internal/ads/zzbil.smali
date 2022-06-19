.class final synthetic Lcom/google/android/gms/internal/ads/zzbil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfqh:Lcom/google/android/gms/internal/ads/zzbim;

.field private final zzfqi:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbim;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbil;->zzfqh:Lcom/google/android/gms/internal/ads/zzbim;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbil;->zzfqi:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbil;->zzfqh:Lcom/google/android/gms/internal/ads/zzbim;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbil;->zzfqi:Ljava/lang/Runnable;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbio;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Lcom/google/android/gms/internal/ads/zzbim;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzdzv;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
