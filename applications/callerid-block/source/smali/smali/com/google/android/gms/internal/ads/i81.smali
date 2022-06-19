.class public final Lcom/google/android/gms/internal/ads/i81;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/id1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/id1<",
        "Lcom/google/android/gms/internal/ads/j81;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/util/f;

.field private final b:Lcom/google/android/gms/internal/ads/sl1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/f;Lcom/google/android/gms/internal/ads/sl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i81;->a:Lcom/google/android/gms/common/util/f;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i81;->b:Lcom/google/android/gms/internal/ads/sl1;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/rz1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/j81;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/j81;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i81;->b:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i81;->a:Lcom/google/android/gms/common/util/f;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/j81;-><init>(Lcom/google/android/gms/internal/ads/sl1;J)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    return-object v0
.end method
