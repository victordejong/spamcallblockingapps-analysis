.class public final Lcom/google/android/gms/internal/ads/cte;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final b:[B

.field private final c:Lcom/google/android/gms/internal/ads/cxy;

.field private final d:Lcom/google/android/gms/internal/ads/cyq;

.field private final e:I


# direct methods
.method constructor <init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/cxy;Lcom/google/android/gms/internal/ads/cyq;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/android/gms/internal/ads/cxy;",
            "Lcom/google/android/gms/internal/ads/cyq;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cte;->a:Ljava/lang/Object;

    .line 3
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cte;->b:[B

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cte;->c:Lcom/google/android/gms/internal/ads/cxy;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cte;->d:Lcom/google/android/gms/internal/ads/cyq;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/cte;->e:I

    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cte;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/cxy;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cte;->c:Lcom/google/android/gms/internal/ads/cxy;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cyq;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cte;->d:Lcom/google/android/gms/internal/ads/cyq;

    return-object v0
.end method

.method public final d()[B
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cte;->b:[B

    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cte;->b:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cte;->b:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method
