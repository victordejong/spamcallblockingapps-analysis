.class public final Lcom/google/android/gms/internal/ads/ddf;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/internal/ads/dii;

.field final c:Lcom/google/android/gms/internal/ads/djb;

.field private final d:[B

.field private final e:I


# direct methods
.method constructor <init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/dii;Lcom/google/android/gms/internal/ads/djb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/android/gms/internal/ads/dii;",
            "Lcom/google/android/gms/internal/ads/djb;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddf;->a:Ljava/lang/Object;

    .line 3
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddf;->d:[B

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ddf;->b:Lcom/google/android/gms/internal/ads/dii;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ddf;->c:Lcom/google/android/gms/internal/ads/djb;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/ddf;->e:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddf;->d:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 13
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
