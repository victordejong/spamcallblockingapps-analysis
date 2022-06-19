.class final synthetic Lcom/google/android/gms/internal/ads/dm0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/jm0;

.field private final c:Lcom/google/android/gms/internal/ads/jt;

.field private final d:Lcom/google/android/gms/internal/ads/ep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jm0;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/ep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dm0;->b:Lcom/google/android/gms/internal/ads/jm0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dm0;->c:Lcom/google/android/gms/internal/ads/jt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dm0;->d:Lcom/google/android/gms/internal/ads/ep;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dm0;->b:Lcom/google/android/gms/internal/ads/jm0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dm0;->c:Lcom/google/android/gms/internal/ads/jt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dm0;->d:Lcom/google/android/gms/internal/ads/ep;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/jm0;->g(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/ep;Z)V

    return-void
.end method
