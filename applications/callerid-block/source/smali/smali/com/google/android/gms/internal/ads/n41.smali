.class final synthetic Lcom/google/android/gms/internal/ads/n41;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/o41;

.field private final c:Lcom/google/android/gms/internal/ads/ml1;

.field private final d:Lcom/google/android/gms/internal/ads/al1;

.field private final e:Lcom/google/android/gms/internal/ads/yz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/o41;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n41;->b:Lcom/google/android/gms/internal/ads/o41;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n41;->c:Lcom/google/android/gms/internal/ads/ml1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/n41;->d:Lcom/google/android/gms/internal/ads/al1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/n41;->e:Lcom/google/android/gms/internal/ads/yz0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n41;->b:Lcom/google/android/gms/internal/ads/o41;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n41;->c:Lcom/google/android/gms/internal/ads/ml1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n41;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/n41;->e:Lcom/google/android/gms/internal/ads/yz0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o41;->d:Lcom/google/android/gms/internal/ads/q41;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/q41;->d(Lcom/google/android/gms/internal/ads/q41;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/yz0;)V

    return-void
.end method
