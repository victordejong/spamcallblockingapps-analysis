.class public final Lcom/google/android/gms/internal/ads/ax2;
.super Lcom/google/android/gms/internal/ads/yw2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/yw2<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/yw2;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/yw2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zw2;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/yw2;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yw2;

    return-object p0
.end method

.method public final f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ax2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/ax2<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/yw2;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yw2;

    return-object p0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yw2;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yw2;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/yw2;->b:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzs([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    return-object v0
.end method
