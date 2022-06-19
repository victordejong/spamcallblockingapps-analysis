.class public final Lcom/google/android/gms/internal/ads/b12;
.super Ljava/lang/Object;
.source ""


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

.field private final c:Lcom/google/android/gms/internal/ads/zzeoa;

.field private final d:Lcom/google/android/gms/internal/ads/zzepe;


# direct methods
.method constructor <init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/zzeoa;Lcom/google/android/gms/internal/ads/zzepe;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/android/gms/internal/ads/zzeoa;",
            "Lcom/google/android/gms/internal/ads/zzepe;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b12;->a:Ljava/lang/Object;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b12;->b:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/b12;->c:Lcom/google/android/gms/internal/ads/zzeoa;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/b12;->d:Lcom/google/android/gms/internal/ads/zzepe;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b12;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzeoa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b12;->c:Lcom/google/android/gms/internal/ads/zzeoa;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzepe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b12;->d:Lcom/google/android/gms/internal/ads/zzepe;

    return-object v0
.end method

.method public final d()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b12;->b:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
