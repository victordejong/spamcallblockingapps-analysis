.class public final Lcom/google/android/gms/internal/ads/q2;
.super Lcom/google/android/gms/internal/ads/f1;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/ads/m;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/f1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q2;->b:Lcom/google/android/gms/ads/m;

    return-void
.end method


# virtual methods
.method public final y2(Lcom/google/android/gms/internal/ads/zzyz;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q2;->b:Lcom/google/android/gms/ads/m;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzyz;->c:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzyz;->d:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzyz;->e:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/g;->a(ILjava/lang/String;J)Lcom/google/android/gms/ads/g;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q2;->b:Lcom/google/android/gms/ads/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/m;->a(Lcom/google/android/gms/ads/g;)V

    :cond_0
    return-void
.end method
