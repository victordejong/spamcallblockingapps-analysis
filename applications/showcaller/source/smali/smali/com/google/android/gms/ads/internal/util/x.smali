.class final Lcom/google/android/gms/ads/internal/util/x;
.super Lcom/google/android/gms/internal/ads/vt;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/google/android/gms/ads/internal/util/a0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/a0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/x;->e:Lcom/google/android/gms/ads/internal/util/a0;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/x;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final h0(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/x;->e:Lcom/google/android/gms/ads/internal/util/a0;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/x;->d:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/google/android/gms/ads/internal/util/a0;->n(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method
