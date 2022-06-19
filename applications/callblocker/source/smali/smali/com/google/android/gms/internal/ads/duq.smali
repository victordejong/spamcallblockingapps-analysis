.class final Lcom/google/android/gms/internal/ads/duq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/ads/duw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dur;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/duw;

    check-cast p2, Lcom/google/android/gms/internal/ads/duw;

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/duw;->c:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/duw;->c:I

    sub-int/2addr v0, v1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    :goto_0
    return v0

    .line 4
    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/duw;->a:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/duw;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 5
    goto :goto_0
.end method
