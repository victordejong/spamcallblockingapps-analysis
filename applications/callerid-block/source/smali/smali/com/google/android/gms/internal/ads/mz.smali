.class public final Lcom/google/android/gms/internal/ads/mz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/v70;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dl1;

.field private final c:Lcom/google/android/gms/internal/ads/ml1;

.field private final d:Lcom/google/android/gms/internal/ads/qq1;

.field private final e:Lcom/google/android/gms/internal/ads/tq1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/tq1;Lcom/google/android/gms/internal/ads/qq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mz;->c:Lcom/google/android/gms/internal/ads/ml1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mz;->e:Lcom/google/android/gms/internal/ads/tq1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mz;->d:Lcom/google/android/gms/internal/ads/qq1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ml1;->b:Lcom/google/android/gms/internal/ads/kl1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kl1;->b:Lcom/google/android/gms/internal/ads/dl1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mz;->b:Lcom/google/android/gms/internal/ads/dl1;

    return-void
.end method


# virtual methods
.method public final f0(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mz;->e:Lcom/google/android/gms/internal/ads/tq1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mz;->d:Lcom/google/android/gms/internal/ads/qq1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mz;->c:Lcom/google/android/gms/internal/ads/ml1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mz;->b:Lcom/google/android/gms/internal/ads/dl1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dl1;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/qq1;->a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/tq1;->a(Ljava/util/List;)V

    return-void
.end method
