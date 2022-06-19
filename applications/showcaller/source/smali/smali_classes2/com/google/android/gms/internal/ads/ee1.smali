.class final synthetic Lcom/google/android/gms/internal/ads/ee1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/hh1;

.field private final e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hh1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ee1;->d:Lcom/google/android/gms/internal/ads/hh1;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ee1;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee1;->d:Lcom/google/android/gms/internal/ads/hh1;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ee1;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hh1;->m(Z)V

    return-void
.end method
