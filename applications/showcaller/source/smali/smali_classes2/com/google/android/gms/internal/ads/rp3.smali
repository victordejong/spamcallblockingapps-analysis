.class final synthetic Lcom/google/android/gms/internal/ads/rp3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/tp3;

.field private final e:Lcom/google/android/gms/internal/ads/nm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tp3;Lcom/google/android/gms/internal/ads/nm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rp3;->e:Lcom/google/android/gms/internal/ads/nm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rp3;->e:Lcom/google/android/gms/internal/ads/nm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tp3;->l(Lcom/google/android/gms/internal/ads/nm;)V

    return-void
.end method
