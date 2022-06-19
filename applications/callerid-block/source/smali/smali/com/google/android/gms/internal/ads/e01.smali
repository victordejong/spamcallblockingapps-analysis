.class final synthetic Lcom/google/android/gms/internal/ads/e01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/i01;

.field private final b:Lcom/google/android/gms/internal/ads/al1;

.field private final c:Lcom/google/android/gms/internal/ads/ml1;

.field private final d:Lcom/google/android/gms/internal/ads/vo0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/i01;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/vo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e01;->a:Lcom/google/android/gms/internal/ads/i01;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/e01;->b:Lcom/google/android/gms/internal/ads/al1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/e01;->c:Lcom/google/android/gms/internal/ads/ml1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/e01;->d:Lcom/google/android/gms/internal/ads/vo0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e01;->a:Lcom/google/android/gms/internal/ads/i01;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e01;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e01;->c:Lcom/google/android/gms/internal/ads/ml1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/e01;->d:Lcom/google/android/gms/internal/ads/vo0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/i01;->c(Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/vo0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
