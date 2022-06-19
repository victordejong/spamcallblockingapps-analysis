.class public final Lcom/google/android/gms/internal/ads/czv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/csm;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dai;

.field private final b:Lcom/google/android/gms/internal/ads/ctd;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dai;Lcom/google/android/gms/internal/ads/ctd;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/czv;->a:Lcom/google/android/gms/internal/ads/dai;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/czv;->b:Lcom/google/android/gms/internal/ads/ctd;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/czv;->c:I

    .line 5
    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czv;->a:Lcom/google/android/gms/internal/ads/dai;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dai;->a([B)[B

    move-result-object v0

    .line 8
    if-nez p2, :cond_0

    .line 9
    new-array p2, v6, [B

    .line 11
    :cond_0
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x8

    array-length v4, p2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/czv;->b:Lcom/google/android/gms/internal/ads/ctd;

    const/4 v3, 0x3

    new-array v3, v3, [[B

    aput-object p2, v3, v6

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/czh;->a([[B)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/ctd;->a([B)[B

    move-result-object v1

    .line 13
    new-array v2, v8, [[B

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/czh;->a([[B)[B

    move-result-object v0

    return-object v0
.end method
