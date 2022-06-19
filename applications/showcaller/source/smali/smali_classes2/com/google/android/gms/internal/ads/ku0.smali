.class public final Lcom/google/android/gms/internal/ads/ku0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/b31;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/jj2;

.field private final e:Lcom/google/android/gms/internal/ads/rj2;

.field private final f:Lcom/google/android/gms/internal/ads/yo2;

.field private final g:Lcom/google/android/gms/internal/ads/bp2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/yo2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ku0;->e:Lcom/google/android/gms/internal/ads/rj2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ku0;->g:Lcom/google/android/gms/internal/ads/bp2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ku0;->f:Lcom/google/android/gms/internal/ads/yo2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ku0;->d:Lcom/google/android/gms/internal/ads/jj2;

    return-void
.end method


# virtual methods
.method public final O(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ku0;->g:Lcom/google/android/gms/internal/ads/bp2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ku0;->f:Lcom/google/android/gms/internal/ads/yo2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ku0;->e:Lcom/google/android/gms/internal/ads/rj2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ku0;->d:Lcom/google/android/gms/internal/ads/jj2;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/jj2;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/yo2;->a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/bp2;->a(Ljava/util/List;)V

    return-void
.end method
