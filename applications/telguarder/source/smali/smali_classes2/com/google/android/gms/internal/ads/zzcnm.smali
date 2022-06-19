.class final synthetic Lcom/google/android/gms/internal/ads/zzcnm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgos:Lcom/google/android/gms/internal/ads/zzcnj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnm;->zzgos:Lcom/google/android/gms/internal/ads/zzcnj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnm;->zzgos:Lcom/google/android/gms/internal/ads/zzcnj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnl;->zzarp()V

    return-void
.end method
