.class final synthetic Lcom/google/android/gms/internal/ads/de2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ee2;

.field private final e:Lcom/google/android/gms/internal/ads/zzbcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ee2;Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/de2;->d:Lcom/google/android/gms/internal/ads/ee2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/de2;->e:Lcom/google/android/gms/internal/ads/zzbcz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de2;->d:Lcom/google/android/gms/internal/ads/ee2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/de2;->e:Lcom/google/android/gms/internal/ads/zzbcz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/he2;->e(Lcom/google/android/gms/internal/ads/he2;)Lcom/google/android/gms/internal/ads/xe2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xe2;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
