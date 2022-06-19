.class public final synthetic Lcom/google/android/gms/internal/ads/zzbio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfqh:Lcom/google/android/gms/internal/ads/zzbim;

.field private final zzfqi:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbim;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzfqh:Lcom/google/android/gms/internal/ads/zzbim;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzfqi:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzfqh:Lcom/google/android/gms/internal/ads/zzbim;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzfqi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbim;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method
