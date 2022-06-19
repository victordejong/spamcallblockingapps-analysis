.class final synthetic Lcom/google/android/gms/internal/ads/px1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/rx1;

.field private final e:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rx1;Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/px1;->d:Lcom/google/android/gms/internal/ads/rx1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/px1;->e:Lcom/google/android/gms/internal/ads/wn0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/px1;->d:Lcom/google/android/gms/internal/ads/rx1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/px1;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rx1;->c(Lcom/google/android/gms/internal/ads/wn0;)V

    return-void
.end method
