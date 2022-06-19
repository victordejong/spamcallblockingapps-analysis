.class final synthetic Lcom/google/android/gms/internal/ads/uj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/zzcip;

.field private final e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcip;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uj0;->d:Lcom/google/android/gms/internal/ads/zzcip;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/uj0;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uj0;->d:Lcom/google/android/gms/internal/ads/zzcip;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/uj0;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcip;->p(Z)V

    return-void
.end method
