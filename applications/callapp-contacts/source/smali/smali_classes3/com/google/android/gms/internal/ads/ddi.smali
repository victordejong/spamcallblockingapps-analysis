.class final Lcom/google/android/gms/internal/ads/ddi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/ddi;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[B


# direct methods
.method private constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddi;->a:[B

    return-void
.end method

.method synthetic constructor <init>([BLcom/google/android/gms/internal/ads/ddg;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ddi;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/ddi;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddi;->a:[B

    array-length v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/ddi;->a:[B

    array-length v3, v2

    if-eq v1, v3, :cond_0

    .line 21
    array-length p1, v0

    array-length v0, v2

    :goto_0
    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ddi;->a:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 23
    aget-byte v3, v2, v1

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/ddi;->a:[B

    aget-byte v5, v4, v1

    if-eq v3, v5, :cond_1

    .line 24
    aget-byte p1, v2, v1

    aget-byte v0, v4, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ddi;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/ddi;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddi;->a:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ddi;->a:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddi;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddi;->a:[B

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    .line 14
    div-int/lit8 v5, v4, 0x10

    const-string v6, "0123456789abcdef"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    rem-int/lit8 v4, v4, 0x10

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
