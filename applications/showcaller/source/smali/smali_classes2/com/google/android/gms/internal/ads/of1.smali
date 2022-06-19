.class final synthetic Lcom/google/android/gms/internal/ads/of1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/rf1;

.field private final e:Lcom/google/android/gms/internal/ads/ng1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rf1;Lcom/google/android/gms/internal/ads/ng1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/of1;->d:Lcom/google/android/gms/internal/ads/rf1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/of1;->e:Lcom/google/android/gms/internal/ads/ng1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of1;->d:Lcom/google/android/gms/internal/ads/rf1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/of1;->e:Lcom/google/android/gms/internal/ads/ng1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rf1;->f(Lcom/google/android/gms/internal/ads/ng1;)V

    return-void
.end method
