.class final synthetic Lcom/google/android/gms/internal/ads/rr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/xq2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yr;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yr;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rr;->a:Lcom/google/android/gms/internal/ads/yr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rr;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/rr;->c:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/yq2;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rr;->a:Lcom/google/android/gms/internal/ads/yr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/rr;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yr;->x(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/yq2;

    move-result-object v0

    return-object v0
.end method
