.class final synthetic Lcom/google/android/gms/ads/internal/g;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/i;

.field private final e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/i;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/g;->d:Lcom/google/android/gms/ads/internal/i;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/g;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->d:Lcom/google/android/gms/ads/internal/i;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/g;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/i;->j(Z)V

    return-void
.end method
