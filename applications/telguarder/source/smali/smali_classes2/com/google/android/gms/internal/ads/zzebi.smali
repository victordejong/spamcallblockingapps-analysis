.class public final Lcom/google/android/gms/internal/ads/zzebi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


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
.field private final zzibr:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final zzibs:[B

.field private final zzibt:Lcom/google/android/gms/internal/ads/zzege;

.field private final zzibu:Lcom/google/android/gms/internal/ads/zzegx;

.field private final zzibv:I


# direct methods
.method constructor <init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/zzege;Lcom/google/android/gms/internal/ads/zzegx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/android/gms/internal/ads/zzege;",
            "Lcom/google/android/gms/internal/ads/zzegx;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzibr:Ljava/lang/Object;

    .line 3
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzibs:[B

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzibt:Lcom/google/android/gms/internal/ads/zzege;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzibu:Lcom/google/android/gms/internal/ads/zzegx;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzibv:I

    return-void
.end method


# virtual methods
.method public final zzbat()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzibr:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzbau()Lcom/google/android/gms/internal/ads/zzege;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzibt:Lcom/google/android/gms/internal/ads/zzege;

    return-object v0
.end method

.method public final zzbav()Lcom/google/android/gms/internal/ads/zzegx;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzibu:Lcom/google/android/gms/internal/ads/zzegx;

    return-object v0
.end method

.method public final zzbaw()[B
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzibs:[B

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
